import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard051

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_402203 : ∀ k : Nat,
    iterate (1048576 * k + 402203) 32 = 531441 * k + 203846 ∧
      531441 * k + 203846 < 1048576 * k + 402203 := by
  intro k
  have h1 : C (1048576 * k + 402203) = 3145728 * k + 1206610 := by
    unfold C
    simp [show (1048576 * k + 402203) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1206610) = 1572864 * k + 603305 := by
    unfold C
    simp [show (3145728 * k + 1206610) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 603305) = 4718592 * k + 1809916 := by
    unfold C
    simp [show (1572864 * k + 603305) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1809916) = 2359296 * k + 904958 := by
    unfold C
    simp [show (4718592 * k + 1809916) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 904958) = 1179648 * k + 452479 := by
    unfold C
    simp [show (2359296 * k + 904958) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 452479) = 3538944 * k + 1357438 := by
    unfold C
    simp [show (1179648 * k + 452479) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1357438) = 1769472 * k + 678719 := by
    unfold C
    simp [show (3538944 * k + 1357438) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 678719) = 5308416 * k + 2036158 := by
    unfold C
    simp [show (1769472 * k + 678719) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2036158) = 2654208 * k + 1018079 := by
    unfold C
    simp [show (5308416 * k + 2036158) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1018079) = 7962624 * k + 3054238 := by
    unfold C
    simp [show (2654208 * k + 1018079) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3054238) = 3981312 * k + 1527119 := by
    unfold C
    simp [show (7962624 * k + 3054238) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1527119) = 11943936 * k + 4581358 := by
    unfold C
    simp [show (3981312 * k + 1527119) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4581358) = 5971968 * k + 2290679 := by
    unfold C
    simp [show (11943936 * k + 4581358) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2290679) = 17915904 * k + 6872038 := by
    unfold C
    simp [show (5971968 * k + 2290679) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6872038) = 8957952 * k + 3436019 := by
    unfold C
    simp [show (17915904 * k + 6872038) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3436019) = 26873856 * k + 10308058 := by
    unfold C
    simp [show (8957952 * k + 3436019) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10308058) = 13436928 * k + 5154029 := by
    unfold C
    simp [show (26873856 * k + 10308058) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5154029) = 40310784 * k + 15462088 := by
    unfold C
    simp [show (13436928 * k + 5154029) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15462088) = 20155392 * k + 7731044 := by
    unfold C
    simp [show (40310784 * k + 15462088) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7731044) = 10077696 * k + 3865522 := by
    unfold C
    simp [show (20155392 * k + 7731044) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3865522) = 5038848 * k + 1932761 := by
    unfold C
    simp [show (10077696 * k + 3865522) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1932761) = 15116544 * k + 5798284 := by
    unfold C
    simp [show (5038848 * k + 1932761) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5798284) = 7558272 * k + 2899142 := by
    unfold C
    simp [show (15116544 * k + 5798284) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2899142) = 3779136 * k + 1449571 := by
    unfold C
    simp [show (7558272 * k + 2899142) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1449571) = 11337408 * k + 4348714 := by
    unfold C
    simp [show (3779136 * k + 1449571) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4348714) = 5668704 * k + 2174357 := by
    unfold C
    simp [show (11337408 * k + 4348714) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2174357) = 17006112 * k + 6523072 := by
    unfold C
    simp [show (5668704 * k + 2174357) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6523072) = 8503056 * k + 3261536 := by
    unfold C
    simp [show (17006112 * k + 6523072) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3261536) = 4251528 * k + 1630768 := by
    unfold C
    simp [show (8503056 * k + 3261536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1630768) = 2125764 * k + 815384 := by
    unfold C
    simp [show (4251528 * k + 1630768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 815384) = 1062882 * k + 407692 := by
    unfold C
    simp [show (2125764 * k + 815384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 407692) = 531441 * k + 203846 := by
    unfold C
    simp [show (1062882 * k + 407692) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 402203) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 402203)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_402671 : ∀ k : Nat,
    iterate (1048576 * k + 402671) 32 = 531441 * k + 204083 ∧
      531441 * k + 204083 < 1048576 * k + 402671 := by
  intro k
  have h1 : C (1048576 * k + 402671) = 3145728 * k + 1208014 := by
    unfold C
    simp [show (1048576 * k + 402671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1208014) = 1572864 * k + 604007 := by
    unfold C
    simp [show (3145728 * k + 1208014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 604007) = 4718592 * k + 1812022 := by
    unfold C
    simp [show (1572864 * k + 604007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1812022) = 2359296 * k + 906011 := by
    unfold C
    simp [show (4718592 * k + 1812022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 906011) = 7077888 * k + 2718034 := by
    unfold C
    simp [show (2359296 * k + 906011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2718034) = 3538944 * k + 1359017 := by
    unfold C
    simp [show (7077888 * k + 2718034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1359017) = 10616832 * k + 4077052 := by
    unfold C
    simp [show (3538944 * k + 1359017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4077052) = 5308416 * k + 2038526 := by
    unfold C
    simp [show (10616832 * k + 4077052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2038526) = 2654208 * k + 1019263 := by
    unfold C
    simp [show (5308416 * k + 2038526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1019263) = 7962624 * k + 3057790 := by
    unfold C
    simp [show (2654208 * k + 1019263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3057790) = 3981312 * k + 1528895 := by
    unfold C
    simp [show (7962624 * k + 3057790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1528895) = 11943936 * k + 4586686 := by
    unfold C
    simp [show (3981312 * k + 1528895) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4586686) = 5971968 * k + 2293343 := by
    unfold C
    simp [show (11943936 * k + 4586686) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2293343) = 17915904 * k + 6880030 := by
    unfold C
    simp [show (5971968 * k + 2293343) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6880030) = 8957952 * k + 3440015 := by
    unfold C
    simp [show (17915904 * k + 6880030) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3440015) = 26873856 * k + 10320046 := by
    unfold C
    simp [show (8957952 * k + 3440015) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10320046) = 13436928 * k + 5160023 := by
    unfold C
    simp [show (26873856 * k + 10320046) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5160023) = 40310784 * k + 15480070 := by
    unfold C
    simp [show (13436928 * k + 5160023) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15480070) = 20155392 * k + 7740035 := by
    unfold C
    simp [show (40310784 * k + 15480070) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7740035) = 60466176 * k + 23220106 := by
    unfold C
    simp [show (20155392 * k + 7740035) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 23220106) = 30233088 * k + 11610053 := by
    unfold C
    simp [show (60466176 * k + 23220106) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 11610053) = 90699264 * k + 34830160 := by
    unfold C
    simp [show (30233088 * k + 11610053) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 34830160) = 45349632 * k + 17415080 := by
    unfold C
    simp [show (90699264 * k + 34830160) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 17415080) = 22674816 * k + 8707540 := by
    unfold C
    simp [show (45349632 * k + 17415080) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8707540) = 11337408 * k + 4353770 := by
    unfold C
    simp [show (22674816 * k + 8707540) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4353770) = 5668704 * k + 2176885 := by
    unfold C
    simp [show (11337408 * k + 4353770) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2176885) = 17006112 * k + 6530656 := by
    unfold C
    simp [show (5668704 * k + 2176885) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6530656) = 8503056 * k + 3265328 := by
    unfold C
    simp [show (17006112 * k + 6530656) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3265328) = 4251528 * k + 1632664 := by
    unfold C
    simp [show (8503056 * k + 3265328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1632664) = 2125764 * k + 816332 := by
    unfold C
    simp [show (4251528 * k + 1632664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 816332) = 1062882 * k + 408166 := by
    unfold C
    simp [show (2125764 * k + 816332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 408166) = 531441 * k + 204083 := by
    unfold C
    simp [show (1062882 * k + 408166) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 402671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 402671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_403695 : ∀ k : Nat,
    iterate (1048576 * k + 403695) 32 = 531441 * k + 204602 ∧
      531441 * k + 204602 < 1048576 * k + 403695 := by
  intro k
  have h1 : C (1048576 * k + 403695) = 3145728 * k + 1211086 := by
    unfold C
    simp [show (1048576 * k + 403695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1211086) = 1572864 * k + 605543 := by
    unfold C
    simp [show (3145728 * k + 1211086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 605543) = 4718592 * k + 1816630 := by
    unfold C
    simp [show (1572864 * k + 605543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1816630) = 2359296 * k + 908315 := by
    unfold C
    simp [show (4718592 * k + 1816630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 908315) = 7077888 * k + 2724946 := by
    unfold C
    simp [show (2359296 * k + 908315) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2724946) = 3538944 * k + 1362473 := by
    unfold C
    simp [show (7077888 * k + 2724946) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1362473) = 10616832 * k + 4087420 := by
    unfold C
    simp [show (3538944 * k + 1362473) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4087420) = 5308416 * k + 2043710 := by
    unfold C
    simp [show (10616832 * k + 4087420) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2043710) = 2654208 * k + 1021855 := by
    unfold C
    simp [show (5308416 * k + 2043710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1021855) = 7962624 * k + 3065566 := by
    unfold C
    simp [show (2654208 * k + 1021855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3065566) = 3981312 * k + 1532783 := by
    unfold C
    simp [show (7962624 * k + 3065566) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1532783) = 11943936 * k + 4598350 := by
    unfold C
    simp [show (3981312 * k + 1532783) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4598350) = 5971968 * k + 2299175 := by
    unfold C
    simp [show (11943936 * k + 4598350) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2299175) = 17915904 * k + 6897526 := by
    unfold C
    simp [show (5971968 * k + 2299175) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6897526) = 8957952 * k + 3448763 := by
    unfold C
    simp [show (17915904 * k + 6897526) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3448763) = 26873856 * k + 10346290 := by
    unfold C
    simp [show (8957952 * k + 3448763) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10346290) = 13436928 * k + 5173145 := by
    unfold C
    simp [show (26873856 * k + 10346290) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5173145) = 40310784 * k + 15519436 := by
    unfold C
    simp [show (13436928 * k + 5173145) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15519436) = 20155392 * k + 7759718 := by
    unfold C
    simp [show (40310784 * k + 15519436) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7759718) = 10077696 * k + 3879859 := by
    unfold C
    simp [show (20155392 * k + 7759718) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3879859) = 30233088 * k + 11639578 := by
    unfold C
    simp [show (10077696 * k + 3879859) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11639578) = 15116544 * k + 5819789 := by
    unfold C
    simp [show (30233088 * k + 11639578) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5819789) = 45349632 * k + 17459368 := by
    unfold C
    simp [show (15116544 * k + 5819789) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 17459368) = 22674816 * k + 8729684 := by
    unfold C
    simp [show (45349632 * k + 17459368) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8729684) = 11337408 * k + 4364842 := by
    unfold C
    simp [show (22674816 * k + 8729684) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4364842) = 5668704 * k + 2182421 := by
    unfold C
    simp [show (11337408 * k + 4364842) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2182421) = 17006112 * k + 6547264 := by
    unfold C
    simp [show (5668704 * k + 2182421) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6547264) = 8503056 * k + 3273632 := by
    unfold C
    simp [show (17006112 * k + 6547264) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3273632) = 4251528 * k + 1636816 := by
    unfold C
    simp [show (8503056 * k + 3273632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1636816) = 2125764 * k + 818408 := by
    unfold C
    simp [show (4251528 * k + 1636816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 818408) = 1062882 * k + 409204 := by
    unfold C
    simp [show (2125764 * k + 818408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 409204) = 531441 * k + 204602 := by
    unfold C
    simp [show (1062882 * k + 409204) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 403695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 403695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_403783 : ∀ k : Nat,
    iterate (1048576 * k + 403783) 32 = 531441 * k + 204647 ∧
      531441 * k + 204647 < 1048576 * k + 403783 := by
  intro k
  have h1 : C (1048576 * k + 403783) = 3145728 * k + 1211350 := by
    unfold C
    simp [show (1048576 * k + 403783) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1211350) = 1572864 * k + 605675 := by
    unfold C
    simp [show (3145728 * k + 1211350) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 605675) = 4718592 * k + 1817026 := by
    unfold C
    simp [show (1572864 * k + 605675) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1817026) = 2359296 * k + 908513 := by
    unfold C
    simp [show (4718592 * k + 1817026) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 908513) = 7077888 * k + 2725540 := by
    unfold C
    simp [show (2359296 * k + 908513) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2725540) = 3538944 * k + 1362770 := by
    unfold C
    simp [show (7077888 * k + 2725540) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1362770) = 1769472 * k + 681385 := by
    unfold C
    simp [show (3538944 * k + 1362770) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 681385) = 5308416 * k + 2044156 := by
    unfold C
    simp [show (1769472 * k + 681385) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2044156) = 2654208 * k + 1022078 := by
    unfold C
    simp [show (5308416 * k + 2044156) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1022078) = 1327104 * k + 511039 := by
    unfold C
    simp [show (2654208 * k + 1022078) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 511039) = 3981312 * k + 1533118 := by
    unfold C
    simp [show (1327104 * k + 511039) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1533118) = 1990656 * k + 766559 := by
    unfold C
    simp [show (3981312 * k + 1533118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 766559) = 5971968 * k + 2299678 := by
    unfold C
    simp [show (1990656 * k + 766559) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2299678) = 2985984 * k + 1149839 := by
    unfold C
    simp [show (5971968 * k + 2299678) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1149839) = 8957952 * k + 3449518 := by
    unfold C
    simp [show (2985984 * k + 1149839) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3449518) = 4478976 * k + 1724759 := by
    unfold C
    simp [show (8957952 * k + 3449518) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1724759) = 13436928 * k + 5174278 := by
    unfold C
    simp [show (4478976 * k + 1724759) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5174278) = 6718464 * k + 2587139 := by
    unfold C
    simp [show (13436928 * k + 5174278) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2587139) = 20155392 * k + 7761418 := by
    unfold C
    simp [show (6718464 * k + 2587139) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7761418) = 10077696 * k + 3880709 := by
    unfold C
    simp [show (20155392 * k + 7761418) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3880709) = 30233088 * k + 11642128 := by
    unfold C
    simp [show (10077696 * k + 3880709) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11642128) = 15116544 * k + 5821064 := by
    unfold C
    simp [show (30233088 * k + 11642128) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5821064) = 7558272 * k + 2910532 := by
    unfold C
    simp [show (15116544 * k + 5821064) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2910532) = 3779136 * k + 1455266 := by
    unfold C
    simp [show (7558272 * k + 2910532) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1455266) = 1889568 * k + 727633 := by
    unfold C
    simp [show (3779136 * k + 1455266) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 727633) = 5668704 * k + 2182900 := by
    unfold C
    simp [show (1889568 * k + 727633) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2182900) = 2834352 * k + 1091450 := by
    unfold C
    simp [show (5668704 * k + 2182900) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1091450) = 1417176 * k + 545725 := by
    unfold C
    simp [show (2834352 * k + 1091450) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 545725) = 4251528 * k + 1637176 := by
    unfold C
    simp [show (1417176 * k + 545725) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1637176) = 2125764 * k + 818588 := by
    unfold C
    simp [show (4251528 * k + 1637176) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 818588) = 1062882 * k + 409294 := by
    unfold C
    simp [show (2125764 * k + 818588) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 409294) = 531441 * k + 204647 := by
    unfold C
    simp [show (1062882 * k + 409294) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 403783) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 403783)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_404059 : ∀ k : Nat,
    iterate (1048576 * k + 404059) 32 = 531441 * k + 204787 ∧
      531441 * k + 204787 < 1048576 * k + 404059 := by
  intro k
  have h1 : C (1048576 * k + 404059) = 3145728 * k + 1212178 := by
    unfold C
    simp [show (1048576 * k + 404059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1212178) = 1572864 * k + 606089 := by
    unfold C
    simp [show (3145728 * k + 1212178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 606089) = 4718592 * k + 1818268 := by
    unfold C
    simp [show (1572864 * k + 606089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1818268) = 2359296 * k + 909134 := by
    unfold C
    simp [show (4718592 * k + 1818268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 909134) = 1179648 * k + 454567 := by
    unfold C
    simp [show (2359296 * k + 909134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 454567) = 3538944 * k + 1363702 := by
    unfold C
    simp [show (1179648 * k + 454567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1363702) = 1769472 * k + 681851 := by
    unfold C
    simp [show (3538944 * k + 1363702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 681851) = 5308416 * k + 2045554 := by
    unfold C
    simp [show (1769472 * k + 681851) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2045554) = 2654208 * k + 1022777 := by
    unfold C
    simp [show (5308416 * k + 2045554) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1022777) = 7962624 * k + 3068332 := by
    unfold C
    simp [show (2654208 * k + 1022777) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3068332) = 3981312 * k + 1534166 := by
    unfold C
    simp [show (7962624 * k + 3068332) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1534166) = 1990656 * k + 767083 := by
    unfold C
    simp [show (3981312 * k + 1534166) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 767083) = 5971968 * k + 2301250 := by
    unfold C
    simp [show (1990656 * k + 767083) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2301250) = 2985984 * k + 1150625 := by
    unfold C
    simp [show (5971968 * k + 2301250) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1150625) = 8957952 * k + 3451876 := by
    unfold C
    simp [show (2985984 * k + 1150625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3451876) = 4478976 * k + 1725938 := by
    unfold C
    simp [show (8957952 * k + 3451876) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1725938) = 2239488 * k + 862969 := by
    unfold C
    simp [show (4478976 * k + 1725938) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 862969) = 6718464 * k + 2588908 := by
    unfold C
    simp [show (2239488 * k + 862969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2588908) = 3359232 * k + 1294454 := by
    unfold C
    simp [show (6718464 * k + 2588908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1294454) = 1679616 * k + 647227 := by
    unfold C
    simp [show (3359232 * k + 1294454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 647227) = 5038848 * k + 1941682 := by
    unfold C
    simp [show (1679616 * k + 647227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1941682) = 2519424 * k + 970841 := by
    unfold C
    simp [show (5038848 * k + 1941682) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 970841) = 7558272 * k + 2912524 := by
    unfold C
    simp [show (2519424 * k + 970841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2912524) = 3779136 * k + 1456262 := by
    unfold C
    simp [show (7558272 * k + 2912524) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1456262) = 1889568 * k + 728131 := by
    unfold C
    simp [show (3779136 * k + 1456262) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 728131) = 5668704 * k + 2184394 := by
    unfold C
    simp [show (1889568 * k + 728131) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2184394) = 2834352 * k + 1092197 := by
    unfold C
    simp [show (5668704 * k + 2184394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1092197) = 8503056 * k + 3276592 := by
    unfold C
    simp [show (2834352 * k + 1092197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3276592) = 4251528 * k + 1638296 := by
    unfold C
    simp [show (8503056 * k + 3276592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1638296) = 2125764 * k + 819148 := by
    unfold C
    simp [show (4251528 * k + 1638296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 819148) = 1062882 * k + 409574 := by
    unfold C
    simp [show (2125764 * k + 819148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 409574) = 531441 * k + 204787 := by
    unfold C
    simp [show (1062882 * k + 409574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 404059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 404059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_404219 : ∀ k : Nat,
    iterate (1048576 * k + 404219) 32 = 531441 * k + 204868 ∧
      531441 * k + 204868 < 1048576 * k + 404219 := by
  intro k
  have h1 : C (1048576 * k + 404219) = 3145728 * k + 1212658 := by
    unfold C
    simp [show (1048576 * k + 404219) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1212658) = 1572864 * k + 606329 := by
    unfold C
    simp [show (3145728 * k + 1212658) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 606329) = 4718592 * k + 1818988 := by
    unfold C
    simp [show (1572864 * k + 606329) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1818988) = 2359296 * k + 909494 := by
    unfold C
    simp [show (4718592 * k + 1818988) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 909494) = 1179648 * k + 454747 := by
    unfold C
    simp [show (2359296 * k + 909494) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 454747) = 3538944 * k + 1364242 := by
    unfold C
    simp [show (1179648 * k + 454747) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1364242) = 1769472 * k + 682121 := by
    unfold C
    simp [show (3538944 * k + 1364242) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 682121) = 5308416 * k + 2046364 := by
    unfold C
    simp [show (1769472 * k + 682121) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2046364) = 2654208 * k + 1023182 := by
    unfold C
    simp [show (5308416 * k + 2046364) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1023182) = 1327104 * k + 511591 := by
    unfold C
    simp [show (2654208 * k + 1023182) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 511591) = 3981312 * k + 1534774 := by
    unfold C
    simp [show (1327104 * k + 511591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1534774) = 1990656 * k + 767387 := by
    unfold C
    simp [show (3981312 * k + 1534774) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 767387) = 5971968 * k + 2302162 := by
    unfold C
    simp [show (1990656 * k + 767387) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2302162) = 2985984 * k + 1151081 := by
    unfold C
    simp [show (5971968 * k + 2302162) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1151081) = 8957952 * k + 3453244 := by
    unfold C
    simp [show (2985984 * k + 1151081) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3453244) = 4478976 * k + 1726622 := by
    unfold C
    simp [show (8957952 * k + 3453244) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1726622) = 2239488 * k + 863311 := by
    unfold C
    simp [show (4478976 * k + 1726622) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 863311) = 6718464 * k + 2589934 := by
    unfold C
    simp [show (2239488 * k + 863311) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2589934) = 3359232 * k + 1294967 := by
    unfold C
    simp [show (6718464 * k + 2589934) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1294967) = 10077696 * k + 3884902 := by
    unfold C
    simp [show (3359232 * k + 1294967) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3884902) = 5038848 * k + 1942451 := by
    unfold C
    simp [show (10077696 * k + 3884902) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1942451) = 15116544 * k + 5827354 := by
    unfold C
    simp [show (5038848 * k + 1942451) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5827354) = 7558272 * k + 2913677 := by
    unfold C
    simp [show (15116544 * k + 5827354) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2913677) = 22674816 * k + 8741032 := by
    unfold C
    simp [show (7558272 * k + 2913677) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8741032) = 11337408 * k + 4370516 := by
    unfold C
    simp [show (22674816 * k + 8741032) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4370516) = 5668704 * k + 2185258 := by
    unfold C
    simp [show (11337408 * k + 4370516) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2185258) = 2834352 * k + 1092629 := by
    unfold C
    simp [show (5668704 * k + 2185258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1092629) = 8503056 * k + 3277888 := by
    unfold C
    simp [show (2834352 * k + 1092629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3277888) = 4251528 * k + 1638944 := by
    unfold C
    simp [show (8503056 * k + 3277888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1638944) = 2125764 * k + 819472 := by
    unfold C
    simp [show (4251528 * k + 1638944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 819472) = 1062882 * k + 409736 := by
    unfold C
    simp [show (2125764 * k + 819472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 409736) = 531441 * k + 204868 := by
    unfold C
    simp [show (1062882 * k + 409736) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 404219) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 404219)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_404415 : ∀ k : Nat,
    iterate (1048576 * k + 404415) 32 = 531441 * k + 204967 ∧
      531441 * k + 204967 < 1048576 * k + 404415 := by
  intro k
  have h1 : C (1048576 * k + 404415) = 3145728 * k + 1213246 := by
    unfold C
    simp [show (1048576 * k + 404415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1213246) = 1572864 * k + 606623 := by
    unfold C
    simp [show (3145728 * k + 1213246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 606623) = 4718592 * k + 1819870 := by
    unfold C
    simp [show (1572864 * k + 606623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1819870) = 2359296 * k + 909935 := by
    unfold C
    simp [show (4718592 * k + 1819870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 909935) = 7077888 * k + 2729806 := by
    unfold C
    simp [show (2359296 * k + 909935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2729806) = 3538944 * k + 1364903 := by
    unfold C
    simp [show (7077888 * k + 2729806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1364903) = 10616832 * k + 4094710 := by
    unfold C
    simp [show (3538944 * k + 1364903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4094710) = 5308416 * k + 2047355 := by
    unfold C
    simp [show (10616832 * k + 4094710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2047355) = 15925248 * k + 6142066 := by
    unfold C
    simp [show (5308416 * k + 2047355) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6142066) = 7962624 * k + 3071033 := by
    unfold C
    simp [show (15925248 * k + 6142066) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3071033) = 23887872 * k + 9213100 := by
    unfold C
    simp [show (7962624 * k + 3071033) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9213100) = 11943936 * k + 4606550 := by
    unfold C
    simp [show (23887872 * k + 9213100) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4606550) = 5971968 * k + 2303275 := by
    unfold C
    simp [show (11943936 * k + 4606550) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2303275) = 17915904 * k + 6909826 := by
    unfold C
    simp [show (5971968 * k + 2303275) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6909826) = 8957952 * k + 3454913 := by
    unfold C
    simp [show (17915904 * k + 6909826) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3454913) = 26873856 * k + 10364740 := by
    unfold C
    simp [show (8957952 * k + 3454913) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10364740) = 13436928 * k + 5182370 := by
    unfold C
    simp [show (26873856 * k + 10364740) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5182370) = 6718464 * k + 2591185 := by
    unfold C
    simp [show (13436928 * k + 5182370) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2591185) = 20155392 * k + 7773556 := by
    unfold C
    simp [show (6718464 * k + 2591185) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7773556) = 10077696 * k + 3886778 := by
    unfold C
    simp [show (20155392 * k + 7773556) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3886778) = 5038848 * k + 1943389 := by
    unfold C
    simp [show (10077696 * k + 3886778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1943389) = 15116544 * k + 5830168 := by
    unfold C
    simp [show (5038848 * k + 1943389) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5830168) = 7558272 * k + 2915084 := by
    unfold C
    simp [show (15116544 * k + 5830168) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2915084) = 3779136 * k + 1457542 := by
    unfold C
    simp [show (7558272 * k + 2915084) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1457542) = 1889568 * k + 728771 := by
    unfold C
    simp [show (3779136 * k + 1457542) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 728771) = 5668704 * k + 2186314 := by
    unfold C
    simp [show (1889568 * k + 728771) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2186314) = 2834352 * k + 1093157 := by
    unfold C
    simp [show (5668704 * k + 2186314) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1093157) = 8503056 * k + 3279472 := by
    unfold C
    simp [show (2834352 * k + 1093157) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3279472) = 4251528 * k + 1639736 := by
    unfold C
    simp [show (8503056 * k + 3279472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1639736) = 2125764 * k + 819868 := by
    unfold C
    simp [show (4251528 * k + 1639736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 819868) = 1062882 * k + 409934 := by
    unfold C
    simp [show (2125764 * k + 819868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 409934) = 531441 * k + 204967 := by
    unfold C
    simp [show (1062882 * k + 409934) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 404415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 404415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_404671 : ∀ k : Nat,
    iterate (1048576 * k + 404671) 32 = 531441 * k + 205097 ∧
      531441 * k + 205097 < 1048576 * k + 404671 := by
  intro k
  have h1 : C (1048576 * k + 404671) = 3145728 * k + 1214014 := by
    unfold C
    simp [show (1048576 * k + 404671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1214014) = 1572864 * k + 607007 := by
    unfold C
    simp [show (3145728 * k + 1214014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 607007) = 4718592 * k + 1821022 := by
    unfold C
    simp [show (1572864 * k + 607007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1821022) = 2359296 * k + 910511 := by
    unfold C
    simp [show (4718592 * k + 1821022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 910511) = 7077888 * k + 2731534 := by
    unfold C
    simp [show (2359296 * k + 910511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2731534) = 3538944 * k + 1365767 := by
    unfold C
    simp [show (7077888 * k + 2731534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1365767) = 10616832 * k + 4097302 := by
    unfold C
    simp [show (3538944 * k + 1365767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4097302) = 5308416 * k + 2048651 := by
    unfold C
    simp [show (10616832 * k + 4097302) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2048651) = 15925248 * k + 6145954 := by
    unfold C
    simp [show (5308416 * k + 2048651) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6145954) = 7962624 * k + 3072977 := by
    unfold C
    simp [show (15925248 * k + 6145954) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3072977) = 23887872 * k + 9218932 := by
    unfold C
    simp [show (7962624 * k + 3072977) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9218932) = 11943936 * k + 4609466 := by
    unfold C
    simp [show (23887872 * k + 9218932) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4609466) = 5971968 * k + 2304733 := by
    unfold C
    simp [show (11943936 * k + 4609466) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2304733) = 17915904 * k + 6914200 := by
    unfold C
    simp [show (5971968 * k + 2304733) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6914200) = 8957952 * k + 3457100 := by
    unfold C
    simp [show (17915904 * k + 6914200) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3457100) = 4478976 * k + 1728550 := by
    unfold C
    simp [show (8957952 * k + 3457100) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1728550) = 2239488 * k + 864275 := by
    unfold C
    simp [show (4478976 * k + 1728550) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 864275) = 6718464 * k + 2592826 := by
    unfold C
    simp [show (2239488 * k + 864275) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2592826) = 3359232 * k + 1296413 := by
    unfold C
    simp [show (6718464 * k + 2592826) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1296413) = 10077696 * k + 3889240 := by
    unfold C
    simp [show (3359232 * k + 1296413) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3889240) = 5038848 * k + 1944620 := by
    unfold C
    simp [show (10077696 * k + 3889240) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1944620) = 2519424 * k + 972310 := by
    unfold C
    simp [show (5038848 * k + 1944620) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 972310) = 1259712 * k + 486155 := by
    unfold C
    simp [show (2519424 * k + 972310) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 486155) = 3779136 * k + 1458466 := by
    unfold C
    simp [show (1259712 * k + 486155) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1458466) = 1889568 * k + 729233 := by
    unfold C
    simp [show (3779136 * k + 1458466) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 729233) = 5668704 * k + 2187700 := by
    unfold C
    simp [show (1889568 * k + 729233) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2187700) = 2834352 * k + 1093850 := by
    unfold C
    simp [show (5668704 * k + 2187700) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1093850) = 1417176 * k + 546925 := by
    unfold C
    simp [show (2834352 * k + 1093850) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 546925) = 4251528 * k + 1640776 := by
    unfold C
    simp [show (1417176 * k + 546925) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1640776) = 2125764 * k + 820388 := by
    unfold C
    simp [show (4251528 * k + 1640776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 820388) = 1062882 * k + 410194 := by
    unfold C
    simp [show (2125764 * k + 820388) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 410194) = 531441 * k + 205097 := by
    unfold C
    simp [show (1062882 * k + 410194) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 404671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 404671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405151 : ∀ k : Nat,
    iterate (1048576 * k + 405151) 32 = 531441 * k + 205340 ∧
      531441 * k + 205340 < 1048576 * k + 405151 := by
  intro k
  have h1 : C (1048576 * k + 405151) = 3145728 * k + 1215454 := by
    unfold C
    simp [show (1048576 * k + 405151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1215454) = 1572864 * k + 607727 := by
    unfold C
    simp [show (3145728 * k + 1215454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 607727) = 4718592 * k + 1823182 := by
    unfold C
    simp [show (1572864 * k + 607727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1823182) = 2359296 * k + 911591 := by
    unfold C
    simp [show (4718592 * k + 1823182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 911591) = 7077888 * k + 2734774 := by
    unfold C
    simp [show (2359296 * k + 911591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2734774) = 3538944 * k + 1367387 := by
    unfold C
    simp [show (7077888 * k + 2734774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1367387) = 10616832 * k + 4102162 := by
    unfold C
    simp [show (3538944 * k + 1367387) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4102162) = 5308416 * k + 2051081 := by
    unfold C
    simp [show (10616832 * k + 4102162) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2051081) = 15925248 * k + 6153244 := by
    unfold C
    simp [show (5308416 * k + 2051081) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6153244) = 7962624 * k + 3076622 := by
    unfold C
    simp [show (15925248 * k + 6153244) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3076622) = 3981312 * k + 1538311 := by
    unfold C
    simp [show (7962624 * k + 3076622) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1538311) = 11943936 * k + 4614934 := by
    unfold C
    simp [show (3981312 * k + 1538311) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4614934) = 5971968 * k + 2307467 := by
    unfold C
    simp [show (11943936 * k + 4614934) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2307467) = 17915904 * k + 6922402 := by
    unfold C
    simp [show (5971968 * k + 2307467) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6922402) = 8957952 * k + 3461201 := by
    unfold C
    simp [show (17915904 * k + 6922402) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3461201) = 26873856 * k + 10383604 := by
    unfold C
    simp [show (8957952 * k + 3461201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10383604) = 13436928 * k + 5191802 := by
    unfold C
    simp [show (26873856 * k + 10383604) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5191802) = 6718464 * k + 2595901 := by
    unfold C
    simp [show (13436928 * k + 5191802) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2595901) = 20155392 * k + 7787704 := by
    unfold C
    simp [show (6718464 * k + 2595901) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7787704) = 10077696 * k + 3893852 := by
    unfold C
    simp [show (20155392 * k + 7787704) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3893852) = 5038848 * k + 1946926 := by
    unfold C
    simp [show (10077696 * k + 3893852) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1946926) = 2519424 * k + 973463 := by
    unfold C
    simp [show (5038848 * k + 1946926) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 973463) = 7558272 * k + 2920390 := by
    unfold C
    simp [show (2519424 * k + 973463) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2920390) = 3779136 * k + 1460195 := by
    unfold C
    simp [show (7558272 * k + 2920390) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1460195) = 11337408 * k + 4380586 := by
    unfold C
    simp [show (3779136 * k + 1460195) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4380586) = 5668704 * k + 2190293 := by
    unfold C
    simp [show (11337408 * k + 4380586) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2190293) = 17006112 * k + 6570880 := by
    unfold C
    simp [show (5668704 * k + 2190293) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6570880) = 8503056 * k + 3285440 := by
    unfold C
    simp [show (17006112 * k + 6570880) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3285440) = 4251528 * k + 1642720 := by
    unfold C
    simp [show (8503056 * k + 3285440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1642720) = 2125764 * k + 821360 := by
    unfold C
    simp [show (4251528 * k + 1642720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 821360) = 1062882 * k + 410680 := by
    unfold C
    simp [show (2125764 * k + 821360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 410680) = 531441 * k + 205340 := by
    unfold C
    simp [show (1062882 * k + 410680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405275 : ∀ k : Nat,
    iterate (1048576 * k + 405275) 32 = 531441 * k + 205403 ∧
      531441 * k + 205403 < 1048576 * k + 405275 := by
  intro k
  have h1 : C (1048576 * k + 405275) = 3145728 * k + 1215826 := by
    unfold C
    simp [show (1048576 * k + 405275) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1215826) = 1572864 * k + 607913 := by
    unfold C
    simp [show (3145728 * k + 1215826) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 607913) = 4718592 * k + 1823740 := by
    unfold C
    simp [show (1572864 * k + 607913) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1823740) = 2359296 * k + 911870 := by
    unfold C
    simp [show (4718592 * k + 1823740) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 911870) = 1179648 * k + 455935 := by
    unfold C
    simp [show (2359296 * k + 911870) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 455935) = 3538944 * k + 1367806 := by
    unfold C
    simp [show (1179648 * k + 455935) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1367806) = 1769472 * k + 683903 := by
    unfold C
    simp [show (3538944 * k + 1367806) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 683903) = 5308416 * k + 2051710 := by
    unfold C
    simp [show (1769472 * k + 683903) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2051710) = 2654208 * k + 1025855 := by
    unfold C
    simp [show (5308416 * k + 2051710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1025855) = 7962624 * k + 3077566 := by
    unfold C
    simp [show (2654208 * k + 1025855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3077566) = 3981312 * k + 1538783 := by
    unfold C
    simp [show (7962624 * k + 3077566) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1538783) = 11943936 * k + 4616350 := by
    unfold C
    simp [show (3981312 * k + 1538783) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4616350) = 5971968 * k + 2308175 := by
    unfold C
    simp [show (11943936 * k + 4616350) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2308175) = 17915904 * k + 6924526 := by
    unfold C
    simp [show (5971968 * k + 2308175) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6924526) = 8957952 * k + 3462263 := by
    unfold C
    simp [show (17915904 * k + 6924526) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3462263) = 26873856 * k + 10386790 := by
    unfold C
    simp [show (8957952 * k + 3462263) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10386790) = 13436928 * k + 5193395 := by
    unfold C
    simp [show (26873856 * k + 10386790) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5193395) = 40310784 * k + 15580186 := by
    unfold C
    simp [show (13436928 * k + 5193395) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15580186) = 20155392 * k + 7790093 := by
    unfold C
    simp [show (40310784 * k + 15580186) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7790093) = 60466176 * k + 23370280 := by
    unfold C
    simp [show (20155392 * k + 7790093) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 23370280) = 30233088 * k + 11685140 := by
    unfold C
    simp [show (60466176 * k + 23370280) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 11685140) = 15116544 * k + 5842570 := by
    unfold C
    simp [show (30233088 * k + 11685140) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5842570) = 7558272 * k + 2921285 := by
    unfold C
    simp [show (15116544 * k + 5842570) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2921285) = 22674816 * k + 8763856 := by
    unfold C
    simp [show (7558272 * k + 2921285) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8763856) = 11337408 * k + 4381928 := by
    unfold C
    simp [show (22674816 * k + 8763856) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4381928) = 5668704 * k + 2190964 := by
    unfold C
    simp [show (11337408 * k + 4381928) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2190964) = 2834352 * k + 1095482 := by
    unfold C
    simp [show (5668704 * k + 2190964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1095482) = 1417176 * k + 547741 := by
    unfold C
    simp [show (2834352 * k + 1095482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 547741) = 4251528 * k + 1643224 := by
    unfold C
    simp [show (1417176 * k + 547741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1643224) = 2125764 * k + 821612 := by
    unfold C
    simp [show (4251528 * k + 1643224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 821612) = 1062882 * k + 410806 := by
    unfold C
    simp [show (2125764 * k + 821612) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 410806) = 531441 * k + 205403 := by
    unfold C
    simp [show (1062882 * k + 410806) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405275) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405275)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405439 : ∀ k : Nat,
    iterate (1048576 * k + 405439) 32 = 531441 * k + 205486 ∧
      531441 * k + 205486 < 1048576 * k + 405439 := by
  intro k
  have h1 : C (1048576 * k + 405439) = 3145728 * k + 1216318 := by
    unfold C
    simp [show (1048576 * k + 405439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1216318) = 1572864 * k + 608159 := by
    unfold C
    simp [show (3145728 * k + 1216318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 608159) = 4718592 * k + 1824478 := by
    unfold C
    simp [show (1572864 * k + 608159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1824478) = 2359296 * k + 912239 := by
    unfold C
    simp [show (4718592 * k + 1824478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 912239) = 7077888 * k + 2736718 := by
    unfold C
    simp [show (2359296 * k + 912239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2736718) = 3538944 * k + 1368359 := by
    unfold C
    simp [show (7077888 * k + 2736718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1368359) = 10616832 * k + 4105078 := by
    unfold C
    simp [show (3538944 * k + 1368359) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4105078) = 5308416 * k + 2052539 := by
    unfold C
    simp [show (10616832 * k + 4105078) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2052539) = 15925248 * k + 6157618 := by
    unfold C
    simp [show (5308416 * k + 2052539) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6157618) = 7962624 * k + 3078809 := by
    unfold C
    simp [show (15925248 * k + 6157618) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3078809) = 23887872 * k + 9236428 := by
    unfold C
    simp [show (7962624 * k + 3078809) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9236428) = 11943936 * k + 4618214 := by
    unfold C
    simp [show (23887872 * k + 9236428) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4618214) = 5971968 * k + 2309107 := by
    unfold C
    simp [show (11943936 * k + 4618214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2309107) = 17915904 * k + 6927322 := by
    unfold C
    simp [show (5971968 * k + 2309107) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6927322) = 8957952 * k + 3463661 := by
    unfold C
    simp [show (17915904 * k + 6927322) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3463661) = 26873856 * k + 10390984 := by
    unfold C
    simp [show (8957952 * k + 3463661) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10390984) = 13436928 * k + 5195492 := by
    unfold C
    simp [show (26873856 * k + 10390984) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5195492) = 6718464 * k + 2597746 := by
    unfold C
    simp [show (13436928 * k + 5195492) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2597746) = 3359232 * k + 1298873 := by
    unfold C
    simp [show (6718464 * k + 2597746) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1298873) = 10077696 * k + 3896620 := by
    unfold C
    simp [show (3359232 * k + 1298873) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3896620) = 5038848 * k + 1948310 := by
    unfold C
    simp [show (10077696 * k + 3896620) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1948310) = 2519424 * k + 974155 := by
    unfold C
    simp [show (5038848 * k + 1948310) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 974155) = 7558272 * k + 2922466 := by
    unfold C
    simp [show (2519424 * k + 974155) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2922466) = 3779136 * k + 1461233 := by
    unfold C
    simp [show (7558272 * k + 2922466) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1461233) = 11337408 * k + 4383700 := by
    unfold C
    simp [show (3779136 * k + 1461233) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4383700) = 5668704 * k + 2191850 := by
    unfold C
    simp [show (11337408 * k + 4383700) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2191850) = 2834352 * k + 1095925 := by
    unfold C
    simp [show (5668704 * k + 2191850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1095925) = 8503056 * k + 3287776 := by
    unfold C
    simp [show (2834352 * k + 1095925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3287776) = 4251528 * k + 1643888 := by
    unfold C
    simp [show (8503056 * k + 3287776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1643888) = 2125764 * k + 821944 := by
    unfold C
    simp [show (4251528 * k + 1643888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 821944) = 1062882 * k + 410972 := by
    unfold C
    simp [show (2125764 * k + 821944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 410972) = 531441 * k + 205486 := by
    unfold C
    simp [show (1062882 * k + 410972) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405551 : ∀ k : Nat,
    iterate (1048576 * k + 405551) 32 = 531441 * k + 205543 ∧
      531441 * k + 205543 < 1048576 * k + 405551 := by
  intro k
  have h1 : C (1048576 * k + 405551) = 3145728 * k + 1216654 := by
    unfold C
    simp [show (1048576 * k + 405551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1216654) = 1572864 * k + 608327 := by
    unfold C
    simp [show (3145728 * k + 1216654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 608327) = 4718592 * k + 1824982 := by
    unfold C
    simp [show (1572864 * k + 608327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1824982) = 2359296 * k + 912491 := by
    unfold C
    simp [show (4718592 * k + 1824982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 912491) = 7077888 * k + 2737474 := by
    unfold C
    simp [show (2359296 * k + 912491) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2737474) = 3538944 * k + 1368737 := by
    unfold C
    simp [show (7077888 * k + 2737474) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1368737) = 10616832 * k + 4106212 := by
    unfold C
    simp [show (3538944 * k + 1368737) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4106212) = 5308416 * k + 2053106 := by
    unfold C
    simp [show (10616832 * k + 4106212) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2053106) = 2654208 * k + 1026553 := by
    unfold C
    simp [show (5308416 * k + 2053106) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1026553) = 7962624 * k + 3079660 := by
    unfold C
    simp [show (2654208 * k + 1026553) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3079660) = 3981312 * k + 1539830 := by
    unfold C
    simp [show (7962624 * k + 3079660) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1539830) = 1990656 * k + 769915 := by
    unfold C
    simp [show (3981312 * k + 1539830) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 769915) = 5971968 * k + 2309746 := by
    unfold C
    simp [show (1990656 * k + 769915) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2309746) = 2985984 * k + 1154873 := by
    unfold C
    simp [show (5971968 * k + 2309746) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1154873) = 8957952 * k + 3464620 := by
    unfold C
    simp [show (2985984 * k + 1154873) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3464620) = 4478976 * k + 1732310 := by
    unfold C
    simp [show (8957952 * k + 3464620) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1732310) = 2239488 * k + 866155 := by
    unfold C
    simp [show (4478976 * k + 1732310) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 866155) = 6718464 * k + 2598466 := by
    unfold C
    simp [show (2239488 * k + 866155) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2598466) = 3359232 * k + 1299233 := by
    unfold C
    simp [show (6718464 * k + 2598466) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1299233) = 10077696 * k + 3897700 := by
    unfold C
    simp [show (3359232 * k + 1299233) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3897700) = 5038848 * k + 1948850 := by
    unfold C
    simp [show (10077696 * k + 3897700) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1948850) = 2519424 * k + 974425 := by
    unfold C
    simp [show (5038848 * k + 1948850) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 974425) = 7558272 * k + 2923276 := by
    unfold C
    simp [show (2519424 * k + 974425) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2923276) = 3779136 * k + 1461638 := by
    unfold C
    simp [show (7558272 * k + 2923276) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1461638) = 1889568 * k + 730819 := by
    unfold C
    simp [show (3779136 * k + 1461638) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 730819) = 5668704 * k + 2192458 := by
    unfold C
    simp [show (1889568 * k + 730819) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2192458) = 2834352 * k + 1096229 := by
    unfold C
    simp [show (5668704 * k + 2192458) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1096229) = 8503056 * k + 3288688 := by
    unfold C
    simp [show (2834352 * k + 1096229) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3288688) = 4251528 * k + 1644344 := by
    unfold C
    simp [show (8503056 * k + 3288688) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1644344) = 2125764 * k + 822172 := by
    unfold C
    simp [show (4251528 * k + 1644344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 822172) = 1062882 * k + 411086 := by
    unfold C
    simp [show (2125764 * k + 822172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 411086) = 531441 * k + 205543 := by
    unfold C
    simp [show (1062882 * k + 411086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405695 : ∀ k : Nat,
    iterate (1048576 * k + 405695) 32 = 531441 * k + 205616 ∧
      531441 * k + 205616 < 1048576 * k + 405695 := by
  intro k
  have h1 : C (1048576 * k + 405695) = 3145728 * k + 1217086 := by
    unfold C
    simp [show (1048576 * k + 405695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1217086) = 1572864 * k + 608543 := by
    unfold C
    simp [show (3145728 * k + 1217086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 608543) = 4718592 * k + 1825630 := by
    unfold C
    simp [show (1572864 * k + 608543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1825630) = 2359296 * k + 912815 := by
    unfold C
    simp [show (4718592 * k + 1825630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 912815) = 7077888 * k + 2738446 := by
    unfold C
    simp [show (2359296 * k + 912815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2738446) = 3538944 * k + 1369223 := by
    unfold C
    simp [show (7077888 * k + 2738446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1369223) = 10616832 * k + 4107670 := by
    unfold C
    simp [show (3538944 * k + 1369223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4107670) = 5308416 * k + 2053835 := by
    unfold C
    simp [show (10616832 * k + 4107670) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2053835) = 15925248 * k + 6161506 := by
    unfold C
    simp [show (5308416 * k + 2053835) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6161506) = 7962624 * k + 3080753 := by
    unfold C
    simp [show (15925248 * k + 6161506) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3080753) = 23887872 * k + 9242260 := by
    unfold C
    simp [show (7962624 * k + 3080753) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9242260) = 11943936 * k + 4621130 := by
    unfold C
    simp [show (23887872 * k + 9242260) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4621130) = 5971968 * k + 2310565 := by
    unfold C
    simp [show (11943936 * k + 4621130) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2310565) = 17915904 * k + 6931696 := by
    unfold C
    simp [show (5971968 * k + 2310565) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6931696) = 8957952 * k + 3465848 := by
    unfold C
    simp [show (17915904 * k + 6931696) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3465848) = 4478976 * k + 1732924 := by
    unfold C
    simp [show (8957952 * k + 3465848) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1732924) = 2239488 * k + 866462 := by
    unfold C
    simp [show (4478976 * k + 1732924) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 866462) = 1119744 * k + 433231 := by
    unfold C
    simp [show (2239488 * k + 866462) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 433231) = 3359232 * k + 1299694 := by
    unfold C
    simp [show (1119744 * k + 433231) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1299694) = 1679616 * k + 649847 := by
    unfold C
    simp [show (3359232 * k + 1299694) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 649847) = 5038848 * k + 1949542 := by
    unfold C
    simp [show (1679616 * k + 649847) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1949542) = 2519424 * k + 974771 := by
    unfold C
    simp [show (5038848 * k + 1949542) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 974771) = 7558272 * k + 2924314 := by
    unfold C
    simp [show (2519424 * k + 974771) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2924314) = 3779136 * k + 1462157 := by
    unfold C
    simp [show (7558272 * k + 2924314) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1462157) = 11337408 * k + 4386472 := by
    unfold C
    simp [show (3779136 * k + 1462157) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4386472) = 5668704 * k + 2193236 := by
    unfold C
    simp [show (11337408 * k + 4386472) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2193236) = 2834352 * k + 1096618 := by
    unfold C
    simp [show (5668704 * k + 2193236) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1096618) = 1417176 * k + 548309 := by
    unfold C
    simp [show (2834352 * k + 1096618) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 548309) = 4251528 * k + 1644928 := by
    unfold C
    simp [show (1417176 * k + 548309) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1644928) = 2125764 * k + 822464 := by
    unfold C
    simp [show (4251528 * k + 1644928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 822464) = 1062882 * k + 411232 := by
    unfold C
    simp [show (2125764 * k + 822464) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 411232) = 531441 * k + 205616 := by
    unfold C
    simp [show (1062882 * k + 411232) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405743 : ∀ k : Nat,
    iterate (1048576 * k + 405743) 32 = 531441 * k + 205640 ∧
      531441 * k + 205640 < 1048576 * k + 405743 := by
  intro k
  have h1 : C (1048576 * k + 405743) = 3145728 * k + 1217230 := by
    unfold C
    simp [show (1048576 * k + 405743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1217230) = 1572864 * k + 608615 := by
    unfold C
    simp [show (3145728 * k + 1217230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 608615) = 4718592 * k + 1825846 := by
    unfold C
    simp [show (1572864 * k + 608615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1825846) = 2359296 * k + 912923 := by
    unfold C
    simp [show (4718592 * k + 1825846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 912923) = 7077888 * k + 2738770 := by
    unfold C
    simp [show (2359296 * k + 912923) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2738770) = 3538944 * k + 1369385 := by
    unfold C
    simp [show (7077888 * k + 2738770) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1369385) = 10616832 * k + 4108156 := by
    unfold C
    simp [show (3538944 * k + 1369385) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4108156) = 5308416 * k + 2054078 := by
    unfold C
    simp [show (10616832 * k + 4108156) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2054078) = 2654208 * k + 1027039 := by
    unfold C
    simp [show (5308416 * k + 2054078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1027039) = 7962624 * k + 3081118 := by
    unfold C
    simp [show (2654208 * k + 1027039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3081118) = 3981312 * k + 1540559 := by
    unfold C
    simp [show (7962624 * k + 3081118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1540559) = 11943936 * k + 4621678 := by
    unfold C
    simp [show (3981312 * k + 1540559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4621678) = 5971968 * k + 2310839 := by
    unfold C
    simp [show (11943936 * k + 4621678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2310839) = 17915904 * k + 6932518 := by
    unfold C
    simp [show (5971968 * k + 2310839) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6932518) = 8957952 * k + 3466259 := by
    unfold C
    simp [show (17915904 * k + 6932518) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3466259) = 26873856 * k + 10398778 := by
    unfold C
    simp [show (8957952 * k + 3466259) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 10398778) = 13436928 * k + 5199389 := by
    unfold C
    simp [show (26873856 * k + 10398778) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5199389) = 40310784 * k + 15598168 := by
    unfold C
    simp [show (13436928 * k + 5199389) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 15598168) = 20155392 * k + 7799084 := by
    unfold C
    simp [show (40310784 * k + 15598168) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7799084) = 10077696 * k + 3899542 := by
    unfold C
    simp [show (20155392 * k + 7799084) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3899542) = 5038848 * k + 1949771 := by
    unfold C
    simp [show (10077696 * k + 3899542) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1949771) = 15116544 * k + 5849314 := by
    unfold C
    simp [show (5038848 * k + 1949771) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5849314) = 7558272 * k + 2924657 := by
    unfold C
    simp [show (15116544 * k + 5849314) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2924657) = 22674816 * k + 8773972 := by
    unfold C
    simp [show (7558272 * k + 2924657) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8773972) = 11337408 * k + 4386986 := by
    unfold C
    simp [show (22674816 * k + 8773972) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4386986) = 5668704 * k + 2193493 := by
    unfold C
    simp [show (11337408 * k + 4386986) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2193493) = 17006112 * k + 6580480 := by
    unfold C
    simp [show (5668704 * k + 2193493) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6580480) = 8503056 * k + 3290240 := by
    unfold C
    simp [show (17006112 * k + 6580480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3290240) = 4251528 * k + 1645120 := by
    unfold C
    simp [show (8503056 * k + 3290240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1645120) = 2125764 * k + 822560 := by
    unfold C
    simp [show (4251528 * k + 1645120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 822560) = 1062882 * k + 411280 := by
    unfold C
    simp [show (2125764 * k + 822560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 411280) = 531441 * k + 205640 := by
    unfold C
    simp [show (1062882 * k + 411280) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_405807 : ∀ k : Nat,
    iterate (1048576 * k + 405807) 32 = 531441 * k + 205673 ∧
      531441 * k + 205673 < 1048576 * k + 405807 := by
  intro k
  have h1 : C (1048576 * k + 405807) = 3145728 * k + 1217422 := by
    unfold C
    simp [show (1048576 * k + 405807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1217422) = 1572864 * k + 608711 := by
    unfold C
    simp [show (3145728 * k + 1217422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 608711) = 4718592 * k + 1826134 := by
    unfold C
    simp [show (1572864 * k + 608711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1826134) = 2359296 * k + 913067 := by
    unfold C
    simp [show (4718592 * k + 1826134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 913067) = 7077888 * k + 2739202 := by
    unfold C
    simp [show (2359296 * k + 913067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2739202) = 3538944 * k + 1369601 := by
    unfold C
    simp [show (7077888 * k + 2739202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1369601) = 10616832 * k + 4108804 := by
    unfold C
    simp [show (3538944 * k + 1369601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4108804) = 5308416 * k + 2054402 := by
    unfold C
    simp [show (10616832 * k + 4108804) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2054402) = 2654208 * k + 1027201 := by
    unfold C
    simp [show (5308416 * k + 2054402) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1027201) = 7962624 * k + 3081604 := by
    unfold C
    simp [show (2654208 * k + 1027201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3081604) = 3981312 * k + 1540802 := by
    unfold C
    simp [show (7962624 * k + 3081604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1540802) = 1990656 * k + 770401 := by
    unfold C
    simp [show (3981312 * k + 1540802) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 770401) = 5971968 * k + 2311204 := by
    unfold C
    simp [show (1990656 * k + 770401) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2311204) = 2985984 * k + 1155602 := by
    unfold C
    simp [show (5971968 * k + 2311204) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1155602) = 1492992 * k + 577801 := by
    unfold C
    simp [show (2985984 * k + 1155602) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 577801) = 4478976 * k + 1733404 := by
    unfold C
    simp [show (1492992 * k + 577801) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1733404) = 2239488 * k + 866702 := by
    unfold C
    simp [show (4478976 * k + 1733404) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 866702) = 1119744 * k + 433351 := by
    unfold C
    simp [show (2239488 * k + 866702) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 433351) = 3359232 * k + 1300054 := by
    unfold C
    simp [show (1119744 * k + 433351) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1300054) = 1679616 * k + 650027 := by
    unfold C
    simp [show (3359232 * k + 1300054) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 650027) = 5038848 * k + 1950082 := by
    unfold C
    simp [show (1679616 * k + 650027) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1950082) = 2519424 * k + 975041 := by
    unfold C
    simp [show (5038848 * k + 1950082) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 975041) = 7558272 * k + 2925124 := by
    unfold C
    simp [show (2519424 * k + 975041) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2925124) = 3779136 * k + 1462562 := by
    unfold C
    simp [show (7558272 * k + 2925124) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1462562) = 1889568 * k + 731281 := by
    unfold C
    simp [show (3779136 * k + 1462562) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 731281) = 5668704 * k + 2193844 := by
    unfold C
    simp [show (1889568 * k + 731281) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2193844) = 2834352 * k + 1096922 := by
    unfold C
    simp [show (5668704 * k + 2193844) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1096922) = 1417176 * k + 548461 := by
    unfold C
    simp [show (2834352 * k + 1096922) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 548461) = 4251528 * k + 1645384 := by
    unfold C
    simp [show (1417176 * k + 548461) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1645384) = 2125764 * k + 822692 := by
    unfold C
    simp [show (4251528 * k + 1645384) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 822692) = 1062882 * k + 411346 := by
    unfold C
    simp [show (2125764 * k + 822692) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 411346) = 531441 * k + 205673 := by
    unfold C
    simp [show (1062882 * k + 411346) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 405807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 405807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_406127 : ∀ k : Nat,
    iterate (1048576 * k + 406127) 32 = 531441 * k + 205835 ∧
      531441 * k + 205835 < 1048576 * k + 406127 := by
  intro k
  have h1 : C (1048576 * k + 406127) = 3145728 * k + 1218382 := by
    unfold C
    simp [show (1048576 * k + 406127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1218382) = 1572864 * k + 609191 := by
    unfold C
    simp [show (3145728 * k + 1218382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 609191) = 4718592 * k + 1827574 := by
    unfold C
    simp [show (1572864 * k + 609191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1827574) = 2359296 * k + 913787 := by
    unfold C
    simp [show (4718592 * k + 1827574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 913787) = 7077888 * k + 2741362 := by
    unfold C
    simp [show (2359296 * k + 913787) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2741362) = 3538944 * k + 1370681 := by
    unfold C
    simp [show (7077888 * k + 2741362) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1370681) = 10616832 * k + 4112044 := by
    unfold C
    simp [show (3538944 * k + 1370681) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4112044) = 5308416 * k + 2056022 := by
    unfold C
    simp [show (10616832 * k + 4112044) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2056022) = 2654208 * k + 1028011 := by
    unfold C
    simp [show (5308416 * k + 2056022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1028011) = 7962624 * k + 3084034 := by
    unfold C
    simp [show (2654208 * k + 1028011) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3084034) = 3981312 * k + 1542017 := by
    unfold C
    simp [show (7962624 * k + 3084034) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1542017) = 11943936 * k + 4626052 := by
    unfold C
    simp [show (3981312 * k + 1542017) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4626052) = 5971968 * k + 2313026 := by
    unfold C
    simp [show (11943936 * k + 4626052) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2313026) = 2985984 * k + 1156513 := by
    unfold C
    simp [show (5971968 * k + 2313026) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1156513) = 8957952 * k + 3469540 := by
    unfold C
    simp [show (2985984 * k + 1156513) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3469540) = 4478976 * k + 1734770 := by
    unfold C
    simp [show (8957952 * k + 3469540) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1734770) = 2239488 * k + 867385 := by
    unfold C
    simp [show (4478976 * k + 1734770) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 867385) = 6718464 * k + 2602156 := by
    unfold C
    simp [show (2239488 * k + 867385) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2602156) = 3359232 * k + 1301078 := by
    unfold C
    simp [show (6718464 * k + 2602156) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1301078) = 1679616 * k + 650539 := by
    unfold C
    simp [show (3359232 * k + 1301078) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 650539) = 5038848 * k + 1951618 := by
    unfold C
    simp [show (1679616 * k + 650539) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1951618) = 2519424 * k + 975809 := by
    unfold C
    simp [show (5038848 * k + 1951618) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 975809) = 7558272 * k + 2927428 := by
    unfold C
    simp [show (2519424 * k + 975809) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2927428) = 3779136 * k + 1463714 := by
    unfold C
    simp [show (7558272 * k + 2927428) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1463714) = 1889568 * k + 731857 := by
    unfold C
    simp [show (3779136 * k + 1463714) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 731857) = 5668704 * k + 2195572 := by
    unfold C
    simp [show (1889568 * k + 731857) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2195572) = 2834352 * k + 1097786 := by
    unfold C
    simp [show (5668704 * k + 2195572) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1097786) = 1417176 * k + 548893 := by
    unfold C
    simp [show (2834352 * k + 1097786) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 548893) = 4251528 * k + 1646680 := by
    unfold C
    simp [show (1417176 * k + 548893) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1646680) = 2125764 * k + 823340 := by
    unfold C
    simp [show (4251528 * k + 1646680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 823340) = 1062882 * k + 411670 := by
    unfold C
    simp [show (2125764 * k + 823340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 411670) = 531441 * k + 205835 := by
    unfold C
    simp [show (1062882 * k + 411670) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 406127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 406127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_406695 : ∀ k : Nat,
    iterate (1048576 * k + 406695) 32 = 531441 * k + 206123 ∧
      531441 * k + 206123 < 1048576 * k + 406695 := by
  intro k
  have h1 : C (1048576 * k + 406695) = 3145728 * k + 1220086 := by
    unfold C
    simp [show (1048576 * k + 406695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1220086) = 1572864 * k + 610043 := by
    unfold C
    simp [show (3145728 * k + 1220086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 610043) = 4718592 * k + 1830130 := by
    unfold C
    simp [show (1572864 * k + 610043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1830130) = 2359296 * k + 915065 := by
    unfold C
    simp [show (4718592 * k + 1830130) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 915065) = 7077888 * k + 2745196 := by
    unfold C
    simp [show (2359296 * k + 915065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2745196) = 3538944 * k + 1372598 := by
    unfold C
    simp [show (7077888 * k + 2745196) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1372598) = 1769472 * k + 686299 := by
    unfold C
    simp [show (3538944 * k + 1372598) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 686299) = 5308416 * k + 2058898 := by
    unfold C
    simp [show (1769472 * k + 686299) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2058898) = 2654208 * k + 1029449 := by
    unfold C
    simp [show (5308416 * k + 2058898) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1029449) = 7962624 * k + 3088348 := by
    unfold C
    simp [show (2654208 * k + 1029449) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3088348) = 3981312 * k + 1544174 := by
    unfold C
    simp [show (7962624 * k + 3088348) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1544174) = 1990656 * k + 772087 := by
    unfold C
    simp [show (3981312 * k + 1544174) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 772087) = 5971968 * k + 2316262 := by
    unfold C
    simp [show (1990656 * k + 772087) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2316262) = 2985984 * k + 1158131 := by
    unfold C
    simp [show (5971968 * k + 2316262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1158131) = 8957952 * k + 3474394 := by
    unfold C
    simp [show (2985984 * k + 1158131) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3474394) = 4478976 * k + 1737197 := by
    unfold C
    simp [show (8957952 * k + 3474394) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1737197) = 13436928 * k + 5211592 := by
    unfold C
    simp [show (4478976 * k + 1737197) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5211592) = 6718464 * k + 2605796 := by
    unfold C
    simp [show (13436928 * k + 5211592) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2605796) = 3359232 * k + 1302898 := by
    unfold C
    simp [show (6718464 * k + 2605796) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1302898) = 1679616 * k + 651449 := by
    unfold C
    simp [show (3359232 * k + 1302898) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 651449) = 5038848 * k + 1954348 := by
    unfold C
    simp [show (1679616 * k + 651449) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1954348) = 2519424 * k + 977174 := by
    unfold C
    simp [show (5038848 * k + 1954348) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 977174) = 1259712 * k + 488587 := by
    unfold C
    simp [show (2519424 * k + 977174) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 488587) = 3779136 * k + 1465762 := by
    unfold C
    simp [show (1259712 * k + 488587) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1465762) = 1889568 * k + 732881 := by
    unfold C
    simp [show (3779136 * k + 1465762) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 732881) = 5668704 * k + 2198644 := by
    unfold C
    simp [show (1889568 * k + 732881) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2198644) = 2834352 * k + 1099322 := by
    unfold C
    simp [show (5668704 * k + 2198644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1099322) = 1417176 * k + 549661 := by
    unfold C
    simp [show (2834352 * k + 1099322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 549661) = 4251528 * k + 1648984 := by
    unfold C
    simp [show (1417176 * k + 549661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1648984) = 2125764 * k + 824492 := by
    unfold C
    simp [show (4251528 * k + 1648984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 824492) = 1062882 * k + 412246 := by
    unfold C
    simp [show (2125764 * k + 824492) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 412246) = 531441 * k + 206123 := by
    unfold C
    simp [show (1062882 * k + 412246) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 406695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 406695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_406855 : ∀ k : Nat,
    iterate (1048576 * k + 406855) 32 = 531441 * k + 206204 ∧
      531441 * k + 206204 < 1048576 * k + 406855 := by
  intro k
  have h1 : C (1048576 * k + 406855) = 3145728 * k + 1220566 := by
    unfold C
    simp [show (1048576 * k + 406855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1220566) = 1572864 * k + 610283 := by
    unfold C
    simp [show (3145728 * k + 1220566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 610283) = 4718592 * k + 1830850 := by
    unfold C
    simp [show (1572864 * k + 610283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1830850) = 2359296 * k + 915425 := by
    unfold C
    simp [show (4718592 * k + 1830850) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 915425) = 7077888 * k + 2746276 := by
    unfold C
    simp [show (2359296 * k + 915425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2746276) = 3538944 * k + 1373138 := by
    unfold C
    simp [show (7077888 * k + 2746276) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1373138) = 1769472 * k + 686569 := by
    unfold C
    simp [show (3538944 * k + 1373138) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 686569) = 5308416 * k + 2059708 := by
    unfold C
    simp [show (1769472 * k + 686569) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2059708) = 2654208 * k + 1029854 := by
    unfold C
    simp [show (5308416 * k + 2059708) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1029854) = 1327104 * k + 514927 := by
    unfold C
    simp [show (2654208 * k + 1029854) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 514927) = 3981312 * k + 1544782 := by
    unfold C
    simp [show (1327104 * k + 514927) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1544782) = 1990656 * k + 772391 := by
    unfold C
    simp [show (3981312 * k + 1544782) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 772391) = 5971968 * k + 2317174 := by
    unfold C
    simp [show (1990656 * k + 772391) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2317174) = 2985984 * k + 1158587 := by
    unfold C
    simp [show (5971968 * k + 2317174) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1158587) = 8957952 * k + 3475762 := by
    unfold C
    simp [show (2985984 * k + 1158587) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3475762) = 4478976 * k + 1737881 := by
    unfold C
    simp [show (8957952 * k + 3475762) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1737881) = 13436928 * k + 5213644 := by
    unfold C
    simp [show (4478976 * k + 1737881) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5213644) = 6718464 * k + 2606822 := by
    unfold C
    simp [show (13436928 * k + 5213644) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2606822) = 3359232 * k + 1303411 := by
    unfold C
    simp [show (6718464 * k + 2606822) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1303411) = 10077696 * k + 3910234 := by
    unfold C
    simp [show (3359232 * k + 1303411) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3910234) = 5038848 * k + 1955117 := by
    unfold C
    simp [show (10077696 * k + 3910234) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1955117) = 15116544 * k + 5865352 := by
    unfold C
    simp [show (5038848 * k + 1955117) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5865352) = 7558272 * k + 2932676 := by
    unfold C
    simp [show (15116544 * k + 5865352) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2932676) = 3779136 * k + 1466338 := by
    unfold C
    simp [show (7558272 * k + 2932676) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1466338) = 1889568 * k + 733169 := by
    unfold C
    simp [show (3779136 * k + 1466338) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 733169) = 5668704 * k + 2199508 := by
    unfold C
    simp [show (1889568 * k + 733169) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2199508) = 2834352 * k + 1099754 := by
    unfold C
    simp [show (5668704 * k + 2199508) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1099754) = 1417176 * k + 549877 := by
    unfold C
    simp [show (2834352 * k + 1099754) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 549877) = 4251528 * k + 1649632 := by
    unfold C
    simp [show (1417176 * k + 549877) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1649632) = 2125764 * k + 824816 := by
    unfold C
    simp [show (4251528 * k + 1649632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 824816) = 1062882 * k + 412408 := by
    unfold C
    simp [show (2125764 * k + 824816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 412408) = 531441 * k + 206204 := by
    unfold C
    simp [show (1062882 * k + 412408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 406855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 406855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_407463 : ∀ k : Nat,
    iterate (1048576 * k + 407463) 32 = 531441 * k + 206512 ∧
      531441 * k + 206512 < 1048576 * k + 407463 := by
  intro k
  have h1 : C (1048576 * k + 407463) = 3145728 * k + 1222390 := by
    unfold C
    simp [show (1048576 * k + 407463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1222390) = 1572864 * k + 611195 := by
    unfold C
    simp [show (3145728 * k + 1222390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 611195) = 4718592 * k + 1833586 := by
    unfold C
    simp [show (1572864 * k + 611195) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1833586) = 2359296 * k + 916793 := by
    unfold C
    simp [show (4718592 * k + 1833586) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 916793) = 7077888 * k + 2750380 := by
    unfold C
    simp [show (2359296 * k + 916793) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2750380) = 3538944 * k + 1375190 := by
    unfold C
    simp [show (7077888 * k + 2750380) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1375190) = 1769472 * k + 687595 := by
    unfold C
    simp [show (3538944 * k + 1375190) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 687595) = 5308416 * k + 2062786 := by
    unfold C
    simp [show (1769472 * k + 687595) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2062786) = 2654208 * k + 1031393 := by
    unfold C
    simp [show (5308416 * k + 2062786) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1031393) = 7962624 * k + 3094180 := by
    unfold C
    simp [show (2654208 * k + 1031393) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3094180) = 3981312 * k + 1547090 := by
    unfold C
    simp [show (7962624 * k + 3094180) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1547090) = 1990656 * k + 773545 := by
    unfold C
    simp [show (3981312 * k + 1547090) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 773545) = 5971968 * k + 2320636 := by
    unfold C
    simp [show (1990656 * k + 773545) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2320636) = 2985984 * k + 1160318 := by
    unfold C
    simp [show (5971968 * k + 2320636) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1160318) = 1492992 * k + 580159 := by
    unfold C
    simp [show (2985984 * k + 1160318) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 580159) = 4478976 * k + 1740478 := by
    unfold C
    simp [show (1492992 * k + 580159) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1740478) = 2239488 * k + 870239 := by
    unfold C
    simp [show (4478976 * k + 1740478) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 870239) = 6718464 * k + 2610718 := by
    unfold C
    simp [show (2239488 * k + 870239) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2610718) = 3359232 * k + 1305359 := by
    unfold C
    simp [show (6718464 * k + 2610718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1305359) = 10077696 * k + 3916078 := by
    unfold C
    simp [show (3359232 * k + 1305359) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3916078) = 5038848 * k + 1958039 := by
    unfold C
    simp [show (10077696 * k + 3916078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1958039) = 15116544 * k + 5874118 := by
    unfold C
    simp [show (5038848 * k + 1958039) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5874118) = 7558272 * k + 2937059 := by
    unfold C
    simp [show (15116544 * k + 5874118) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2937059) = 22674816 * k + 8811178 := by
    unfold C
    simp [show (7558272 * k + 2937059) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8811178) = 11337408 * k + 4405589 := by
    unfold C
    simp [show (22674816 * k + 8811178) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4405589) = 34012224 * k + 13216768 := by
    unfold C
    simp [show (11337408 * k + 4405589) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 13216768) = 17006112 * k + 6608384 := by
    unfold C
    simp [show (34012224 * k + 13216768) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6608384) = 8503056 * k + 3304192 := by
    unfold C
    simp [show (17006112 * k + 6608384) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3304192) = 4251528 * k + 1652096 := by
    unfold C
    simp [show (8503056 * k + 3304192) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1652096) = 2125764 * k + 826048 := by
    unfold C
    simp [show (4251528 * k + 1652096) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 826048) = 1062882 * k + 413024 := by
    unfold C
    simp [show (2125764 * k + 826048) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 413024) = 531441 * k + 206512 := by
    unfold C
    simp [show (1062882 * k + 413024) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 407463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 407463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_407547 : ∀ k : Nat,
    iterate (1048576 * k + 407547) 32 = 531441 * k + 206555 ∧
      531441 * k + 206555 < 1048576 * k + 407547 := by
  intro k
  have h1 : C (1048576 * k + 407547) = 3145728 * k + 1222642 := by
    unfold C
    simp [show (1048576 * k + 407547) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1222642) = 1572864 * k + 611321 := by
    unfold C
    simp [show (3145728 * k + 1222642) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 611321) = 4718592 * k + 1833964 := by
    unfold C
    simp [show (1572864 * k + 611321) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1833964) = 2359296 * k + 916982 := by
    unfold C
    simp [show (4718592 * k + 1833964) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 916982) = 1179648 * k + 458491 := by
    unfold C
    simp [show (2359296 * k + 916982) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 458491) = 3538944 * k + 1375474 := by
    unfold C
    simp [show (1179648 * k + 458491) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1375474) = 1769472 * k + 687737 := by
    unfold C
    simp [show (3538944 * k + 1375474) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 687737) = 5308416 * k + 2063212 := by
    unfold C
    simp [show (1769472 * k + 687737) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2063212) = 2654208 * k + 1031606 := by
    unfold C
    simp [show (5308416 * k + 2063212) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1031606) = 1327104 * k + 515803 := by
    unfold C
    simp [show (2654208 * k + 1031606) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 515803) = 3981312 * k + 1547410 := by
    unfold C
    simp [show (1327104 * k + 515803) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1547410) = 1990656 * k + 773705 := by
    unfold C
    simp [show (3981312 * k + 1547410) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 773705) = 5971968 * k + 2321116 := by
    unfold C
    simp [show (1990656 * k + 773705) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2321116) = 2985984 * k + 1160558 := by
    unfold C
    simp [show (5971968 * k + 2321116) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1160558) = 1492992 * k + 580279 := by
    unfold C
    simp [show (2985984 * k + 1160558) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 580279) = 4478976 * k + 1740838 := by
    unfold C
    simp [show (1492992 * k + 580279) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1740838) = 2239488 * k + 870419 := by
    unfold C
    simp [show (4478976 * k + 1740838) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 870419) = 6718464 * k + 2611258 := by
    unfold C
    simp [show (2239488 * k + 870419) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2611258) = 3359232 * k + 1305629 := by
    unfold C
    simp [show (6718464 * k + 2611258) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1305629) = 10077696 * k + 3916888 := by
    unfold C
    simp [show (3359232 * k + 1305629) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3916888) = 5038848 * k + 1958444 := by
    unfold C
    simp [show (10077696 * k + 3916888) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1958444) = 2519424 * k + 979222 := by
    unfold C
    simp [show (5038848 * k + 1958444) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 979222) = 1259712 * k + 489611 := by
    unfold C
    simp [show (2519424 * k + 979222) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 489611) = 3779136 * k + 1468834 := by
    unfold C
    simp [show (1259712 * k + 489611) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1468834) = 1889568 * k + 734417 := by
    unfold C
    simp [show (3779136 * k + 1468834) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 734417) = 5668704 * k + 2203252 := by
    unfold C
    simp [show (1889568 * k + 734417) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2203252) = 2834352 * k + 1101626 := by
    unfold C
    simp [show (5668704 * k + 2203252) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1101626) = 1417176 * k + 550813 := by
    unfold C
    simp [show (2834352 * k + 1101626) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 550813) = 4251528 * k + 1652440 := by
    unfold C
    simp [show (1417176 * k + 550813) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1652440) = 2125764 * k + 826220 := by
    unfold C
    simp [show (4251528 * k + 1652440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 826220) = 1062882 * k + 413110 := by
    unfold C
    simp [show (2125764 * k + 826220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 413110) = 531441 * k + 206555 := by
    unfold C
    simp [show (1062882 * k + 413110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 407547) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 407547)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard051
