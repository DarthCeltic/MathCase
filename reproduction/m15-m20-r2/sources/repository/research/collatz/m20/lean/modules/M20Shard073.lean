import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard073

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_564891 : ∀ k : Nat,
    iterate (1048576 * k + 564891) 32 = 531441 * k + 286300 ∧
      531441 * k + 286300 < 1048576 * k + 564891 := by
  intro k
  have h1 : C (1048576 * k + 564891) = 3145728 * k + 1694674 := by
    unfold C
    simp [show (1048576 * k + 564891) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1694674) = 1572864 * k + 847337 := by
    unfold C
    simp [show (3145728 * k + 1694674) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 847337) = 4718592 * k + 2542012 := by
    unfold C
    simp [show (1572864 * k + 847337) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2542012) = 2359296 * k + 1271006 := by
    unfold C
    simp [show (4718592 * k + 2542012) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1271006) = 1179648 * k + 635503 := by
    unfold C
    simp [show (2359296 * k + 1271006) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 635503) = 3538944 * k + 1906510 := by
    unfold C
    simp [show (1179648 * k + 635503) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1906510) = 1769472 * k + 953255 := by
    unfold C
    simp [show (3538944 * k + 1906510) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 953255) = 5308416 * k + 2859766 := by
    unfold C
    simp [show (1769472 * k + 953255) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2859766) = 2654208 * k + 1429883 := by
    unfold C
    simp [show (5308416 * k + 2859766) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1429883) = 7962624 * k + 4289650 := by
    unfold C
    simp [show (2654208 * k + 1429883) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4289650) = 3981312 * k + 2144825 := by
    unfold C
    simp [show (7962624 * k + 4289650) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2144825) = 11943936 * k + 6434476 := by
    unfold C
    simp [show (3981312 * k + 2144825) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6434476) = 5971968 * k + 3217238 := by
    unfold C
    simp [show (11943936 * k + 6434476) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3217238) = 2985984 * k + 1608619 := by
    unfold C
    simp [show (5971968 * k + 3217238) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1608619) = 8957952 * k + 4825858 := by
    unfold C
    simp [show (2985984 * k + 1608619) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4825858) = 4478976 * k + 2412929 := by
    unfold C
    simp [show (8957952 * k + 4825858) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2412929) = 13436928 * k + 7238788 := by
    unfold C
    simp [show (4478976 * k + 2412929) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7238788) = 6718464 * k + 3619394 := by
    unfold C
    simp [show (13436928 * k + 7238788) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3619394) = 3359232 * k + 1809697 := by
    unfold C
    simp [show (6718464 * k + 3619394) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1809697) = 10077696 * k + 5429092 := by
    unfold C
    simp [show (3359232 * k + 1809697) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5429092) = 5038848 * k + 2714546 := by
    unfold C
    simp [show (10077696 * k + 5429092) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2714546) = 2519424 * k + 1357273 := by
    unfold C
    simp [show (5038848 * k + 2714546) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1357273) = 7558272 * k + 4071820 := by
    unfold C
    simp [show (2519424 * k + 1357273) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4071820) = 3779136 * k + 2035910 := by
    unfold C
    simp [show (7558272 * k + 4071820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2035910) = 1889568 * k + 1017955 := by
    unfold C
    simp [show (3779136 * k + 2035910) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1017955) = 5668704 * k + 3053866 := by
    unfold C
    simp [show (1889568 * k + 1017955) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3053866) = 2834352 * k + 1526933 := by
    unfold C
    simp [show (5668704 * k + 3053866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1526933) = 8503056 * k + 4580800 := by
    unfold C
    simp [show (2834352 * k + 1526933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4580800) = 4251528 * k + 2290400 := by
    unfold C
    simp [show (8503056 * k + 4580800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2290400) = 2125764 * k + 1145200 := by
    unfold C
    simp [show (4251528 * k + 2290400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1145200) = 1062882 * k + 572600 := by
    unfold C
    simp [show (2125764 * k + 1145200) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572600) = 531441 * k + 286300 := by
    unfold C
    simp [show (1062882 * k + 572600) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564891) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564891)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564927 : ∀ k : Nat,
    iterate (1048576 * k + 564927) 32 = 531441 * k + 286318 ∧
      531441 * k + 286318 < 1048576 * k + 564927 := by
  intro k
  have h1 : C (1048576 * k + 564927) = 3145728 * k + 1694782 := by
    unfold C
    simp [show (1048576 * k + 564927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1694782) = 1572864 * k + 847391 := by
    unfold C
    simp [show (3145728 * k + 1694782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 847391) = 4718592 * k + 2542174 := by
    unfold C
    simp [show (1572864 * k + 847391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2542174) = 2359296 * k + 1271087 := by
    unfold C
    simp [show (4718592 * k + 2542174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1271087) = 7077888 * k + 3813262 := by
    unfold C
    simp [show (2359296 * k + 1271087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3813262) = 3538944 * k + 1906631 := by
    unfold C
    simp [show (7077888 * k + 3813262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1906631) = 10616832 * k + 5719894 := by
    unfold C
    simp [show (3538944 * k + 1906631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5719894) = 5308416 * k + 2859947 := by
    unfold C
    simp [show (10616832 * k + 5719894) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2859947) = 15925248 * k + 8579842 := by
    unfold C
    simp [show (5308416 * k + 2859947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8579842) = 7962624 * k + 4289921 := by
    unfold C
    simp [show (15925248 * k + 8579842) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4289921) = 23887872 * k + 12869764 := by
    unfold C
    simp [show (7962624 * k + 4289921) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12869764) = 11943936 * k + 6434882 := by
    unfold C
    simp [show (23887872 * k + 12869764) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6434882) = 5971968 * k + 3217441 := by
    unfold C
    simp [show (11943936 * k + 6434882) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3217441) = 17915904 * k + 9652324 := by
    unfold C
    simp [show (5971968 * k + 3217441) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9652324) = 8957952 * k + 4826162 := by
    unfold C
    simp [show (17915904 * k + 9652324) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4826162) = 4478976 * k + 2413081 := by
    unfold C
    simp [show (8957952 * k + 4826162) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2413081) = 13436928 * k + 7239244 := by
    unfold C
    simp [show (4478976 * k + 2413081) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7239244) = 6718464 * k + 3619622 := by
    unfold C
    simp [show (13436928 * k + 7239244) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3619622) = 3359232 * k + 1809811 := by
    unfold C
    simp [show (6718464 * k + 3619622) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1809811) = 10077696 * k + 5429434 := by
    unfold C
    simp [show (3359232 * k + 1809811) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5429434) = 5038848 * k + 2714717 := by
    unfold C
    simp [show (10077696 * k + 5429434) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2714717) = 15116544 * k + 8144152 := by
    unfold C
    simp [show (5038848 * k + 2714717) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8144152) = 7558272 * k + 4072076 := by
    unfold C
    simp [show (15116544 * k + 8144152) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4072076) = 3779136 * k + 2036038 := by
    unfold C
    simp [show (7558272 * k + 4072076) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2036038) = 1889568 * k + 1018019 := by
    unfold C
    simp [show (3779136 * k + 2036038) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1018019) = 5668704 * k + 3054058 := by
    unfold C
    simp [show (1889568 * k + 1018019) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3054058) = 2834352 * k + 1527029 := by
    unfold C
    simp [show (5668704 * k + 3054058) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1527029) = 8503056 * k + 4581088 := by
    unfold C
    simp [show (2834352 * k + 1527029) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4581088) = 4251528 * k + 2290544 := by
    unfold C
    simp [show (8503056 * k + 4581088) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2290544) = 2125764 * k + 1145272 := by
    unfold C
    simp [show (4251528 * k + 2290544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1145272) = 1062882 * k + 572636 := by
    unfold C
    simp [show (2125764 * k + 1145272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572636) = 531441 * k + 286318 := by
    unfold C
    simp [show (1062882 * k + 572636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_564987 : ∀ k : Nat,
    iterate (1048576 * k + 564987) 32 = 531441 * k + 286349 ∧
      531441 * k + 286349 < 1048576 * k + 564987 := by
  intro k
  have h1 : C (1048576 * k + 564987) = 3145728 * k + 1694962 := by
    unfold C
    simp [show (1048576 * k + 564987) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1694962) = 1572864 * k + 847481 := by
    unfold C
    simp [show (3145728 * k + 1694962) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 847481) = 4718592 * k + 2542444 := by
    unfold C
    simp [show (1572864 * k + 847481) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2542444) = 2359296 * k + 1271222 := by
    unfold C
    simp [show (4718592 * k + 2542444) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1271222) = 1179648 * k + 635611 := by
    unfold C
    simp [show (2359296 * k + 1271222) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 635611) = 3538944 * k + 1906834 := by
    unfold C
    simp [show (1179648 * k + 635611) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1906834) = 1769472 * k + 953417 := by
    unfold C
    simp [show (3538944 * k + 1906834) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 953417) = 5308416 * k + 2860252 := by
    unfold C
    simp [show (1769472 * k + 953417) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2860252) = 2654208 * k + 1430126 := by
    unfold C
    simp [show (5308416 * k + 2860252) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1430126) = 1327104 * k + 715063 := by
    unfold C
    simp [show (2654208 * k + 1430126) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 715063) = 3981312 * k + 2145190 := by
    unfold C
    simp [show (1327104 * k + 715063) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2145190) = 1990656 * k + 1072595 := by
    unfold C
    simp [show (3981312 * k + 2145190) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1072595) = 5971968 * k + 3217786 := by
    unfold C
    simp [show (1990656 * k + 1072595) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3217786) = 2985984 * k + 1608893 := by
    unfold C
    simp [show (5971968 * k + 3217786) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1608893) = 8957952 * k + 4826680 := by
    unfold C
    simp [show (2985984 * k + 1608893) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4826680) = 4478976 * k + 2413340 := by
    unfold C
    simp [show (8957952 * k + 4826680) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2413340) = 2239488 * k + 1206670 := by
    unfold C
    simp [show (4478976 * k + 2413340) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1206670) = 1119744 * k + 603335 := by
    unfold C
    simp [show (2239488 * k + 1206670) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 603335) = 3359232 * k + 1810006 := by
    unfold C
    simp [show (1119744 * k + 603335) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1810006) = 1679616 * k + 905003 := by
    unfold C
    simp [show (3359232 * k + 1810006) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 905003) = 5038848 * k + 2715010 := by
    unfold C
    simp [show (1679616 * k + 905003) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2715010) = 2519424 * k + 1357505 := by
    unfold C
    simp [show (5038848 * k + 2715010) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1357505) = 7558272 * k + 4072516 := by
    unfold C
    simp [show (2519424 * k + 1357505) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4072516) = 3779136 * k + 2036258 := by
    unfold C
    simp [show (7558272 * k + 4072516) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2036258) = 1889568 * k + 1018129 := by
    unfold C
    simp [show (3779136 * k + 2036258) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1018129) = 5668704 * k + 3054388 := by
    unfold C
    simp [show (1889568 * k + 1018129) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3054388) = 2834352 * k + 1527194 := by
    unfold C
    simp [show (5668704 * k + 3054388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1527194) = 1417176 * k + 763597 := by
    unfold C
    simp [show (2834352 * k + 1527194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 763597) = 4251528 * k + 2290792 := by
    unfold C
    simp [show (1417176 * k + 763597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2290792) = 2125764 * k + 1145396 := by
    unfold C
    simp [show (4251528 * k + 2290792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1145396) = 1062882 * k + 572698 := by
    unfold C
    simp [show (2125764 * k + 1145396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 572698) = 531441 * k + 286349 := by
    unfold C
    simp [show (1062882 * k + 572698) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 564987) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 564987)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_565663 : ∀ k : Nat,
    iterate (1048576 * k + 565663) 32 = 531441 * k + 286691 ∧
      531441 * k + 286691 < 1048576 * k + 565663 := by
  intro k
  have h1 : C (1048576 * k + 565663) = 3145728 * k + 1696990 := by
    unfold C
    simp [show (1048576 * k + 565663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1696990) = 1572864 * k + 848495 := by
    unfold C
    simp [show (3145728 * k + 1696990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 848495) = 4718592 * k + 2545486 := by
    unfold C
    simp [show (1572864 * k + 848495) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2545486) = 2359296 * k + 1272743 := by
    unfold C
    simp [show (4718592 * k + 2545486) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1272743) = 7077888 * k + 3818230 := by
    unfold C
    simp [show (2359296 * k + 1272743) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3818230) = 3538944 * k + 1909115 := by
    unfold C
    simp [show (7077888 * k + 3818230) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1909115) = 10616832 * k + 5727346 := by
    unfold C
    simp [show (3538944 * k + 1909115) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5727346) = 5308416 * k + 2863673 := by
    unfold C
    simp [show (10616832 * k + 5727346) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2863673) = 15925248 * k + 8591020 := by
    unfold C
    simp [show (5308416 * k + 2863673) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8591020) = 7962624 * k + 4295510 := by
    unfold C
    simp [show (15925248 * k + 8591020) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4295510) = 3981312 * k + 2147755 := by
    unfold C
    simp [show (7962624 * k + 4295510) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2147755) = 11943936 * k + 6443266 := by
    unfold C
    simp [show (3981312 * k + 2147755) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6443266) = 5971968 * k + 3221633 := by
    unfold C
    simp [show (11943936 * k + 6443266) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3221633) = 17915904 * k + 9664900 := by
    unfold C
    simp [show (5971968 * k + 3221633) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9664900) = 8957952 * k + 4832450 := by
    unfold C
    simp [show (17915904 * k + 9664900) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4832450) = 4478976 * k + 2416225 := by
    unfold C
    simp [show (8957952 * k + 4832450) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2416225) = 13436928 * k + 7248676 := by
    unfold C
    simp [show (4478976 * k + 2416225) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7248676) = 6718464 * k + 3624338 := by
    unfold C
    simp [show (13436928 * k + 7248676) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3624338) = 3359232 * k + 1812169 := by
    unfold C
    simp [show (6718464 * k + 3624338) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1812169) = 10077696 * k + 5436508 := by
    unfold C
    simp [show (3359232 * k + 1812169) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5436508) = 5038848 * k + 2718254 := by
    unfold C
    simp [show (10077696 * k + 5436508) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2718254) = 2519424 * k + 1359127 := by
    unfold C
    simp [show (5038848 * k + 2718254) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1359127) = 7558272 * k + 4077382 := by
    unfold C
    simp [show (2519424 * k + 1359127) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4077382) = 3779136 * k + 2038691 := by
    unfold C
    simp [show (7558272 * k + 4077382) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2038691) = 11337408 * k + 6116074 := by
    unfold C
    simp [show (3779136 * k + 2038691) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6116074) = 5668704 * k + 3058037 := by
    unfold C
    simp [show (11337408 * k + 6116074) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3058037) = 17006112 * k + 9174112 := by
    unfold C
    simp [show (5668704 * k + 3058037) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9174112) = 8503056 * k + 4587056 := by
    unfold C
    simp [show (17006112 * k + 9174112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4587056) = 4251528 * k + 2293528 := by
    unfold C
    simp [show (8503056 * k + 4587056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2293528) = 2125764 * k + 1146764 := by
    unfold C
    simp [show (4251528 * k + 2293528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1146764) = 1062882 * k + 573382 := by
    unfold C
    simp [show (2125764 * k + 1146764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 573382) = 531441 * k + 286691 := by
    unfold C
    simp [show (1062882 * k + 573382) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 565663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 565663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_566271 : ∀ k : Nat,
    iterate (1048576 * k + 566271) 32 = 531441 * k + 286999 ∧
      531441 * k + 286999 < 1048576 * k + 566271 := by
  intro k
  have h1 : C (1048576 * k + 566271) = 3145728 * k + 1698814 := by
    unfold C
    simp [show (1048576 * k + 566271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1698814) = 1572864 * k + 849407 := by
    unfold C
    simp [show (3145728 * k + 1698814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 849407) = 4718592 * k + 2548222 := by
    unfold C
    simp [show (1572864 * k + 849407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2548222) = 2359296 * k + 1274111 := by
    unfold C
    simp [show (4718592 * k + 2548222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1274111) = 7077888 * k + 3822334 := by
    unfold C
    simp [show (2359296 * k + 1274111) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3822334) = 3538944 * k + 1911167 := by
    unfold C
    simp [show (7077888 * k + 3822334) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1911167) = 10616832 * k + 5733502 := by
    unfold C
    simp [show (3538944 * k + 1911167) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5733502) = 5308416 * k + 2866751 := by
    unfold C
    simp [show (10616832 * k + 5733502) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2866751) = 15925248 * k + 8600254 := by
    unfold C
    simp [show (5308416 * k + 2866751) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8600254) = 7962624 * k + 4300127 := by
    unfold C
    simp [show (15925248 * k + 8600254) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4300127) = 23887872 * k + 12900382 := by
    unfold C
    simp [show (7962624 * k + 4300127) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 12900382) = 11943936 * k + 6450191 := by
    unfold C
    simp [show (23887872 * k + 12900382) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 6450191) = 35831808 * k + 19350574 := by
    unfold C
    simp [show (11943936 * k + 6450191) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 19350574) = 17915904 * k + 9675287 := by
    unfold C
    simp [show (35831808 * k + 19350574) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 9675287) = 53747712 * k + 29025862 := by
    unfold C
    simp [show (17915904 * k + 9675287) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 29025862) = 26873856 * k + 14512931 := by
    unfold C
    simp [show (53747712 * k + 29025862) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 14512931) = 80621568 * k + 43538794 := by
    unfold C
    simp [show (26873856 * k + 14512931) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 43538794) = 40310784 * k + 21769397 := by
    unfold C
    simp [show (80621568 * k + 43538794) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 21769397) = 120932352 * k + 65308192 := by
    unfold C
    simp [show (40310784 * k + 21769397) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 65308192) = 60466176 * k + 32654096 := by
    unfold C
    simp [show (120932352 * k + 65308192) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 32654096) = 30233088 * k + 16327048 := by
    unfold C
    simp [show (60466176 * k + 32654096) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 16327048) = 15116544 * k + 8163524 := by
    unfold C
    simp [show (30233088 * k + 16327048) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8163524) = 7558272 * k + 4081762 := by
    unfold C
    simp [show (15116544 * k + 8163524) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4081762) = 3779136 * k + 2040881 := by
    unfold C
    simp [show (7558272 * k + 4081762) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2040881) = 11337408 * k + 6122644 := by
    unfold C
    simp [show (3779136 * k + 2040881) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6122644) = 5668704 * k + 3061322 := by
    unfold C
    simp [show (11337408 * k + 6122644) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3061322) = 2834352 * k + 1530661 := by
    unfold C
    simp [show (5668704 * k + 3061322) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1530661) = 8503056 * k + 4591984 := by
    unfold C
    simp [show (2834352 * k + 1530661) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4591984) = 4251528 * k + 2295992 := by
    unfold C
    simp [show (8503056 * k + 4591984) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2295992) = 2125764 * k + 1147996 := by
    unfold C
    simp [show (4251528 * k + 2295992) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1147996) = 1062882 * k + 573998 := by
    unfold C
    simp [show (2125764 * k + 1147996) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 573998) = 531441 * k + 286999 := by
    unfold C
    simp [show (1062882 * k + 573998) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 566271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 566271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_566687 : ∀ k : Nat,
    iterate (1048576 * k + 566687) 32 = 531441 * k + 287210 ∧
      531441 * k + 287210 < 1048576 * k + 566687 := by
  intro k
  have h1 : C (1048576 * k + 566687) = 3145728 * k + 1700062 := by
    unfold C
    simp [show (1048576 * k + 566687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1700062) = 1572864 * k + 850031 := by
    unfold C
    simp [show (3145728 * k + 1700062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 850031) = 4718592 * k + 2550094 := by
    unfold C
    simp [show (1572864 * k + 850031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2550094) = 2359296 * k + 1275047 := by
    unfold C
    simp [show (4718592 * k + 2550094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1275047) = 7077888 * k + 3825142 := by
    unfold C
    simp [show (2359296 * k + 1275047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3825142) = 3538944 * k + 1912571 := by
    unfold C
    simp [show (7077888 * k + 3825142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1912571) = 10616832 * k + 5737714 := by
    unfold C
    simp [show (3538944 * k + 1912571) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5737714) = 5308416 * k + 2868857 := by
    unfold C
    simp [show (10616832 * k + 5737714) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2868857) = 15925248 * k + 8606572 := by
    unfold C
    simp [show (5308416 * k + 2868857) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8606572) = 7962624 * k + 4303286 := by
    unfold C
    simp [show (15925248 * k + 8606572) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4303286) = 3981312 * k + 2151643 := by
    unfold C
    simp [show (7962624 * k + 4303286) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2151643) = 11943936 * k + 6454930 := by
    unfold C
    simp [show (3981312 * k + 2151643) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6454930) = 5971968 * k + 3227465 := by
    unfold C
    simp [show (11943936 * k + 6454930) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3227465) = 17915904 * k + 9682396 := by
    unfold C
    simp [show (5971968 * k + 3227465) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9682396) = 8957952 * k + 4841198 := by
    unfold C
    simp [show (17915904 * k + 9682396) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4841198) = 4478976 * k + 2420599 := by
    unfold C
    simp [show (8957952 * k + 4841198) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2420599) = 13436928 * k + 7261798 := by
    unfold C
    simp [show (4478976 * k + 2420599) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7261798) = 6718464 * k + 3630899 := by
    unfold C
    simp [show (13436928 * k + 7261798) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3630899) = 20155392 * k + 10892698 := by
    unfold C
    simp [show (6718464 * k + 3630899) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10892698) = 10077696 * k + 5446349 := by
    unfold C
    simp [show (20155392 * k + 10892698) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5446349) = 30233088 * k + 16339048 := by
    unfold C
    simp [show (10077696 * k + 5446349) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16339048) = 15116544 * k + 8169524 := by
    unfold C
    simp [show (30233088 * k + 16339048) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8169524) = 7558272 * k + 4084762 := by
    unfold C
    simp [show (15116544 * k + 8169524) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4084762) = 3779136 * k + 2042381 := by
    unfold C
    simp [show (7558272 * k + 4084762) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2042381) = 11337408 * k + 6127144 := by
    unfold C
    simp [show (3779136 * k + 2042381) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6127144) = 5668704 * k + 3063572 := by
    unfold C
    simp [show (11337408 * k + 6127144) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3063572) = 2834352 * k + 1531786 := by
    unfold C
    simp [show (5668704 * k + 3063572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1531786) = 1417176 * k + 765893 := by
    unfold C
    simp [show (2834352 * k + 1531786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 765893) = 4251528 * k + 2297680 := by
    unfold C
    simp [show (1417176 * k + 765893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2297680) = 2125764 * k + 1148840 := by
    unfold C
    simp [show (4251528 * k + 2297680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1148840) = 1062882 * k + 574420 := by
    unfold C
    simp [show (2125764 * k + 1148840) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 574420) = 531441 * k + 287210 := by
    unfold C
    simp [show (1062882 * k + 574420) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 566687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 566687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_567143 : ∀ k : Nat,
    iterate (1048576 * k + 567143) 32 = 531441 * k + 287441 ∧
      531441 * k + 287441 < 1048576 * k + 567143 := by
  intro k
  have h1 : C (1048576 * k + 567143) = 3145728 * k + 1701430 := by
    unfold C
    simp [show (1048576 * k + 567143) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1701430) = 1572864 * k + 850715 := by
    unfold C
    simp [show (3145728 * k + 1701430) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 850715) = 4718592 * k + 2552146 := by
    unfold C
    simp [show (1572864 * k + 850715) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2552146) = 2359296 * k + 1276073 := by
    unfold C
    simp [show (4718592 * k + 2552146) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1276073) = 7077888 * k + 3828220 := by
    unfold C
    simp [show (2359296 * k + 1276073) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3828220) = 3538944 * k + 1914110 := by
    unfold C
    simp [show (7077888 * k + 3828220) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1914110) = 1769472 * k + 957055 := by
    unfold C
    simp [show (3538944 * k + 1914110) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 957055) = 5308416 * k + 2871166 := by
    unfold C
    simp [show (1769472 * k + 957055) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2871166) = 2654208 * k + 1435583 := by
    unfold C
    simp [show (5308416 * k + 2871166) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1435583) = 7962624 * k + 4306750 := by
    unfold C
    simp [show (2654208 * k + 1435583) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4306750) = 3981312 * k + 2153375 := by
    unfold C
    simp [show (7962624 * k + 4306750) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2153375) = 11943936 * k + 6460126 := by
    unfold C
    simp [show (3981312 * k + 2153375) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6460126) = 5971968 * k + 3230063 := by
    unfold C
    simp [show (11943936 * k + 6460126) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3230063) = 17915904 * k + 9690190 := by
    unfold C
    simp [show (5971968 * k + 3230063) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9690190) = 8957952 * k + 4845095 := by
    unfold C
    simp [show (17915904 * k + 9690190) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4845095) = 26873856 * k + 14535286 := by
    unfold C
    simp [show (8957952 * k + 4845095) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14535286) = 13436928 * k + 7267643 := by
    unfold C
    simp [show (26873856 * k + 14535286) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7267643) = 40310784 * k + 21802930 := by
    unfold C
    simp [show (13436928 * k + 7267643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 21802930) = 20155392 * k + 10901465 := by
    unfold C
    simp [show (40310784 * k + 21802930) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10901465) = 60466176 * k + 32704396 := by
    unfold C
    simp [show (20155392 * k + 10901465) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 32704396) = 30233088 * k + 16352198 := by
    unfold C
    simp [show (60466176 * k + 32704396) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 16352198) = 15116544 * k + 8176099 := by
    unfold C
    simp [show (30233088 * k + 16352198) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8176099) = 45349632 * k + 24528298 := by
    unfold C
    simp [show (15116544 * k + 8176099) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 24528298) = 22674816 * k + 12264149 := by
    unfold C
    simp [show (45349632 * k + 24528298) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 12264149) = 68024448 * k + 36792448 := by
    unfold C
    simp [show (22674816 * k + 12264149) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 36792448) = 34012224 * k + 18396224 := by
    unfold C
    simp [show (68024448 * k + 36792448) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 18396224) = 17006112 * k + 9198112 := by
    unfold C
    simp [show (34012224 * k + 18396224) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 9198112) = 8503056 * k + 4599056 := by
    unfold C
    simp [show (17006112 * k + 9198112) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4599056) = 4251528 * k + 2299528 := by
    unfold C
    simp [show (8503056 * k + 4599056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2299528) = 2125764 * k + 1149764 := by
    unfold C
    simp [show (4251528 * k + 2299528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1149764) = 1062882 * k + 574882 := by
    unfold C
    simp [show (2125764 * k + 1149764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 574882) = 531441 * k + 287441 := by
    unfold C
    simp [show (1062882 * k + 574882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 567143) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 567143)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_567207 : ∀ k : Nat,
    iterate (1048576 * k + 567207) 32 = 531441 * k + 287474 ∧
      531441 * k + 287474 < 1048576 * k + 567207 := by
  intro k
  have h1 : C (1048576 * k + 567207) = 3145728 * k + 1701622 := by
    unfold C
    simp [show (1048576 * k + 567207) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1701622) = 1572864 * k + 850811 := by
    unfold C
    simp [show (3145728 * k + 1701622) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 850811) = 4718592 * k + 2552434 := by
    unfold C
    simp [show (1572864 * k + 850811) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2552434) = 2359296 * k + 1276217 := by
    unfold C
    simp [show (4718592 * k + 2552434) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1276217) = 7077888 * k + 3828652 := by
    unfold C
    simp [show (2359296 * k + 1276217) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3828652) = 3538944 * k + 1914326 := by
    unfold C
    simp [show (7077888 * k + 3828652) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1914326) = 1769472 * k + 957163 := by
    unfold C
    simp [show (3538944 * k + 1914326) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 957163) = 5308416 * k + 2871490 := by
    unfold C
    simp [show (1769472 * k + 957163) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2871490) = 2654208 * k + 1435745 := by
    unfold C
    simp [show (5308416 * k + 2871490) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1435745) = 7962624 * k + 4307236 := by
    unfold C
    simp [show (2654208 * k + 1435745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4307236) = 3981312 * k + 2153618 := by
    unfold C
    simp [show (7962624 * k + 4307236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2153618) = 1990656 * k + 1076809 := by
    unfold C
    simp [show (3981312 * k + 2153618) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1076809) = 5971968 * k + 3230428 := by
    unfold C
    simp [show (1990656 * k + 1076809) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3230428) = 2985984 * k + 1615214 := by
    unfold C
    simp [show (5971968 * k + 3230428) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1615214) = 1492992 * k + 807607 := by
    unfold C
    simp [show (2985984 * k + 1615214) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 807607) = 4478976 * k + 2422822 := by
    unfold C
    simp [show (1492992 * k + 807607) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2422822) = 2239488 * k + 1211411 := by
    unfold C
    simp [show (4478976 * k + 2422822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1211411) = 6718464 * k + 3634234 := by
    unfold C
    simp [show (2239488 * k + 1211411) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3634234) = 3359232 * k + 1817117 := by
    unfold C
    simp [show (6718464 * k + 3634234) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1817117) = 10077696 * k + 5451352 := by
    unfold C
    simp [show (3359232 * k + 1817117) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5451352) = 5038848 * k + 2725676 := by
    unfold C
    simp [show (10077696 * k + 5451352) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2725676) = 2519424 * k + 1362838 := by
    unfold C
    simp [show (5038848 * k + 2725676) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1362838) = 1259712 * k + 681419 := by
    unfold C
    simp [show (2519424 * k + 1362838) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 681419) = 3779136 * k + 2044258 := by
    unfold C
    simp [show (1259712 * k + 681419) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2044258) = 1889568 * k + 1022129 := by
    unfold C
    simp [show (3779136 * k + 2044258) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1022129) = 5668704 * k + 3066388 := by
    unfold C
    simp [show (1889568 * k + 1022129) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3066388) = 2834352 * k + 1533194 := by
    unfold C
    simp [show (5668704 * k + 3066388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1533194) = 1417176 * k + 766597 := by
    unfold C
    simp [show (2834352 * k + 1533194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 766597) = 4251528 * k + 2299792 := by
    unfold C
    simp [show (1417176 * k + 766597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2299792) = 2125764 * k + 1149896 := by
    unfold C
    simp [show (4251528 * k + 2299792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1149896) = 1062882 * k + 574948 := by
    unfold C
    simp [show (2125764 * k + 1149896) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 574948) = 531441 * k + 287474 := by
    unfold C
    simp [show (1062882 * k + 574948) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 567207) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 567207)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_567367 : ∀ k : Nat,
    iterate (1048576 * k + 567367) 32 = 531441 * k + 287555 ∧
      531441 * k + 287555 < 1048576 * k + 567367 := by
  intro k
  have h1 : C (1048576 * k + 567367) = 3145728 * k + 1702102 := by
    unfold C
    simp [show (1048576 * k + 567367) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1702102) = 1572864 * k + 851051 := by
    unfold C
    simp [show (3145728 * k + 1702102) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 851051) = 4718592 * k + 2553154 := by
    unfold C
    simp [show (1572864 * k + 851051) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2553154) = 2359296 * k + 1276577 := by
    unfold C
    simp [show (4718592 * k + 2553154) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1276577) = 7077888 * k + 3829732 := by
    unfold C
    simp [show (2359296 * k + 1276577) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3829732) = 3538944 * k + 1914866 := by
    unfold C
    simp [show (7077888 * k + 3829732) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1914866) = 1769472 * k + 957433 := by
    unfold C
    simp [show (3538944 * k + 1914866) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 957433) = 5308416 * k + 2872300 := by
    unfold C
    simp [show (1769472 * k + 957433) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2872300) = 2654208 * k + 1436150 := by
    unfold C
    simp [show (5308416 * k + 2872300) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1436150) = 1327104 * k + 718075 := by
    unfold C
    simp [show (2654208 * k + 1436150) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 718075) = 3981312 * k + 2154226 := by
    unfold C
    simp [show (1327104 * k + 718075) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2154226) = 1990656 * k + 1077113 := by
    unfold C
    simp [show (3981312 * k + 2154226) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1077113) = 5971968 * k + 3231340 := by
    unfold C
    simp [show (1990656 * k + 1077113) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3231340) = 2985984 * k + 1615670 := by
    unfold C
    simp [show (5971968 * k + 3231340) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1615670) = 1492992 * k + 807835 := by
    unfold C
    simp [show (2985984 * k + 1615670) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 807835) = 4478976 * k + 2423506 := by
    unfold C
    simp [show (1492992 * k + 807835) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2423506) = 2239488 * k + 1211753 := by
    unfold C
    simp [show (4478976 * k + 2423506) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1211753) = 6718464 * k + 3635260 := by
    unfold C
    simp [show (2239488 * k + 1211753) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3635260) = 3359232 * k + 1817630 := by
    unfold C
    simp [show (6718464 * k + 3635260) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1817630) = 1679616 * k + 908815 := by
    unfold C
    simp [show (3359232 * k + 1817630) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 908815) = 5038848 * k + 2726446 := by
    unfold C
    simp [show (1679616 * k + 908815) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2726446) = 2519424 * k + 1363223 := by
    unfold C
    simp [show (5038848 * k + 2726446) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1363223) = 7558272 * k + 4089670 := by
    unfold C
    simp [show (2519424 * k + 1363223) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4089670) = 3779136 * k + 2044835 := by
    unfold C
    simp [show (7558272 * k + 4089670) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2044835) = 11337408 * k + 6134506 := by
    unfold C
    simp [show (3779136 * k + 2044835) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6134506) = 5668704 * k + 3067253 := by
    unfold C
    simp [show (11337408 * k + 6134506) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3067253) = 17006112 * k + 9201760 := by
    unfold C
    simp [show (5668704 * k + 3067253) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9201760) = 8503056 * k + 4600880 := by
    unfold C
    simp [show (17006112 * k + 9201760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4600880) = 4251528 * k + 2300440 := by
    unfold C
    simp [show (8503056 * k + 4600880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2300440) = 2125764 * k + 1150220 := by
    unfold C
    simp [show (4251528 * k + 2300440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1150220) = 1062882 * k + 575110 := by
    unfold C
    simp [show (2125764 * k + 1150220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 575110) = 531441 * k + 287555 := by
    unfold C
    simp [show (1062882 * k + 575110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 567367) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 567367)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_567527 : ∀ k : Nat,
    iterate (1048576 * k + 567527) 32 = 531441 * k + 287636 ∧
      531441 * k + 287636 < 1048576 * k + 567527 := by
  intro k
  have h1 : C (1048576 * k + 567527) = 3145728 * k + 1702582 := by
    unfold C
    simp [show (1048576 * k + 567527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1702582) = 1572864 * k + 851291 := by
    unfold C
    simp [show (3145728 * k + 1702582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 851291) = 4718592 * k + 2553874 := by
    unfold C
    simp [show (1572864 * k + 851291) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2553874) = 2359296 * k + 1276937 := by
    unfold C
    simp [show (4718592 * k + 2553874) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1276937) = 7077888 * k + 3830812 := by
    unfold C
    simp [show (2359296 * k + 1276937) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3830812) = 3538944 * k + 1915406 := by
    unfold C
    simp [show (7077888 * k + 3830812) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1915406) = 1769472 * k + 957703 := by
    unfold C
    simp [show (3538944 * k + 1915406) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 957703) = 5308416 * k + 2873110 := by
    unfold C
    simp [show (1769472 * k + 957703) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2873110) = 2654208 * k + 1436555 := by
    unfold C
    simp [show (5308416 * k + 2873110) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1436555) = 7962624 * k + 4309666 := by
    unfold C
    simp [show (2654208 * k + 1436555) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4309666) = 3981312 * k + 2154833 := by
    unfold C
    simp [show (7962624 * k + 4309666) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2154833) = 11943936 * k + 6464500 := by
    unfold C
    simp [show (3981312 * k + 2154833) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6464500) = 5971968 * k + 3232250 := by
    unfold C
    simp [show (11943936 * k + 6464500) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3232250) = 2985984 * k + 1616125 := by
    unfold C
    simp [show (5971968 * k + 3232250) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1616125) = 8957952 * k + 4848376 := by
    unfold C
    simp [show (2985984 * k + 1616125) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4848376) = 4478976 * k + 2424188 := by
    unfold C
    simp [show (8957952 * k + 4848376) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2424188) = 2239488 * k + 1212094 := by
    unfold C
    simp [show (4478976 * k + 2424188) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1212094) = 1119744 * k + 606047 := by
    unfold C
    simp [show (2239488 * k + 1212094) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 606047) = 3359232 * k + 1818142 := by
    unfold C
    simp [show (1119744 * k + 606047) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1818142) = 1679616 * k + 909071 := by
    unfold C
    simp [show (3359232 * k + 1818142) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 909071) = 5038848 * k + 2727214 := by
    unfold C
    simp [show (1679616 * k + 909071) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2727214) = 2519424 * k + 1363607 := by
    unfold C
    simp [show (5038848 * k + 2727214) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1363607) = 7558272 * k + 4090822 := by
    unfold C
    simp [show (2519424 * k + 1363607) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4090822) = 3779136 * k + 2045411 := by
    unfold C
    simp [show (7558272 * k + 4090822) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2045411) = 11337408 * k + 6136234 := by
    unfold C
    simp [show (3779136 * k + 2045411) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6136234) = 5668704 * k + 3068117 := by
    unfold C
    simp [show (11337408 * k + 6136234) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3068117) = 17006112 * k + 9204352 := by
    unfold C
    simp [show (5668704 * k + 3068117) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9204352) = 8503056 * k + 4602176 := by
    unfold C
    simp [show (17006112 * k + 9204352) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4602176) = 4251528 * k + 2301088 := by
    unfold C
    simp [show (8503056 * k + 4602176) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2301088) = 2125764 * k + 1150544 := by
    unfold C
    simp [show (4251528 * k + 2301088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1150544) = 1062882 * k + 575272 := by
    unfold C
    simp [show (2125764 * k + 1150544) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 575272) = 531441 * k + 287636 := by
    unfold C
    simp [show (1062882 * k + 575272) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 567527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 567527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_567963 : ∀ k : Nat,
    iterate (1048576 * k + 567963) 32 = 531441 * k + 287857 ∧
      531441 * k + 287857 < 1048576 * k + 567963 := by
  intro k
  have h1 : C (1048576 * k + 567963) = 3145728 * k + 1703890 := by
    unfold C
    simp [show (1048576 * k + 567963) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1703890) = 1572864 * k + 851945 := by
    unfold C
    simp [show (3145728 * k + 1703890) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 851945) = 4718592 * k + 2555836 := by
    unfold C
    simp [show (1572864 * k + 851945) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2555836) = 2359296 * k + 1277918 := by
    unfold C
    simp [show (4718592 * k + 2555836) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1277918) = 1179648 * k + 638959 := by
    unfold C
    simp [show (2359296 * k + 1277918) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 638959) = 3538944 * k + 1916878 := by
    unfold C
    simp [show (1179648 * k + 638959) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1916878) = 1769472 * k + 958439 := by
    unfold C
    simp [show (3538944 * k + 1916878) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 958439) = 5308416 * k + 2875318 := by
    unfold C
    simp [show (1769472 * k + 958439) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2875318) = 2654208 * k + 1437659 := by
    unfold C
    simp [show (5308416 * k + 2875318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1437659) = 7962624 * k + 4312978 := by
    unfold C
    simp [show (2654208 * k + 1437659) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4312978) = 3981312 * k + 2156489 := by
    unfold C
    simp [show (7962624 * k + 4312978) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2156489) = 11943936 * k + 6469468 := by
    unfold C
    simp [show (3981312 * k + 2156489) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6469468) = 5971968 * k + 3234734 := by
    unfold C
    simp [show (11943936 * k + 6469468) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3234734) = 2985984 * k + 1617367 := by
    unfold C
    simp [show (5971968 * k + 3234734) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1617367) = 8957952 * k + 4852102 := by
    unfold C
    simp [show (2985984 * k + 1617367) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4852102) = 4478976 * k + 2426051 := by
    unfold C
    simp [show (8957952 * k + 4852102) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2426051) = 13436928 * k + 7278154 := by
    unfold C
    simp [show (4478976 * k + 2426051) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7278154) = 6718464 * k + 3639077 := by
    unfold C
    simp [show (13436928 * k + 7278154) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3639077) = 20155392 * k + 10917232 := by
    unfold C
    simp [show (6718464 * k + 3639077) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 10917232) = 10077696 * k + 5458616 := by
    unfold C
    simp [show (20155392 * k + 10917232) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5458616) = 5038848 * k + 2729308 := by
    unfold C
    simp [show (10077696 * k + 5458616) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2729308) = 2519424 * k + 1364654 := by
    unfold C
    simp [show (5038848 * k + 2729308) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1364654) = 1259712 * k + 682327 := by
    unfold C
    simp [show (2519424 * k + 1364654) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 682327) = 3779136 * k + 2046982 := by
    unfold C
    simp [show (1259712 * k + 682327) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2046982) = 1889568 * k + 1023491 := by
    unfold C
    simp [show (3779136 * k + 2046982) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1023491) = 5668704 * k + 3070474 := by
    unfold C
    simp [show (1889568 * k + 1023491) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3070474) = 2834352 * k + 1535237 := by
    unfold C
    simp [show (5668704 * k + 3070474) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1535237) = 8503056 * k + 4605712 := by
    unfold C
    simp [show (2834352 * k + 1535237) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4605712) = 4251528 * k + 2302856 := by
    unfold C
    simp [show (8503056 * k + 4605712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2302856) = 2125764 * k + 1151428 := by
    unfold C
    simp [show (4251528 * k + 2302856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1151428) = 1062882 * k + 575714 := by
    unfold C
    simp [show (2125764 * k + 1151428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 575714) = 531441 * k + 287857 := by
    unfold C
    simp [show (1062882 * k + 575714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 567963) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 567963)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_567975 : ∀ k : Nat,
    iterate (1048576 * k + 567975) 32 = 531441 * k + 287863 ∧
      531441 * k + 287863 < 1048576 * k + 567975 := by
  intro k
  have h1 : C (1048576 * k + 567975) = 3145728 * k + 1703926 := by
    unfold C
    simp [show (1048576 * k + 567975) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1703926) = 1572864 * k + 851963 := by
    unfold C
    simp [show (3145728 * k + 1703926) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 851963) = 4718592 * k + 2555890 := by
    unfold C
    simp [show (1572864 * k + 851963) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2555890) = 2359296 * k + 1277945 := by
    unfold C
    simp [show (4718592 * k + 2555890) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1277945) = 7077888 * k + 3833836 := by
    unfold C
    simp [show (2359296 * k + 1277945) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3833836) = 3538944 * k + 1916918 := by
    unfold C
    simp [show (7077888 * k + 3833836) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1916918) = 1769472 * k + 958459 := by
    unfold C
    simp [show (3538944 * k + 1916918) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 958459) = 5308416 * k + 2875378 := by
    unfold C
    simp [show (1769472 * k + 958459) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2875378) = 2654208 * k + 1437689 := by
    unfold C
    simp [show (5308416 * k + 2875378) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1437689) = 7962624 * k + 4313068 := by
    unfold C
    simp [show (2654208 * k + 1437689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4313068) = 3981312 * k + 2156534 := by
    unfold C
    simp [show (7962624 * k + 4313068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2156534) = 1990656 * k + 1078267 := by
    unfold C
    simp [show (3981312 * k + 2156534) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1078267) = 5971968 * k + 3234802 := by
    unfold C
    simp [show (1990656 * k + 1078267) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3234802) = 2985984 * k + 1617401 := by
    unfold C
    simp [show (5971968 * k + 3234802) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1617401) = 8957952 * k + 4852204 := by
    unfold C
    simp [show (2985984 * k + 1617401) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4852204) = 4478976 * k + 2426102 := by
    unfold C
    simp [show (8957952 * k + 4852204) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2426102) = 2239488 * k + 1213051 := by
    unfold C
    simp [show (4478976 * k + 2426102) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1213051) = 6718464 * k + 3639154 := by
    unfold C
    simp [show (2239488 * k + 1213051) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3639154) = 3359232 * k + 1819577 := by
    unfold C
    simp [show (6718464 * k + 3639154) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1819577) = 10077696 * k + 5458732 := by
    unfold C
    simp [show (3359232 * k + 1819577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5458732) = 5038848 * k + 2729366 := by
    unfold C
    simp [show (10077696 * k + 5458732) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2729366) = 2519424 * k + 1364683 := by
    unfold C
    simp [show (5038848 * k + 2729366) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1364683) = 7558272 * k + 4094050 := by
    unfold C
    simp [show (2519424 * k + 1364683) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4094050) = 3779136 * k + 2047025 := by
    unfold C
    simp [show (7558272 * k + 4094050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2047025) = 11337408 * k + 6141076 := by
    unfold C
    simp [show (3779136 * k + 2047025) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6141076) = 5668704 * k + 3070538 := by
    unfold C
    simp [show (11337408 * k + 6141076) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3070538) = 2834352 * k + 1535269 := by
    unfold C
    simp [show (5668704 * k + 3070538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1535269) = 8503056 * k + 4605808 := by
    unfold C
    simp [show (2834352 * k + 1535269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4605808) = 4251528 * k + 2302904 := by
    unfold C
    simp [show (8503056 * k + 4605808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2302904) = 2125764 * k + 1151452 := by
    unfold C
    simp [show (4251528 * k + 2302904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1151452) = 1062882 * k + 575726 := by
    unfold C
    simp [show (2125764 * k + 1151452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 575726) = 531441 * k + 287863 := by
    unfold C
    simp [show (1062882 * k + 575726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 567975) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 567975)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_568231 : ∀ k : Nat,
    iterate (1048576 * k + 568231) 32 = 531441 * k + 287993 ∧
      531441 * k + 287993 < 1048576 * k + 568231 := by
  intro k
  have h1 : C (1048576 * k + 568231) = 3145728 * k + 1704694 := by
    unfold C
    simp [show (1048576 * k + 568231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1704694) = 1572864 * k + 852347 := by
    unfold C
    simp [show (3145728 * k + 1704694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 852347) = 4718592 * k + 2557042 := by
    unfold C
    simp [show (1572864 * k + 852347) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2557042) = 2359296 * k + 1278521 := by
    unfold C
    simp [show (4718592 * k + 2557042) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1278521) = 7077888 * k + 3835564 := by
    unfold C
    simp [show (2359296 * k + 1278521) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3835564) = 3538944 * k + 1917782 := by
    unfold C
    simp [show (7077888 * k + 3835564) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1917782) = 1769472 * k + 958891 := by
    unfold C
    simp [show (3538944 * k + 1917782) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 958891) = 5308416 * k + 2876674 := by
    unfold C
    simp [show (1769472 * k + 958891) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2876674) = 2654208 * k + 1438337 := by
    unfold C
    simp [show (5308416 * k + 2876674) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1438337) = 7962624 * k + 4315012 := by
    unfold C
    simp [show (2654208 * k + 1438337) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4315012) = 3981312 * k + 2157506 := by
    unfold C
    simp [show (7962624 * k + 4315012) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2157506) = 1990656 * k + 1078753 := by
    unfold C
    simp [show (3981312 * k + 2157506) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1078753) = 5971968 * k + 3236260 := by
    unfold C
    simp [show (1990656 * k + 1078753) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3236260) = 2985984 * k + 1618130 := by
    unfold C
    simp [show (5971968 * k + 3236260) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1618130) = 1492992 * k + 809065 := by
    unfold C
    simp [show (2985984 * k + 1618130) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 809065) = 4478976 * k + 2427196 := by
    unfold C
    simp [show (1492992 * k + 809065) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2427196) = 2239488 * k + 1213598 := by
    unfold C
    simp [show (4478976 * k + 2427196) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1213598) = 1119744 * k + 606799 := by
    unfold C
    simp [show (2239488 * k + 1213598) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 606799) = 3359232 * k + 1820398 := by
    unfold C
    simp [show (1119744 * k + 606799) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1820398) = 1679616 * k + 910199 := by
    unfold C
    simp [show (3359232 * k + 1820398) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 910199) = 5038848 * k + 2730598 := by
    unfold C
    simp [show (1679616 * k + 910199) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2730598) = 2519424 * k + 1365299 := by
    unfold C
    simp [show (5038848 * k + 2730598) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1365299) = 7558272 * k + 4095898 := by
    unfold C
    simp [show (2519424 * k + 1365299) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4095898) = 3779136 * k + 2047949 := by
    unfold C
    simp [show (7558272 * k + 4095898) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2047949) = 11337408 * k + 6143848 := by
    unfold C
    simp [show (3779136 * k + 2047949) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6143848) = 5668704 * k + 3071924 := by
    unfold C
    simp [show (11337408 * k + 6143848) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3071924) = 2834352 * k + 1535962 := by
    unfold C
    simp [show (5668704 * k + 3071924) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1535962) = 1417176 * k + 767981 := by
    unfold C
    simp [show (2834352 * k + 1535962) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 767981) = 4251528 * k + 2303944 := by
    unfold C
    simp [show (1417176 * k + 767981) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2303944) = 2125764 * k + 1151972 := by
    unfold C
    simp [show (4251528 * k + 2303944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1151972) = 1062882 * k + 575986 := by
    unfold C
    simp [show (2125764 * k + 1151972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 575986) = 531441 * k + 287993 := by
    unfold C
    simp [show (1062882 * k + 575986) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 568231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 568231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_568551 : ∀ k : Nat,
    iterate (1048576 * k + 568551) 32 = 531441 * k + 288155 ∧
      531441 * k + 288155 < 1048576 * k + 568551 := by
  intro k
  have h1 : C (1048576 * k + 568551) = 3145728 * k + 1705654 := by
    unfold C
    simp [show (1048576 * k + 568551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1705654) = 1572864 * k + 852827 := by
    unfold C
    simp [show (3145728 * k + 1705654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 852827) = 4718592 * k + 2558482 := by
    unfold C
    simp [show (1572864 * k + 852827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2558482) = 2359296 * k + 1279241 := by
    unfold C
    simp [show (4718592 * k + 2558482) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1279241) = 7077888 * k + 3837724 := by
    unfold C
    simp [show (2359296 * k + 1279241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3837724) = 3538944 * k + 1918862 := by
    unfold C
    simp [show (7077888 * k + 3837724) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1918862) = 1769472 * k + 959431 := by
    unfold C
    simp [show (3538944 * k + 1918862) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 959431) = 5308416 * k + 2878294 := by
    unfold C
    simp [show (1769472 * k + 959431) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2878294) = 2654208 * k + 1439147 := by
    unfold C
    simp [show (5308416 * k + 2878294) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1439147) = 7962624 * k + 4317442 := by
    unfold C
    simp [show (2654208 * k + 1439147) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4317442) = 3981312 * k + 2158721 := by
    unfold C
    simp [show (7962624 * k + 4317442) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2158721) = 11943936 * k + 6476164 := by
    unfold C
    simp [show (3981312 * k + 2158721) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6476164) = 5971968 * k + 3238082 := by
    unfold C
    simp [show (11943936 * k + 6476164) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3238082) = 2985984 * k + 1619041 := by
    unfold C
    simp [show (5971968 * k + 3238082) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1619041) = 8957952 * k + 4857124 := by
    unfold C
    simp [show (2985984 * k + 1619041) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4857124) = 4478976 * k + 2428562 := by
    unfold C
    simp [show (8957952 * k + 4857124) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2428562) = 2239488 * k + 1214281 := by
    unfold C
    simp [show (4478976 * k + 2428562) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1214281) = 6718464 * k + 3642844 := by
    unfold C
    simp [show (2239488 * k + 1214281) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3642844) = 3359232 * k + 1821422 := by
    unfold C
    simp [show (6718464 * k + 3642844) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1821422) = 1679616 * k + 910711 := by
    unfold C
    simp [show (3359232 * k + 1821422) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 910711) = 5038848 * k + 2732134 := by
    unfold C
    simp [show (1679616 * k + 910711) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2732134) = 2519424 * k + 1366067 := by
    unfold C
    simp [show (5038848 * k + 2732134) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1366067) = 7558272 * k + 4098202 := by
    unfold C
    simp [show (2519424 * k + 1366067) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4098202) = 3779136 * k + 2049101 := by
    unfold C
    simp [show (7558272 * k + 4098202) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2049101) = 11337408 * k + 6147304 := by
    unfold C
    simp [show (3779136 * k + 2049101) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6147304) = 5668704 * k + 3073652 := by
    unfold C
    simp [show (11337408 * k + 6147304) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3073652) = 2834352 * k + 1536826 := by
    unfold C
    simp [show (5668704 * k + 3073652) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1536826) = 1417176 * k + 768413 := by
    unfold C
    simp [show (2834352 * k + 1536826) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 768413) = 4251528 * k + 2305240 := by
    unfold C
    simp [show (1417176 * k + 768413) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2305240) = 2125764 * k + 1152620 := by
    unfold C
    simp [show (4251528 * k + 2305240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1152620) = 1062882 * k + 576310 := by
    unfold C
    simp [show (2125764 * k + 1152620) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 576310) = 531441 * k + 288155 := by
    unfold C
    simp [show (1062882 * k + 576310) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 568551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 568551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_568859 : ∀ k : Nat,
    iterate (1048576 * k + 568859) 32 = 531441 * k + 288311 ∧
      531441 * k + 288311 < 1048576 * k + 568859 := by
  intro k
  have h1 : C (1048576 * k + 568859) = 3145728 * k + 1706578 := by
    unfold C
    simp [show (1048576 * k + 568859) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1706578) = 1572864 * k + 853289 := by
    unfold C
    simp [show (3145728 * k + 1706578) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 853289) = 4718592 * k + 2559868 := by
    unfold C
    simp [show (1572864 * k + 853289) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2559868) = 2359296 * k + 1279934 := by
    unfold C
    simp [show (4718592 * k + 2559868) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1279934) = 1179648 * k + 639967 := by
    unfold C
    simp [show (2359296 * k + 1279934) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 639967) = 3538944 * k + 1919902 := by
    unfold C
    simp [show (1179648 * k + 639967) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1919902) = 1769472 * k + 959951 := by
    unfold C
    simp [show (3538944 * k + 1919902) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 959951) = 5308416 * k + 2879854 := by
    unfold C
    simp [show (1769472 * k + 959951) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2879854) = 2654208 * k + 1439927 := by
    unfold C
    simp [show (5308416 * k + 2879854) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1439927) = 7962624 * k + 4319782 := by
    unfold C
    simp [show (2654208 * k + 1439927) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4319782) = 3981312 * k + 2159891 := by
    unfold C
    simp [show (7962624 * k + 4319782) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2159891) = 11943936 * k + 6479674 := by
    unfold C
    simp [show (3981312 * k + 2159891) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6479674) = 5971968 * k + 3239837 := by
    unfold C
    simp [show (11943936 * k + 6479674) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3239837) = 17915904 * k + 9719512 := by
    unfold C
    simp [show (5971968 * k + 3239837) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9719512) = 8957952 * k + 4859756 := by
    unfold C
    simp [show (17915904 * k + 9719512) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4859756) = 4478976 * k + 2429878 := by
    unfold C
    simp [show (8957952 * k + 4859756) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2429878) = 2239488 * k + 1214939 := by
    unfold C
    simp [show (4478976 * k + 2429878) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1214939) = 6718464 * k + 3644818 := by
    unfold C
    simp [show (2239488 * k + 1214939) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3644818) = 3359232 * k + 1822409 := by
    unfold C
    simp [show (6718464 * k + 3644818) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1822409) = 10077696 * k + 5467228 := by
    unfold C
    simp [show (3359232 * k + 1822409) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5467228) = 5038848 * k + 2733614 := by
    unfold C
    simp [show (10077696 * k + 5467228) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2733614) = 2519424 * k + 1366807 := by
    unfold C
    simp [show (5038848 * k + 2733614) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1366807) = 7558272 * k + 4100422 := by
    unfold C
    simp [show (2519424 * k + 1366807) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4100422) = 3779136 * k + 2050211 := by
    unfold C
    simp [show (7558272 * k + 4100422) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2050211) = 11337408 * k + 6150634 := by
    unfold C
    simp [show (3779136 * k + 2050211) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6150634) = 5668704 * k + 3075317 := by
    unfold C
    simp [show (11337408 * k + 6150634) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3075317) = 17006112 * k + 9225952 := by
    unfold C
    simp [show (5668704 * k + 3075317) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9225952) = 8503056 * k + 4612976 := by
    unfold C
    simp [show (17006112 * k + 9225952) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4612976) = 4251528 * k + 2306488 := by
    unfold C
    simp [show (8503056 * k + 4612976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2306488) = 2125764 * k + 1153244 := by
    unfold C
    simp [show (4251528 * k + 2306488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1153244) = 1062882 * k + 576622 := by
    unfold C
    simp [show (2125764 * k + 1153244) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 576622) = 531441 * k + 288311 := by
    unfold C
    simp [show (1062882 * k + 576622) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 568859) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 568859)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_569551 : ∀ k : Nat,
    iterate (1048576 * k + 569551) 32 = 531441 * k + 288662 ∧
      531441 * k + 288662 < 1048576 * k + 569551 := by
  intro k
  have h1 : C (1048576 * k + 569551) = 3145728 * k + 1708654 := by
    unfold C
    simp [show (1048576 * k + 569551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1708654) = 1572864 * k + 854327 := by
    unfold C
    simp [show (3145728 * k + 1708654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 854327) = 4718592 * k + 2562982 := by
    unfold C
    simp [show (1572864 * k + 854327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2562982) = 2359296 * k + 1281491 := by
    unfold C
    simp [show (4718592 * k + 2562982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1281491) = 7077888 * k + 3844474 := by
    unfold C
    simp [show (2359296 * k + 1281491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3844474) = 3538944 * k + 1922237 := by
    unfold C
    simp [show (7077888 * k + 3844474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1922237) = 10616832 * k + 5766712 := by
    unfold C
    simp [show (3538944 * k + 1922237) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5766712) = 5308416 * k + 2883356 := by
    unfold C
    simp [show (10616832 * k + 5766712) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2883356) = 2654208 * k + 1441678 := by
    unfold C
    simp [show (5308416 * k + 2883356) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1441678) = 1327104 * k + 720839 := by
    unfold C
    simp [show (2654208 * k + 1441678) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 720839) = 3981312 * k + 2162518 := by
    unfold C
    simp [show (1327104 * k + 720839) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2162518) = 1990656 * k + 1081259 := by
    unfold C
    simp [show (3981312 * k + 2162518) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1081259) = 5971968 * k + 3243778 := by
    unfold C
    simp [show (1990656 * k + 1081259) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3243778) = 2985984 * k + 1621889 := by
    unfold C
    simp [show (5971968 * k + 3243778) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1621889) = 8957952 * k + 4865668 := by
    unfold C
    simp [show (2985984 * k + 1621889) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4865668) = 4478976 * k + 2432834 := by
    unfold C
    simp [show (8957952 * k + 4865668) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2432834) = 2239488 * k + 1216417 := by
    unfold C
    simp [show (4478976 * k + 2432834) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1216417) = 6718464 * k + 3649252 := by
    unfold C
    simp [show (2239488 * k + 1216417) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 3649252) = 3359232 * k + 1824626 := by
    unfold C
    simp [show (6718464 * k + 3649252) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1824626) = 1679616 * k + 912313 := by
    unfold C
    simp [show (3359232 * k + 1824626) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 912313) = 5038848 * k + 2736940 := by
    unfold C
    simp [show (1679616 * k + 912313) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2736940) = 2519424 * k + 1368470 := by
    unfold C
    simp [show (5038848 * k + 2736940) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1368470) = 1259712 * k + 684235 := by
    unfold C
    simp [show (2519424 * k + 1368470) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 684235) = 3779136 * k + 2052706 := by
    unfold C
    simp [show (1259712 * k + 684235) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2052706) = 1889568 * k + 1026353 := by
    unfold C
    simp [show (3779136 * k + 2052706) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1026353) = 5668704 * k + 3079060 := by
    unfold C
    simp [show (1889568 * k + 1026353) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3079060) = 2834352 * k + 1539530 := by
    unfold C
    simp [show (5668704 * k + 3079060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1539530) = 1417176 * k + 769765 := by
    unfold C
    simp [show (2834352 * k + 1539530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 769765) = 4251528 * k + 2309296 := by
    unfold C
    simp [show (1417176 * k + 769765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2309296) = 2125764 * k + 1154648 := by
    unfold C
    simp [show (4251528 * k + 2309296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1154648) = 1062882 * k + 577324 := by
    unfold C
    simp [show (2125764 * k + 1154648) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 577324) = 531441 * k + 288662 := by
    unfold C
    simp [show (1062882 * k + 577324) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 569551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 569551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_569759 : ∀ k : Nat,
    iterate (1048576 * k + 569759) 32 = 531441 * k + 288767 ∧
      531441 * k + 288767 < 1048576 * k + 569759 := by
  intro k
  have h1 : C (1048576 * k + 569759) = 3145728 * k + 1709278 := by
    unfold C
    simp [show (1048576 * k + 569759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1709278) = 1572864 * k + 854639 := by
    unfold C
    simp [show (3145728 * k + 1709278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 854639) = 4718592 * k + 2563918 := by
    unfold C
    simp [show (1572864 * k + 854639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2563918) = 2359296 * k + 1281959 := by
    unfold C
    simp [show (4718592 * k + 2563918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1281959) = 7077888 * k + 3845878 := by
    unfold C
    simp [show (2359296 * k + 1281959) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3845878) = 3538944 * k + 1922939 := by
    unfold C
    simp [show (7077888 * k + 3845878) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1922939) = 10616832 * k + 5768818 := by
    unfold C
    simp [show (3538944 * k + 1922939) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5768818) = 5308416 * k + 2884409 := by
    unfold C
    simp [show (10616832 * k + 5768818) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2884409) = 15925248 * k + 8653228 := by
    unfold C
    simp [show (5308416 * k + 2884409) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8653228) = 7962624 * k + 4326614 := by
    unfold C
    simp [show (15925248 * k + 8653228) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4326614) = 3981312 * k + 2163307 := by
    unfold C
    simp [show (7962624 * k + 4326614) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2163307) = 11943936 * k + 6489922 := by
    unfold C
    simp [show (3981312 * k + 2163307) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6489922) = 5971968 * k + 3244961 := by
    unfold C
    simp [show (11943936 * k + 6489922) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3244961) = 17915904 * k + 9734884 := by
    unfold C
    simp [show (5971968 * k + 3244961) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9734884) = 8957952 * k + 4867442 := by
    unfold C
    simp [show (17915904 * k + 9734884) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4867442) = 4478976 * k + 2433721 := by
    unfold C
    simp [show (8957952 * k + 4867442) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2433721) = 13436928 * k + 7301164 := by
    unfold C
    simp [show (4478976 * k + 2433721) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7301164) = 6718464 * k + 3650582 := by
    unfold C
    simp [show (13436928 * k + 7301164) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3650582) = 3359232 * k + 1825291 := by
    unfold C
    simp [show (6718464 * k + 3650582) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1825291) = 10077696 * k + 5475874 := by
    unfold C
    simp [show (3359232 * k + 1825291) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 5475874) = 5038848 * k + 2737937 := by
    unfold C
    simp [show (10077696 * k + 5475874) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2737937) = 15116544 * k + 8213812 := by
    unfold C
    simp [show (5038848 * k + 2737937) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 8213812) = 7558272 * k + 4106906 := by
    unfold C
    simp [show (15116544 * k + 8213812) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4106906) = 3779136 * k + 2053453 := by
    unfold C
    simp [show (7558272 * k + 4106906) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2053453) = 11337408 * k + 6160360 := by
    unfold C
    simp [show (3779136 * k + 2053453) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6160360) = 5668704 * k + 3080180 := by
    unfold C
    simp [show (11337408 * k + 6160360) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3080180) = 2834352 * k + 1540090 := by
    unfold C
    simp [show (5668704 * k + 3080180) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1540090) = 1417176 * k + 770045 := by
    unfold C
    simp [show (2834352 * k + 1540090) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 770045) = 4251528 * k + 2310136 := by
    unfold C
    simp [show (1417176 * k + 770045) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2310136) = 2125764 * k + 1155068 := by
    unfold C
    simp [show (4251528 * k + 2310136) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1155068) = 1062882 * k + 577534 := by
    unfold C
    simp [show (2125764 * k + 1155068) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 577534) = 531441 * k + 288767 := by
    unfold C
    simp [show (1062882 * k + 577534) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 569759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 569759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_570215 : ∀ k : Nat,
    iterate (1048576 * k + 570215) 32 = 531441 * k + 288998 ∧
      531441 * k + 288998 < 1048576 * k + 570215 := by
  intro k
  have h1 : C (1048576 * k + 570215) = 3145728 * k + 1710646 := by
    unfold C
    simp [show (1048576 * k + 570215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1710646) = 1572864 * k + 855323 := by
    unfold C
    simp [show (3145728 * k + 1710646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 855323) = 4718592 * k + 2565970 := by
    unfold C
    simp [show (1572864 * k + 855323) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2565970) = 2359296 * k + 1282985 := by
    unfold C
    simp [show (4718592 * k + 2565970) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1282985) = 7077888 * k + 3848956 := by
    unfold C
    simp [show (2359296 * k + 1282985) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3848956) = 3538944 * k + 1924478 := by
    unfold C
    simp [show (7077888 * k + 3848956) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1924478) = 1769472 * k + 962239 := by
    unfold C
    simp [show (3538944 * k + 1924478) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 962239) = 5308416 * k + 2886718 := by
    unfold C
    simp [show (1769472 * k + 962239) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2886718) = 2654208 * k + 1443359 := by
    unfold C
    simp [show (5308416 * k + 2886718) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1443359) = 7962624 * k + 4330078 := by
    unfold C
    simp [show (2654208 * k + 1443359) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4330078) = 3981312 * k + 2165039 := by
    unfold C
    simp [show (7962624 * k + 4330078) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2165039) = 11943936 * k + 6495118 := by
    unfold C
    simp [show (3981312 * k + 2165039) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6495118) = 5971968 * k + 3247559 := by
    unfold C
    simp [show (11943936 * k + 6495118) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3247559) = 17915904 * k + 9742678 := by
    unfold C
    simp [show (5971968 * k + 3247559) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 9742678) = 8957952 * k + 4871339 := by
    unfold C
    simp [show (17915904 * k + 9742678) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 4871339) = 26873856 * k + 14614018 := by
    unfold C
    simp [show (8957952 * k + 4871339) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 14614018) = 13436928 * k + 7307009 := by
    unfold C
    simp [show (26873856 * k + 14614018) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 7307009) = 40310784 * k + 21921028 := by
    unfold C
    simp [show (13436928 * k + 7307009) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 21921028) = 20155392 * k + 10960514 := by
    unfold C
    simp [show (40310784 * k + 21921028) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 10960514) = 10077696 * k + 5480257 := by
    unfold C
    simp [show (20155392 * k + 10960514) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 5480257) = 30233088 * k + 16440772 := by
    unfold C
    simp [show (10077696 * k + 5480257) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 16440772) = 15116544 * k + 8220386 := by
    unfold C
    simp [show (30233088 * k + 16440772) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 8220386) = 7558272 * k + 4110193 := by
    unfold C
    simp [show (15116544 * k + 8220386) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4110193) = 22674816 * k + 12330580 := by
    unfold C
    simp [show (7558272 * k + 4110193) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 12330580) = 11337408 * k + 6165290 := by
    unfold C
    simp [show (22674816 * k + 12330580) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 6165290) = 5668704 * k + 3082645 := by
    unfold C
    simp [show (11337408 * k + 6165290) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3082645) = 17006112 * k + 9247936 := by
    unfold C
    simp [show (5668704 * k + 3082645) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 9247936) = 8503056 * k + 4623968 := by
    unfold C
    simp [show (17006112 * k + 9247936) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 4623968) = 4251528 * k + 2311984 := by
    unfold C
    simp [show (8503056 * k + 4623968) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2311984) = 2125764 * k + 1155992 := by
    unfold C
    simp [show (4251528 * k + 2311984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1155992) = 1062882 * k + 577996 := by
    unfold C
    simp [show (2125764 * k + 1155992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 577996) = 531441 * k + 288998 := by
    unfold C
    simp [show (1062882 * k + 577996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 570215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 570215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_570479 : ∀ k : Nat,
    iterate (1048576 * k + 570479) 32 = 531441 * k + 289132 ∧
      531441 * k + 289132 < 1048576 * k + 570479 := by
  intro k
  have h1 : C (1048576 * k + 570479) = 3145728 * k + 1711438 := by
    unfold C
    simp [show (1048576 * k + 570479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1711438) = 1572864 * k + 855719 := by
    unfold C
    simp [show (3145728 * k + 1711438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 855719) = 4718592 * k + 2567158 := by
    unfold C
    simp [show (1572864 * k + 855719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2567158) = 2359296 * k + 1283579 := by
    unfold C
    simp [show (4718592 * k + 2567158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1283579) = 7077888 * k + 3850738 := by
    unfold C
    simp [show (2359296 * k + 1283579) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3850738) = 3538944 * k + 1925369 := by
    unfold C
    simp [show (7077888 * k + 3850738) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1925369) = 10616832 * k + 5776108 := by
    unfold C
    simp [show (3538944 * k + 1925369) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5776108) = 5308416 * k + 2888054 := by
    unfold C
    simp [show (10616832 * k + 5776108) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2888054) = 2654208 * k + 1444027 := by
    unfold C
    simp [show (5308416 * k + 2888054) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1444027) = 7962624 * k + 4332082 := by
    unfold C
    simp [show (2654208 * k + 1444027) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 4332082) = 3981312 * k + 2166041 := by
    unfold C
    simp [show (7962624 * k + 4332082) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2166041) = 11943936 * k + 6498124 := by
    unfold C
    simp [show (3981312 * k + 2166041) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 6498124) = 5971968 * k + 3249062 := by
    unfold C
    simp [show (11943936 * k + 6498124) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3249062) = 2985984 * k + 1624531 := by
    unfold C
    simp [show (5971968 * k + 3249062) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1624531) = 8957952 * k + 4873594 := by
    unfold C
    simp [show (2985984 * k + 1624531) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 4873594) = 4478976 * k + 2436797 := by
    unfold C
    simp [show (8957952 * k + 4873594) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2436797) = 13436928 * k + 7310392 := by
    unfold C
    simp [show (4478976 * k + 2436797) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 7310392) = 6718464 * k + 3655196 := by
    unfold C
    simp [show (13436928 * k + 7310392) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 3655196) = 3359232 * k + 1827598 := by
    unfold C
    simp [show (6718464 * k + 3655196) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1827598) = 1679616 * k + 913799 := by
    unfold C
    simp [show (3359232 * k + 1827598) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 913799) = 5038848 * k + 2741398 := by
    unfold C
    simp [show (1679616 * k + 913799) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2741398) = 2519424 * k + 1370699 := by
    unfold C
    simp [show (5038848 * k + 2741398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1370699) = 7558272 * k + 4112098 := by
    unfold C
    simp [show (2519424 * k + 1370699) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4112098) = 3779136 * k + 2056049 := by
    unfold C
    simp [show (7558272 * k + 4112098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2056049) = 11337408 * k + 6168148 := by
    unfold C
    simp [show (3779136 * k + 2056049) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 6168148) = 5668704 * k + 3084074 := by
    unfold C
    simp [show (11337408 * k + 6168148) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3084074) = 2834352 * k + 1542037 := by
    unfold C
    simp [show (5668704 * k + 3084074) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1542037) = 8503056 * k + 4626112 := by
    unfold C
    simp [show (2834352 * k + 1542037) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4626112) = 4251528 * k + 2313056 := by
    unfold C
    simp [show (8503056 * k + 4626112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2313056) = 2125764 * k + 1156528 := by
    unfold C
    simp [show (4251528 * k + 2313056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1156528) = 1062882 * k + 578264 := by
    unfold C
    simp [show (2125764 * k + 1156528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 578264) = 531441 * k + 289132 := by
    unfold C
    simp [show (1062882 * k + 578264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 570479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 570479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_570591 : ∀ k : Nat,
    iterate (1048576 * k + 570591) 32 = 531441 * k + 289189 ∧
      531441 * k + 289189 < 1048576 * k + 570591 := by
  intro k
  have h1 : C (1048576 * k + 570591) = 3145728 * k + 1711774 := by
    unfold C
    simp [show (1048576 * k + 570591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1711774) = 1572864 * k + 855887 := by
    unfold C
    simp [show (3145728 * k + 1711774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 855887) = 4718592 * k + 2567662 := by
    unfold C
    simp [show (1572864 * k + 855887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 2567662) = 2359296 * k + 1283831 := by
    unfold C
    simp [show (4718592 * k + 2567662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1283831) = 7077888 * k + 3851494 := by
    unfold C
    simp [show (2359296 * k + 1283831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 3851494) = 3538944 * k + 1925747 := by
    unfold C
    simp [show (7077888 * k + 3851494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1925747) = 10616832 * k + 5777242 := by
    unfold C
    simp [show (3538944 * k + 1925747) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 5777242) = 5308416 * k + 2888621 := by
    unfold C
    simp [show (10616832 * k + 5777242) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2888621) = 15925248 * k + 8665864 := by
    unfold C
    simp [show (5308416 * k + 2888621) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 8665864) = 7962624 * k + 4332932 := by
    unfold C
    simp [show (15925248 * k + 8665864) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 4332932) = 3981312 * k + 2166466 := by
    unfold C
    simp [show (7962624 * k + 4332932) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2166466) = 1990656 * k + 1083233 := by
    unfold C
    simp [show (3981312 * k + 2166466) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1083233) = 5971968 * k + 3249700 := by
    unfold C
    simp [show (1990656 * k + 1083233) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3249700) = 2985984 * k + 1624850 := by
    unfold C
    simp [show (5971968 * k + 3249700) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1624850) = 1492992 * k + 812425 := by
    unfold C
    simp [show (2985984 * k + 1624850) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 812425) = 4478976 * k + 2437276 := by
    unfold C
    simp [show (1492992 * k + 812425) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2437276) = 2239488 * k + 1218638 := by
    unfold C
    simp [show (4478976 * k + 2437276) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1218638) = 1119744 * k + 609319 := by
    unfold C
    simp [show (2239488 * k + 1218638) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 609319) = 3359232 * k + 1827958 := by
    unfold C
    simp [show (1119744 * k + 609319) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1827958) = 1679616 * k + 913979 := by
    unfold C
    simp [show (3359232 * k + 1827958) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 913979) = 5038848 * k + 2741938 := by
    unfold C
    simp [show (1679616 * k + 913979) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2741938) = 2519424 * k + 1370969 := by
    unfold C
    simp [show (5038848 * k + 2741938) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1370969) = 7558272 * k + 4112908 := by
    unfold C
    simp [show (2519424 * k + 1370969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4112908) = 3779136 * k + 2056454 := by
    unfold C
    simp [show (7558272 * k + 4112908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2056454) = 1889568 * k + 1028227 := by
    unfold C
    simp [show (3779136 * k + 2056454) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1028227) = 5668704 * k + 3084682 := by
    unfold C
    simp [show (1889568 * k + 1028227) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3084682) = 2834352 * k + 1542341 := by
    unfold C
    simp [show (5668704 * k + 3084682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1542341) = 8503056 * k + 4627024 := by
    unfold C
    simp [show (2834352 * k + 1542341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 4627024) = 4251528 * k + 2313512 := by
    unfold C
    simp [show (8503056 * k + 4627024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2313512) = 2125764 * k + 1156756 := by
    unfold C
    simp [show (4251528 * k + 2313512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1156756) = 1062882 * k + 578378 := by
    unfold C
    simp [show (2125764 * k + 1156756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 578378) = 531441 * k + 289189 := by
    unfold C
    simp [show (1062882 * k + 578378) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 570591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 570591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard073
