import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard016

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_106523 : ∀ k : Nat,
    iterate (1048576 * k + 106523) 32 = 531441 * k + 53989 ∧
      531441 * k + 53989 < 1048576 * k + 106523 := by
  intro k
  have h1 : C (1048576 * k + 106523) = 3145728 * k + 319570 := by
    unfold C
    simp [show (1048576 * k + 106523) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 319570) = 1572864 * k + 159785 := by
    unfold C
    simp [show (3145728 * k + 319570) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 159785) = 4718592 * k + 479356 := by
    unfold C
    simp [show (1572864 * k + 159785) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 479356) = 2359296 * k + 239678 := by
    unfold C
    simp [show (4718592 * k + 479356) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 239678) = 1179648 * k + 119839 := by
    unfold C
    simp [show (2359296 * k + 239678) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 119839) = 3538944 * k + 359518 := by
    unfold C
    simp [show (1179648 * k + 119839) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 359518) = 1769472 * k + 179759 := by
    unfold C
    simp [show (3538944 * k + 359518) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 179759) = 5308416 * k + 539278 := by
    unfold C
    simp [show (1769472 * k + 179759) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 539278) = 2654208 * k + 269639 := by
    unfold C
    simp [show (5308416 * k + 539278) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 269639) = 7962624 * k + 808918 := by
    unfold C
    simp [show (2654208 * k + 269639) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 808918) = 3981312 * k + 404459 := by
    unfold C
    simp [show (7962624 * k + 808918) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 404459) = 11943936 * k + 1213378 := by
    unfold C
    simp [show (3981312 * k + 404459) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1213378) = 5971968 * k + 606689 := by
    unfold C
    simp [show (11943936 * k + 1213378) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 606689) = 17915904 * k + 1820068 := by
    unfold C
    simp [show (5971968 * k + 606689) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1820068) = 8957952 * k + 910034 := by
    unfold C
    simp [show (17915904 * k + 1820068) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 910034) = 4478976 * k + 455017 := by
    unfold C
    simp [show (8957952 * k + 910034) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 455017) = 13436928 * k + 1365052 := by
    unfold C
    simp [show (4478976 * k + 455017) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1365052) = 6718464 * k + 682526 := by
    unfold C
    simp [show (13436928 * k + 1365052) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 682526) = 3359232 * k + 341263 := by
    unfold C
    simp [show (6718464 * k + 682526) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 341263) = 10077696 * k + 1023790 := by
    unfold C
    simp [show (3359232 * k + 341263) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1023790) = 5038848 * k + 511895 := by
    unfold C
    simp [show (10077696 * k + 1023790) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 511895) = 15116544 * k + 1535686 := by
    unfold C
    simp [show (5038848 * k + 511895) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1535686) = 7558272 * k + 767843 := by
    unfold C
    simp [show (15116544 * k + 1535686) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 767843) = 22674816 * k + 2303530 := by
    unfold C
    simp [show (7558272 * k + 767843) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2303530) = 11337408 * k + 1151765 := by
    unfold C
    simp [show (22674816 * k + 2303530) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1151765) = 34012224 * k + 3455296 := by
    unfold C
    simp [show (11337408 * k + 1151765) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 3455296) = 17006112 * k + 1727648 := by
    unfold C
    simp [show (34012224 * k + 3455296) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 1727648) = 8503056 * k + 863824 := by
    unfold C
    simp [show (17006112 * k + 1727648) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 863824) = 4251528 * k + 431912 := by
    unfold C
    simp [show (8503056 * k + 863824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 431912) = 2125764 * k + 215956 := by
    unfold C
    simp [show (4251528 * k + 431912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 215956) = 1062882 * k + 107978 := by
    unfold C
    simp [show (2125764 * k + 215956) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 107978) = 531441 * k + 53989 := by
    unfold C
    simp [show (1062882 * k + 107978) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 106523) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 106523)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_107135 : ∀ k : Nat,
    iterate (1048576 * k + 107135) 32 = 531441 * k + 54299 ∧
      531441 * k + 54299 < 1048576 * k + 107135 := by
  intro k
  have h1 : C (1048576 * k + 107135) = 3145728 * k + 321406 := by
    unfold C
    simp [show (1048576 * k + 107135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 321406) = 1572864 * k + 160703 := by
    unfold C
    simp [show (3145728 * k + 321406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 160703) = 4718592 * k + 482110 := by
    unfold C
    simp [show (1572864 * k + 160703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 482110) = 2359296 * k + 241055 := by
    unfold C
    simp [show (4718592 * k + 482110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 241055) = 7077888 * k + 723166 := by
    unfold C
    simp [show (2359296 * k + 241055) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 723166) = 3538944 * k + 361583 := by
    unfold C
    simp [show (7077888 * k + 723166) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 361583) = 10616832 * k + 1084750 := by
    unfold C
    simp [show (3538944 * k + 361583) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1084750) = 5308416 * k + 542375 := by
    unfold C
    simp [show (10616832 * k + 1084750) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 542375) = 15925248 * k + 1627126 := by
    unfold C
    simp [show (5308416 * k + 542375) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1627126) = 7962624 * k + 813563 := by
    unfold C
    simp [show (15925248 * k + 1627126) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 813563) = 23887872 * k + 2440690 := by
    unfold C
    simp [show (7962624 * k + 813563) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2440690) = 11943936 * k + 1220345 := by
    unfold C
    simp [show (23887872 * k + 2440690) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1220345) = 35831808 * k + 3661036 := by
    unfold C
    simp [show (11943936 * k + 1220345) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3661036) = 17915904 * k + 1830518 := by
    unfold C
    simp [show (35831808 * k + 3661036) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1830518) = 8957952 * k + 915259 := by
    unfold C
    simp [show (17915904 * k + 1830518) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 915259) = 26873856 * k + 2745778 := by
    unfold C
    simp [show (8957952 * k + 915259) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2745778) = 13436928 * k + 1372889 := by
    unfold C
    simp [show (26873856 * k + 2745778) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1372889) = 40310784 * k + 4118668 := by
    unfold C
    simp [show (13436928 * k + 1372889) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 4118668) = 20155392 * k + 2059334 := by
    unfold C
    simp [show (40310784 * k + 4118668) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2059334) = 10077696 * k + 1029667 := by
    unfold C
    simp [show (20155392 * k + 2059334) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1029667) = 30233088 * k + 3089002 := by
    unfold C
    simp [show (10077696 * k + 1029667) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3089002) = 15116544 * k + 1544501 := by
    unfold C
    simp [show (30233088 * k + 3089002) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1544501) = 45349632 * k + 4633504 := by
    unfold C
    simp [show (15116544 * k + 1544501) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 4633504) = 22674816 * k + 2316752 := by
    unfold C
    simp [show (45349632 * k + 4633504) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2316752) = 11337408 * k + 1158376 := by
    unfold C
    simp [show (22674816 * k + 2316752) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1158376) = 5668704 * k + 579188 := by
    unfold C
    simp [show (11337408 * k + 1158376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 579188) = 2834352 * k + 289594 := by
    unfold C
    simp [show (5668704 * k + 579188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 289594) = 1417176 * k + 144797 := by
    unfold C
    simp [show (2834352 * k + 289594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 144797) = 4251528 * k + 434392 := by
    unfold C
    simp [show (1417176 * k + 144797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 434392) = 2125764 * k + 217196 := by
    unfold C
    simp [show (4251528 * k + 434392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 217196) = 1062882 * k + 108598 := by
    unfold C
    simp [show (2125764 * k + 217196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 108598) = 531441 * k + 54299 := by
    unfold C
    simp [show (1062882 * k + 108598) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 107135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 107135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_107999 : ∀ k : Nat,
    iterate (1048576 * k + 107999) 32 = 531441 * k + 54737 ∧
      531441 * k + 54737 < 1048576 * k + 107999 := by
  intro k
  have h1 : C (1048576 * k + 107999) = 3145728 * k + 323998 := by
    unfold C
    simp [show (1048576 * k + 107999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 323998) = 1572864 * k + 161999 := by
    unfold C
    simp [show (3145728 * k + 323998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 161999) = 4718592 * k + 485998 := by
    unfold C
    simp [show (1572864 * k + 161999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 485998) = 2359296 * k + 242999 := by
    unfold C
    simp [show (4718592 * k + 485998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 242999) = 7077888 * k + 728998 := by
    unfold C
    simp [show (2359296 * k + 242999) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 728998) = 3538944 * k + 364499 := by
    unfold C
    simp [show (7077888 * k + 728998) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 364499) = 10616832 * k + 1093498 := by
    unfold C
    simp [show (3538944 * k + 364499) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1093498) = 5308416 * k + 546749 := by
    unfold C
    simp [show (10616832 * k + 1093498) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 546749) = 15925248 * k + 1640248 := by
    unfold C
    simp [show (5308416 * k + 546749) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1640248) = 7962624 * k + 820124 := by
    unfold C
    simp [show (15925248 * k + 1640248) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 820124) = 3981312 * k + 410062 := by
    unfold C
    simp [show (7962624 * k + 820124) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 410062) = 1990656 * k + 205031 := by
    unfold C
    simp [show (3981312 * k + 410062) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 205031) = 5971968 * k + 615094 := by
    unfold C
    simp [show (1990656 * k + 205031) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 615094) = 2985984 * k + 307547 := by
    unfold C
    simp [show (5971968 * k + 615094) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 307547) = 8957952 * k + 922642 := by
    unfold C
    simp [show (2985984 * k + 307547) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 922642) = 4478976 * k + 461321 := by
    unfold C
    simp [show (8957952 * k + 922642) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 461321) = 13436928 * k + 1383964 := by
    unfold C
    simp [show (4478976 * k + 461321) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1383964) = 6718464 * k + 691982 := by
    unfold C
    simp [show (13436928 * k + 1383964) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 691982) = 3359232 * k + 345991 := by
    unfold C
    simp [show (6718464 * k + 691982) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 345991) = 10077696 * k + 1037974 := by
    unfold C
    simp [show (3359232 * k + 345991) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1037974) = 5038848 * k + 518987 := by
    unfold C
    simp [show (10077696 * k + 1037974) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 518987) = 15116544 * k + 1556962 := by
    unfold C
    simp [show (5038848 * k + 518987) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1556962) = 7558272 * k + 778481 := by
    unfold C
    simp [show (15116544 * k + 1556962) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 778481) = 22674816 * k + 2335444 := by
    unfold C
    simp [show (7558272 * k + 778481) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2335444) = 11337408 * k + 1167722 := by
    unfold C
    simp [show (22674816 * k + 2335444) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1167722) = 5668704 * k + 583861 := by
    unfold C
    simp [show (11337408 * k + 1167722) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 583861) = 17006112 * k + 1751584 := by
    unfold C
    simp [show (5668704 * k + 583861) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1751584) = 8503056 * k + 875792 := by
    unfold C
    simp [show (17006112 * k + 1751584) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 875792) = 4251528 * k + 437896 := by
    unfold C
    simp [show (8503056 * k + 875792) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 437896) = 2125764 * k + 218948 := by
    unfold C
    simp [show (4251528 * k + 437896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 218948) = 1062882 * k + 109474 := by
    unfold C
    simp [show (2125764 * k + 218948) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 109474) = 531441 * k + 54737 := by
    unfold C
    simp [show (1062882 * k + 109474) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 107999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 107999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_108135 : ∀ k : Nat,
    iterate (1048576 * k + 108135) 32 = 531441 * k + 54806 ∧
      531441 * k + 54806 < 1048576 * k + 108135 := by
  intro k
  have h1 : C (1048576 * k + 108135) = 3145728 * k + 324406 := by
    unfold C
    simp [show (1048576 * k + 108135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 324406) = 1572864 * k + 162203 := by
    unfold C
    simp [show (3145728 * k + 324406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 162203) = 4718592 * k + 486610 := by
    unfold C
    simp [show (1572864 * k + 162203) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 486610) = 2359296 * k + 243305 := by
    unfold C
    simp [show (4718592 * k + 486610) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 243305) = 7077888 * k + 729916 := by
    unfold C
    simp [show (2359296 * k + 243305) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 729916) = 3538944 * k + 364958 := by
    unfold C
    simp [show (7077888 * k + 729916) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 364958) = 1769472 * k + 182479 := by
    unfold C
    simp [show (3538944 * k + 364958) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 182479) = 5308416 * k + 547438 := by
    unfold C
    simp [show (1769472 * k + 182479) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 547438) = 2654208 * k + 273719 := by
    unfold C
    simp [show (5308416 * k + 547438) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 273719) = 7962624 * k + 821158 := by
    unfold C
    simp [show (2654208 * k + 273719) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 821158) = 3981312 * k + 410579 := by
    unfold C
    simp [show (7962624 * k + 821158) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 410579) = 11943936 * k + 1231738 := by
    unfold C
    simp [show (3981312 * k + 410579) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1231738) = 5971968 * k + 615869 := by
    unfold C
    simp [show (11943936 * k + 1231738) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 615869) = 17915904 * k + 1847608 := by
    unfold C
    simp [show (5971968 * k + 615869) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1847608) = 8957952 * k + 923804 := by
    unfold C
    simp [show (17915904 * k + 1847608) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 923804) = 4478976 * k + 461902 := by
    unfold C
    simp [show (8957952 * k + 923804) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 461902) = 2239488 * k + 230951 := by
    unfold C
    simp [show (4478976 * k + 461902) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 230951) = 6718464 * k + 692854 := by
    unfold C
    simp [show (2239488 * k + 230951) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 692854) = 3359232 * k + 346427 := by
    unfold C
    simp [show (6718464 * k + 692854) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 346427) = 10077696 * k + 1039282 := by
    unfold C
    simp [show (3359232 * k + 346427) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1039282) = 5038848 * k + 519641 := by
    unfold C
    simp [show (10077696 * k + 1039282) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 519641) = 15116544 * k + 1558924 := by
    unfold C
    simp [show (5038848 * k + 519641) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1558924) = 7558272 * k + 779462 := by
    unfold C
    simp [show (15116544 * k + 1558924) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 779462) = 3779136 * k + 389731 := by
    unfold C
    simp [show (7558272 * k + 779462) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 389731) = 11337408 * k + 1169194 := by
    unfold C
    simp [show (3779136 * k + 389731) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1169194) = 5668704 * k + 584597 := by
    unfold C
    simp [show (11337408 * k + 1169194) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 584597) = 17006112 * k + 1753792 := by
    unfold C
    simp [show (5668704 * k + 584597) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1753792) = 8503056 * k + 876896 := by
    unfold C
    simp [show (17006112 * k + 1753792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 876896) = 4251528 * k + 438448 := by
    unfold C
    simp [show (8503056 * k + 876896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 438448) = 2125764 * k + 219224 := by
    unfold C
    simp [show (4251528 * k + 438448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 219224) = 1062882 * k + 109612 := by
    unfold C
    simp [show (2125764 * k + 219224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 109612) = 531441 * k + 54806 := by
    unfold C
    simp [show (1062882 * k + 109612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 108135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 108135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_108271 : ∀ k : Nat,
    iterate (1048576 * k + 108271) 32 = 531441 * k + 54875 ∧
      531441 * k + 54875 < 1048576 * k + 108271 := by
  intro k
  have h1 : C (1048576 * k + 108271) = 3145728 * k + 324814 := by
    unfold C
    simp [show (1048576 * k + 108271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 324814) = 1572864 * k + 162407 := by
    unfold C
    simp [show (3145728 * k + 324814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 162407) = 4718592 * k + 487222 := by
    unfold C
    simp [show (1572864 * k + 162407) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 487222) = 2359296 * k + 243611 := by
    unfold C
    simp [show (4718592 * k + 487222) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 243611) = 7077888 * k + 730834 := by
    unfold C
    simp [show (2359296 * k + 243611) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 730834) = 3538944 * k + 365417 := by
    unfold C
    simp [show (7077888 * k + 730834) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 365417) = 10616832 * k + 1096252 := by
    unfold C
    simp [show (3538944 * k + 365417) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1096252) = 5308416 * k + 548126 := by
    unfold C
    simp [show (10616832 * k + 1096252) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 548126) = 2654208 * k + 274063 := by
    unfold C
    simp [show (5308416 * k + 548126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 274063) = 7962624 * k + 822190 := by
    unfold C
    simp [show (2654208 * k + 274063) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 822190) = 3981312 * k + 411095 := by
    unfold C
    simp [show (7962624 * k + 822190) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 411095) = 11943936 * k + 1233286 := by
    unfold C
    simp [show (3981312 * k + 411095) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1233286) = 5971968 * k + 616643 := by
    unfold C
    simp [show (11943936 * k + 1233286) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 616643) = 17915904 * k + 1849930 := by
    unfold C
    simp [show (5971968 * k + 616643) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1849930) = 8957952 * k + 924965 := by
    unfold C
    simp [show (17915904 * k + 1849930) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 924965) = 26873856 * k + 2774896 := by
    unfold C
    simp [show (8957952 * k + 924965) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2774896) = 13436928 * k + 1387448 := by
    unfold C
    simp [show (26873856 * k + 2774896) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1387448) = 6718464 * k + 693724 := by
    unfold C
    simp [show (13436928 * k + 1387448) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 693724) = 3359232 * k + 346862 := by
    unfold C
    simp [show (6718464 * k + 693724) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 346862) = 1679616 * k + 173431 := by
    unfold C
    simp [show (3359232 * k + 346862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 173431) = 5038848 * k + 520294 := by
    unfold C
    simp [show (1679616 * k + 173431) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 520294) = 2519424 * k + 260147 := by
    unfold C
    simp [show (5038848 * k + 520294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 260147) = 7558272 * k + 780442 := by
    unfold C
    simp [show (2519424 * k + 260147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 780442) = 3779136 * k + 390221 := by
    unfold C
    simp [show (7558272 * k + 780442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 390221) = 11337408 * k + 1170664 := by
    unfold C
    simp [show (3779136 * k + 390221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1170664) = 5668704 * k + 585332 := by
    unfold C
    simp [show (11337408 * k + 1170664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 585332) = 2834352 * k + 292666 := by
    unfold C
    simp [show (5668704 * k + 585332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 292666) = 1417176 * k + 146333 := by
    unfold C
    simp [show (2834352 * k + 292666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 146333) = 4251528 * k + 439000 := by
    unfold C
    simp [show (1417176 * k + 146333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 439000) = 2125764 * k + 219500 := by
    unfold C
    simp [show (4251528 * k + 439000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 219500) = 1062882 * k + 109750 := by
    unfold C
    simp [show (2125764 * k + 219500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 109750) = 531441 * k + 54875 := by
    unfold C
    simp [show (1062882 * k + 109750) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 108271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 108271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_108863 : ∀ k : Nat,
    iterate (1048576 * k + 108863) 32 = 531441 * k + 55175 ∧
      531441 * k + 55175 < 1048576 * k + 108863 := by
  intro k
  have h1 : C (1048576 * k + 108863) = 3145728 * k + 326590 := by
    unfold C
    simp [show (1048576 * k + 108863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 326590) = 1572864 * k + 163295 := by
    unfold C
    simp [show (3145728 * k + 326590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 163295) = 4718592 * k + 489886 := by
    unfold C
    simp [show (1572864 * k + 163295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 489886) = 2359296 * k + 244943 := by
    unfold C
    simp [show (4718592 * k + 489886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 244943) = 7077888 * k + 734830 := by
    unfold C
    simp [show (2359296 * k + 244943) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 734830) = 3538944 * k + 367415 := by
    unfold C
    simp [show (7077888 * k + 734830) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 367415) = 10616832 * k + 1102246 := by
    unfold C
    simp [show (3538944 * k + 367415) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1102246) = 5308416 * k + 551123 := by
    unfold C
    simp [show (10616832 * k + 1102246) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 551123) = 15925248 * k + 1653370 := by
    unfold C
    simp [show (5308416 * k + 551123) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1653370) = 7962624 * k + 826685 := by
    unfold C
    simp [show (15925248 * k + 1653370) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 826685) = 23887872 * k + 2480056 := by
    unfold C
    simp [show (7962624 * k + 826685) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2480056) = 11943936 * k + 1240028 := by
    unfold C
    simp [show (23887872 * k + 2480056) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1240028) = 5971968 * k + 620014 := by
    unfold C
    simp [show (11943936 * k + 1240028) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 620014) = 2985984 * k + 310007 := by
    unfold C
    simp [show (5971968 * k + 620014) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 310007) = 8957952 * k + 930022 := by
    unfold C
    simp [show (2985984 * k + 310007) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 930022) = 4478976 * k + 465011 := by
    unfold C
    simp [show (8957952 * k + 930022) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 465011) = 13436928 * k + 1395034 := by
    unfold C
    simp [show (4478976 * k + 465011) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1395034) = 6718464 * k + 697517 := by
    unfold C
    simp [show (13436928 * k + 1395034) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 697517) = 20155392 * k + 2092552 := by
    unfold C
    simp [show (6718464 * k + 697517) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2092552) = 10077696 * k + 1046276 := by
    unfold C
    simp [show (20155392 * k + 2092552) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1046276) = 5038848 * k + 523138 := by
    unfold C
    simp [show (10077696 * k + 1046276) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 523138) = 2519424 * k + 261569 := by
    unfold C
    simp [show (5038848 * k + 523138) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 261569) = 7558272 * k + 784708 := by
    unfold C
    simp [show (2519424 * k + 261569) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 784708) = 3779136 * k + 392354 := by
    unfold C
    simp [show (7558272 * k + 784708) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 392354) = 1889568 * k + 196177 := by
    unfold C
    simp [show (3779136 * k + 392354) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 196177) = 5668704 * k + 588532 := by
    unfold C
    simp [show (1889568 * k + 196177) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 588532) = 2834352 * k + 294266 := by
    unfold C
    simp [show (5668704 * k + 588532) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 294266) = 1417176 * k + 147133 := by
    unfold C
    simp [show (2834352 * k + 294266) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 147133) = 4251528 * k + 441400 := by
    unfold C
    simp [show (1417176 * k + 147133) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 441400) = 2125764 * k + 220700 := by
    unfold C
    simp [show (4251528 * k + 441400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 220700) = 1062882 * k + 110350 := by
    unfold C
    simp [show (2125764 * k + 220700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 110350) = 531441 * k + 55175 := by
    unfold C
    simp [show (1062882 * k + 110350) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 108863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 108863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_109183 : ∀ k : Nat,
    iterate (1048576 * k + 109183) 32 = 531441 * k + 55337 ∧
      531441 * k + 55337 < 1048576 * k + 109183 := by
  intro k
  have h1 : C (1048576 * k + 109183) = 3145728 * k + 327550 := by
    unfold C
    simp [show (1048576 * k + 109183) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 327550) = 1572864 * k + 163775 := by
    unfold C
    simp [show (3145728 * k + 327550) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 163775) = 4718592 * k + 491326 := by
    unfold C
    simp [show (1572864 * k + 163775) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 491326) = 2359296 * k + 245663 := by
    unfold C
    simp [show (4718592 * k + 491326) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 245663) = 7077888 * k + 736990 := by
    unfold C
    simp [show (2359296 * k + 245663) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 736990) = 3538944 * k + 368495 := by
    unfold C
    simp [show (7077888 * k + 736990) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 368495) = 10616832 * k + 1105486 := by
    unfold C
    simp [show (3538944 * k + 368495) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1105486) = 5308416 * k + 552743 := by
    unfold C
    simp [show (10616832 * k + 1105486) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 552743) = 15925248 * k + 1658230 := by
    unfold C
    simp [show (5308416 * k + 552743) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1658230) = 7962624 * k + 829115 := by
    unfold C
    simp [show (15925248 * k + 1658230) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 829115) = 23887872 * k + 2487346 := by
    unfold C
    simp [show (7962624 * k + 829115) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2487346) = 11943936 * k + 1243673 := by
    unfold C
    simp [show (23887872 * k + 2487346) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1243673) = 35831808 * k + 3731020 := by
    unfold C
    simp [show (11943936 * k + 1243673) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3731020) = 17915904 * k + 1865510 := by
    unfold C
    simp [show (35831808 * k + 3731020) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1865510) = 8957952 * k + 932755 := by
    unfold C
    simp [show (17915904 * k + 1865510) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 932755) = 26873856 * k + 2798266 := by
    unfold C
    simp [show (8957952 * k + 932755) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2798266) = 13436928 * k + 1399133 := by
    unfold C
    simp [show (26873856 * k + 2798266) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1399133) = 40310784 * k + 4197400 := by
    unfold C
    simp [show (13436928 * k + 1399133) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 4197400) = 20155392 * k + 2098700 := by
    unfold C
    simp [show (40310784 * k + 4197400) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2098700) = 10077696 * k + 1049350 := by
    unfold C
    simp [show (20155392 * k + 2098700) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1049350) = 5038848 * k + 524675 := by
    unfold C
    simp [show (10077696 * k + 1049350) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 524675) = 15116544 * k + 1574026 := by
    unfold C
    simp [show (5038848 * k + 524675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1574026) = 7558272 * k + 787013 := by
    unfold C
    simp [show (15116544 * k + 1574026) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 787013) = 22674816 * k + 2361040 := by
    unfold C
    simp [show (7558272 * k + 787013) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2361040) = 11337408 * k + 1180520 := by
    unfold C
    simp [show (22674816 * k + 2361040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1180520) = 5668704 * k + 590260 := by
    unfold C
    simp [show (11337408 * k + 1180520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 590260) = 2834352 * k + 295130 := by
    unfold C
    simp [show (5668704 * k + 590260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 295130) = 1417176 * k + 147565 := by
    unfold C
    simp [show (2834352 * k + 295130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 147565) = 4251528 * k + 442696 := by
    unfold C
    simp [show (1417176 * k + 147565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 442696) = 2125764 * k + 221348 := by
    unfold C
    simp [show (4251528 * k + 442696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 221348) = 1062882 * k + 110674 := by
    unfold C
    simp [show (2125764 * k + 221348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 110674) = 531441 * k + 55337 := by
    unfold C
    simp [show (1062882 * k + 110674) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 109183) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 109183)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_109595 : ∀ k : Nat,
    iterate (1048576 * k + 109595) 32 = 531441 * k + 55546 ∧
      531441 * k + 55546 < 1048576 * k + 109595 := by
  intro k
  have h1 : C (1048576 * k + 109595) = 3145728 * k + 328786 := by
    unfold C
    simp [show (1048576 * k + 109595) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 328786) = 1572864 * k + 164393 := by
    unfold C
    simp [show (3145728 * k + 328786) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 164393) = 4718592 * k + 493180 := by
    unfold C
    simp [show (1572864 * k + 164393) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 493180) = 2359296 * k + 246590 := by
    unfold C
    simp [show (4718592 * k + 493180) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 246590) = 1179648 * k + 123295 := by
    unfold C
    simp [show (2359296 * k + 246590) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 123295) = 3538944 * k + 369886 := by
    unfold C
    simp [show (1179648 * k + 123295) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 369886) = 1769472 * k + 184943 := by
    unfold C
    simp [show (3538944 * k + 369886) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 184943) = 5308416 * k + 554830 := by
    unfold C
    simp [show (1769472 * k + 184943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 554830) = 2654208 * k + 277415 := by
    unfold C
    simp [show (5308416 * k + 554830) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 277415) = 7962624 * k + 832246 := by
    unfold C
    simp [show (2654208 * k + 277415) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 832246) = 3981312 * k + 416123 := by
    unfold C
    simp [show (7962624 * k + 832246) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 416123) = 11943936 * k + 1248370 := by
    unfold C
    simp [show (3981312 * k + 416123) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1248370) = 5971968 * k + 624185 := by
    unfold C
    simp [show (11943936 * k + 1248370) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 624185) = 17915904 * k + 1872556 := by
    unfold C
    simp [show (5971968 * k + 624185) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1872556) = 8957952 * k + 936278 := by
    unfold C
    simp [show (17915904 * k + 1872556) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 936278) = 4478976 * k + 468139 := by
    unfold C
    simp [show (8957952 * k + 936278) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 468139) = 13436928 * k + 1404418 := by
    unfold C
    simp [show (4478976 * k + 468139) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1404418) = 6718464 * k + 702209 := by
    unfold C
    simp [show (13436928 * k + 1404418) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 702209) = 20155392 * k + 2106628 := by
    unfold C
    simp [show (6718464 * k + 702209) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2106628) = 10077696 * k + 1053314 := by
    unfold C
    simp [show (20155392 * k + 2106628) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1053314) = 5038848 * k + 526657 := by
    unfold C
    simp [show (10077696 * k + 1053314) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 526657) = 15116544 * k + 1579972 := by
    unfold C
    simp [show (5038848 * k + 526657) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1579972) = 7558272 * k + 789986 := by
    unfold C
    simp [show (15116544 * k + 1579972) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 789986) = 3779136 * k + 394993 := by
    unfold C
    simp [show (7558272 * k + 789986) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 394993) = 11337408 * k + 1184980 := by
    unfold C
    simp [show (3779136 * k + 394993) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1184980) = 5668704 * k + 592490 := by
    unfold C
    simp [show (11337408 * k + 1184980) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 592490) = 2834352 * k + 296245 := by
    unfold C
    simp [show (5668704 * k + 592490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 296245) = 8503056 * k + 888736 := by
    unfold C
    simp [show (2834352 * k + 296245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 888736) = 4251528 * k + 444368 := by
    unfold C
    simp [show (8503056 * k + 888736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 444368) = 2125764 * k + 222184 := by
    unfold C
    simp [show (4251528 * k + 444368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 222184) = 1062882 * k + 111092 := by
    unfold C
    simp [show (2125764 * k + 222184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 111092) = 531441 * k + 55546 := by
    unfold C
    simp [show (1062882 * k + 111092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 109595) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 109595)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_110311 : ∀ k : Nat,
    iterate (1048576 * k + 110311) 32 = 531441 * k + 55909 ∧
      531441 * k + 55909 < 1048576 * k + 110311 := by
  intro k
  have h1 : C (1048576 * k + 110311) = 3145728 * k + 330934 := by
    unfold C
    simp [show (1048576 * k + 110311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 330934) = 1572864 * k + 165467 := by
    unfold C
    simp [show (3145728 * k + 330934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 165467) = 4718592 * k + 496402 := by
    unfold C
    simp [show (1572864 * k + 165467) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 496402) = 2359296 * k + 248201 := by
    unfold C
    simp [show (4718592 * k + 496402) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 248201) = 7077888 * k + 744604 := by
    unfold C
    simp [show (2359296 * k + 248201) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 744604) = 3538944 * k + 372302 := by
    unfold C
    simp [show (7077888 * k + 744604) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 372302) = 1769472 * k + 186151 := by
    unfold C
    simp [show (3538944 * k + 372302) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 186151) = 5308416 * k + 558454 := by
    unfold C
    simp [show (1769472 * k + 186151) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 558454) = 2654208 * k + 279227 := by
    unfold C
    simp [show (5308416 * k + 558454) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 279227) = 7962624 * k + 837682 := by
    unfold C
    simp [show (2654208 * k + 279227) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 837682) = 3981312 * k + 418841 := by
    unfold C
    simp [show (7962624 * k + 837682) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 418841) = 11943936 * k + 1256524 := by
    unfold C
    simp [show (3981312 * k + 418841) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1256524) = 5971968 * k + 628262 := by
    unfold C
    simp [show (11943936 * k + 1256524) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 628262) = 2985984 * k + 314131 := by
    unfold C
    simp [show (5971968 * k + 628262) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 314131) = 8957952 * k + 942394 := by
    unfold C
    simp [show (2985984 * k + 314131) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 942394) = 4478976 * k + 471197 := by
    unfold C
    simp [show (8957952 * k + 942394) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 471197) = 13436928 * k + 1413592 := by
    unfold C
    simp [show (4478976 * k + 471197) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1413592) = 6718464 * k + 706796 := by
    unfold C
    simp [show (13436928 * k + 1413592) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 706796) = 3359232 * k + 353398 := by
    unfold C
    simp [show (6718464 * k + 706796) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 353398) = 1679616 * k + 176699 := by
    unfold C
    simp [show (3359232 * k + 353398) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 176699) = 5038848 * k + 530098 := by
    unfold C
    simp [show (1679616 * k + 176699) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 530098) = 2519424 * k + 265049 := by
    unfold C
    simp [show (5038848 * k + 530098) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 265049) = 7558272 * k + 795148 := by
    unfold C
    simp [show (2519424 * k + 265049) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 795148) = 3779136 * k + 397574 := by
    unfold C
    simp [show (7558272 * k + 795148) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 397574) = 1889568 * k + 198787 := by
    unfold C
    simp [show (3779136 * k + 397574) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 198787) = 5668704 * k + 596362 := by
    unfold C
    simp [show (1889568 * k + 198787) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 596362) = 2834352 * k + 298181 := by
    unfold C
    simp [show (5668704 * k + 596362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 298181) = 8503056 * k + 894544 := by
    unfold C
    simp [show (2834352 * k + 298181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 894544) = 4251528 * k + 447272 := by
    unfold C
    simp [show (8503056 * k + 894544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 447272) = 2125764 * k + 223636 := by
    unfold C
    simp [show (4251528 * k + 447272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 223636) = 1062882 * k + 111818 := by
    unfold C
    simp [show (2125764 * k + 223636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 111818) = 531441 * k + 55909 := by
    unfold C
    simp [show (1062882 * k + 111818) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 110311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 110311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_111087 : ∀ k : Nat,
    iterate (1048576 * k + 111087) 32 = 531441 * k + 56302 ∧
      531441 * k + 56302 < 1048576 * k + 111087 := by
  intro k
  have h1 : C (1048576 * k + 111087) = 3145728 * k + 333262 := by
    unfold C
    simp [show (1048576 * k + 111087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 333262) = 1572864 * k + 166631 := by
    unfold C
    simp [show (3145728 * k + 333262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 166631) = 4718592 * k + 499894 := by
    unfold C
    simp [show (1572864 * k + 166631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 499894) = 2359296 * k + 249947 := by
    unfold C
    simp [show (4718592 * k + 499894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 249947) = 7077888 * k + 749842 := by
    unfold C
    simp [show (2359296 * k + 249947) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 749842) = 3538944 * k + 374921 := by
    unfold C
    simp [show (7077888 * k + 749842) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 374921) = 10616832 * k + 1124764 := by
    unfold C
    simp [show (3538944 * k + 374921) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1124764) = 5308416 * k + 562382 := by
    unfold C
    simp [show (10616832 * k + 1124764) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 562382) = 2654208 * k + 281191 := by
    unfold C
    simp [show (5308416 * k + 562382) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 281191) = 7962624 * k + 843574 := by
    unfold C
    simp [show (2654208 * k + 281191) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 843574) = 3981312 * k + 421787 := by
    unfold C
    simp [show (7962624 * k + 843574) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 421787) = 11943936 * k + 1265362 := by
    unfold C
    simp [show (3981312 * k + 421787) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1265362) = 5971968 * k + 632681 := by
    unfold C
    simp [show (11943936 * k + 1265362) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 632681) = 17915904 * k + 1898044 := by
    unfold C
    simp [show (5971968 * k + 632681) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1898044) = 8957952 * k + 949022 := by
    unfold C
    simp [show (17915904 * k + 1898044) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 949022) = 4478976 * k + 474511 := by
    unfold C
    simp [show (8957952 * k + 949022) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 474511) = 13436928 * k + 1423534 := by
    unfold C
    simp [show (4478976 * k + 474511) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1423534) = 6718464 * k + 711767 := by
    unfold C
    simp [show (13436928 * k + 1423534) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 711767) = 20155392 * k + 2135302 := by
    unfold C
    simp [show (6718464 * k + 711767) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2135302) = 10077696 * k + 1067651 := by
    unfold C
    simp [show (20155392 * k + 2135302) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1067651) = 30233088 * k + 3202954 := by
    unfold C
    simp [show (10077696 * k + 1067651) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3202954) = 15116544 * k + 1601477 := by
    unfold C
    simp [show (30233088 * k + 3202954) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1601477) = 45349632 * k + 4804432 := by
    unfold C
    simp [show (15116544 * k + 1601477) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 4804432) = 22674816 * k + 2402216 := by
    unfold C
    simp [show (45349632 * k + 4804432) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 2402216) = 11337408 * k + 1201108 := by
    unfold C
    simp [show (22674816 * k + 2402216) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1201108) = 5668704 * k + 600554 := by
    unfold C
    simp [show (11337408 * k + 1201108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 600554) = 2834352 * k + 300277 := by
    unfold C
    simp [show (5668704 * k + 600554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 300277) = 8503056 * k + 900832 := by
    unfold C
    simp [show (2834352 * k + 300277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 900832) = 4251528 * k + 450416 := by
    unfold C
    simp [show (8503056 * k + 900832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 450416) = 2125764 * k + 225208 := by
    unfold C
    simp [show (4251528 * k + 450416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 225208) = 1062882 * k + 112604 := by
    unfold C
    simp [show (2125764 * k + 225208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 112604) = 531441 * k + 56302 := by
    unfold C
    simp [show (1062882 * k + 112604) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 111087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 111087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_111195 : ∀ k : Nat,
    iterate (1048576 * k + 111195) 32 = 531441 * k + 56357 ∧
      531441 * k + 56357 < 1048576 * k + 111195 := by
  intro k
  have h1 : C (1048576 * k + 111195) = 3145728 * k + 333586 := by
    unfold C
    simp [show (1048576 * k + 111195) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 333586) = 1572864 * k + 166793 := by
    unfold C
    simp [show (3145728 * k + 333586) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 166793) = 4718592 * k + 500380 := by
    unfold C
    simp [show (1572864 * k + 166793) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 500380) = 2359296 * k + 250190 := by
    unfold C
    simp [show (4718592 * k + 500380) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 250190) = 1179648 * k + 125095 := by
    unfold C
    simp [show (2359296 * k + 250190) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 125095) = 3538944 * k + 375286 := by
    unfold C
    simp [show (1179648 * k + 125095) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 375286) = 1769472 * k + 187643 := by
    unfold C
    simp [show (3538944 * k + 375286) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 187643) = 5308416 * k + 562930 := by
    unfold C
    simp [show (1769472 * k + 187643) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 562930) = 2654208 * k + 281465 := by
    unfold C
    simp [show (5308416 * k + 562930) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 281465) = 7962624 * k + 844396 := by
    unfold C
    simp [show (2654208 * k + 281465) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 844396) = 3981312 * k + 422198 := by
    unfold C
    simp [show (7962624 * k + 844396) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 422198) = 1990656 * k + 211099 := by
    unfold C
    simp [show (3981312 * k + 422198) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 211099) = 5971968 * k + 633298 := by
    unfold C
    simp [show (1990656 * k + 211099) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 633298) = 2985984 * k + 316649 := by
    unfold C
    simp [show (5971968 * k + 633298) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 316649) = 8957952 * k + 949948 := by
    unfold C
    simp [show (2985984 * k + 316649) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 949948) = 4478976 * k + 474974 := by
    unfold C
    simp [show (8957952 * k + 949948) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 474974) = 2239488 * k + 237487 := by
    unfold C
    simp [show (4478976 * k + 474974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 237487) = 6718464 * k + 712462 := by
    unfold C
    simp [show (2239488 * k + 237487) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 712462) = 3359232 * k + 356231 := by
    unfold C
    simp [show (6718464 * k + 712462) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 356231) = 10077696 * k + 1068694 := by
    unfold C
    simp [show (3359232 * k + 356231) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1068694) = 5038848 * k + 534347 := by
    unfold C
    simp [show (10077696 * k + 1068694) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 534347) = 15116544 * k + 1603042 := by
    unfold C
    simp [show (5038848 * k + 534347) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1603042) = 7558272 * k + 801521 := by
    unfold C
    simp [show (15116544 * k + 1603042) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 801521) = 22674816 * k + 2404564 := by
    unfold C
    simp [show (7558272 * k + 801521) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2404564) = 11337408 * k + 1202282 := by
    unfold C
    simp [show (22674816 * k + 2404564) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1202282) = 5668704 * k + 601141 := by
    unfold C
    simp [show (11337408 * k + 1202282) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 601141) = 17006112 * k + 1803424 := by
    unfold C
    simp [show (5668704 * k + 601141) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1803424) = 8503056 * k + 901712 := by
    unfold C
    simp [show (17006112 * k + 1803424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 901712) = 4251528 * k + 450856 := by
    unfold C
    simp [show (8503056 * k + 901712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 450856) = 2125764 * k + 225428 := by
    unfold C
    simp [show (4251528 * k + 450856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 225428) = 1062882 * k + 112714 := by
    unfold C
    simp [show (2125764 * k + 225428) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 112714) = 531441 * k + 56357 := by
    unfold C
    simp [show (1062882 * k + 112714) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 111195) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 111195)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_111643 : ∀ k : Nat,
    iterate (1048576 * k + 111643) 32 = 531441 * k + 56584 ∧
      531441 * k + 56584 < 1048576 * k + 111643 := by
  intro k
  have h1 : C (1048576 * k + 111643) = 3145728 * k + 334930 := by
    unfold C
    simp [show (1048576 * k + 111643) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 334930) = 1572864 * k + 167465 := by
    unfold C
    simp [show (3145728 * k + 334930) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 167465) = 4718592 * k + 502396 := by
    unfold C
    simp [show (1572864 * k + 167465) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 502396) = 2359296 * k + 251198 := by
    unfold C
    simp [show (4718592 * k + 502396) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 251198) = 1179648 * k + 125599 := by
    unfold C
    simp [show (2359296 * k + 251198) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 125599) = 3538944 * k + 376798 := by
    unfold C
    simp [show (1179648 * k + 125599) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 376798) = 1769472 * k + 188399 := by
    unfold C
    simp [show (3538944 * k + 376798) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 188399) = 5308416 * k + 565198 := by
    unfold C
    simp [show (1769472 * k + 188399) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 565198) = 2654208 * k + 282599 := by
    unfold C
    simp [show (5308416 * k + 565198) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 282599) = 7962624 * k + 847798 := by
    unfold C
    simp [show (2654208 * k + 282599) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 847798) = 3981312 * k + 423899 := by
    unfold C
    simp [show (7962624 * k + 847798) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 423899) = 11943936 * k + 1271698 := by
    unfold C
    simp [show (3981312 * k + 423899) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1271698) = 5971968 * k + 635849 := by
    unfold C
    simp [show (11943936 * k + 1271698) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 635849) = 17915904 * k + 1907548 := by
    unfold C
    simp [show (5971968 * k + 635849) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1907548) = 8957952 * k + 953774 := by
    unfold C
    simp [show (17915904 * k + 1907548) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 953774) = 4478976 * k + 476887 := by
    unfold C
    simp [show (8957952 * k + 953774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 476887) = 13436928 * k + 1430662 := by
    unfold C
    simp [show (4478976 * k + 476887) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1430662) = 6718464 * k + 715331 := by
    unfold C
    simp [show (13436928 * k + 1430662) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 715331) = 20155392 * k + 2145994 := by
    unfold C
    simp [show (6718464 * k + 715331) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2145994) = 10077696 * k + 1072997 := by
    unfold C
    simp [show (20155392 * k + 2145994) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1072997) = 30233088 * k + 3218992 := by
    unfold C
    simp [show (10077696 * k + 1072997) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3218992) = 15116544 * k + 1609496 := by
    unfold C
    simp [show (30233088 * k + 3218992) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1609496) = 7558272 * k + 804748 := by
    unfold C
    simp [show (15116544 * k + 1609496) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 804748) = 3779136 * k + 402374 := by
    unfold C
    simp [show (7558272 * k + 804748) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 402374) = 1889568 * k + 201187 := by
    unfold C
    simp [show (3779136 * k + 402374) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 201187) = 5668704 * k + 603562 := by
    unfold C
    simp [show (1889568 * k + 201187) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 603562) = 2834352 * k + 301781 := by
    unfold C
    simp [show (5668704 * k + 603562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 301781) = 8503056 * k + 905344 := by
    unfold C
    simp [show (2834352 * k + 301781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 905344) = 4251528 * k + 452672 := by
    unfold C
    simp [show (8503056 * k + 905344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 452672) = 2125764 * k + 226336 := by
    unfold C
    simp [show (4251528 * k + 452672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 226336) = 1062882 * k + 113168 := by
    unfold C
    simp [show (2125764 * k + 226336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 113168) = 531441 * k + 56584 := by
    unfold C
    simp [show (1062882 * k + 113168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 111643) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 111643)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_112095 : ∀ k : Nat,
    iterate (1048576 * k + 112095) 32 = 531441 * k + 56813 ∧
      531441 * k + 56813 < 1048576 * k + 112095 := by
  intro k
  have h1 : C (1048576 * k + 112095) = 3145728 * k + 336286 := by
    unfold C
    simp [show (1048576 * k + 112095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 336286) = 1572864 * k + 168143 := by
    unfold C
    simp [show (3145728 * k + 336286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 168143) = 4718592 * k + 504430 := by
    unfold C
    simp [show (1572864 * k + 168143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 504430) = 2359296 * k + 252215 := by
    unfold C
    simp [show (4718592 * k + 504430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 252215) = 7077888 * k + 756646 := by
    unfold C
    simp [show (2359296 * k + 252215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 756646) = 3538944 * k + 378323 := by
    unfold C
    simp [show (7077888 * k + 756646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 378323) = 10616832 * k + 1134970 := by
    unfold C
    simp [show (3538944 * k + 378323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1134970) = 5308416 * k + 567485 := by
    unfold C
    simp [show (10616832 * k + 1134970) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 567485) = 15925248 * k + 1702456 := by
    unfold C
    simp [show (5308416 * k + 567485) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1702456) = 7962624 * k + 851228 := by
    unfold C
    simp [show (15925248 * k + 1702456) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 851228) = 3981312 * k + 425614 := by
    unfold C
    simp [show (7962624 * k + 851228) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 425614) = 1990656 * k + 212807 := by
    unfold C
    simp [show (3981312 * k + 425614) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 212807) = 5971968 * k + 638422 := by
    unfold C
    simp [show (1990656 * k + 212807) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 638422) = 2985984 * k + 319211 := by
    unfold C
    simp [show (5971968 * k + 638422) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 319211) = 8957952 * k + 957634 := by
    unfold C
    simp [show (2985984 * k + 319211) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 957634) = 4478976 * k + 478817 := by
    unfold C
    simp [show (8957952 * k + 957634) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 478817) = 13436928 * k + 1436452 := by
    unfold C
    simp [show (4478976 * k + 478817) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1436452) = 6718464 * k + 718226 := by
    unfold C
    simp [show (13436928 * k + 1436452) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 718226) = 3359232 * k + 359113 := by
    unfold C
    simp [show (6718464 * k + 718226) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 359113) = 10077696 * k + 1077340 := by
    unfold C
    simp [show (3359232 * k + 359113) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1077340) = 5038848 * k + 538670 := by
    unfold C
    simp [show (10077696 * k + 1077340) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 538670) = 2519424 * k + 269335 := by
    unfold C
    simp [show (5038848 * k + 538670) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 269335) = 7558272 * k + 808006 := by
    unfold C
    simp [show (2519424 * k + 269335) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 808006) = 3779136 * k + 404003 := by
    unfold C
    simp [show (7558272 * k + 808006) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 404003) = 11337408 * k + 1212010 := by
    unfold C
    simp [show (3779136 * k + 404003) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1212010) = 5668704 * k + 606005 := by
    unfold C
    simp [show (11337408 * k + 1212010) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 606005) = 17006112 * k + 1818016 := by
    unfold C
    simp [show (5668704 * k + 606005) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1818016) = 8503056 * k + 909008 := by
    unfold C
    simp [show (17006112 * k + 1818016) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 909008) = 4251528 * k + 454504 := by
    unfold C
    simp [show (8503056 * k + 909008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 454504) = 2125764 * k + 227252 := by
    unfold C
    simp [show (4251528 * k + 454504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 227252) = 1062882 * k + 113626 := by
    unfold C
    simp [show (2125764 * k + 227252) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 113626) = 531441 * k + 56813 := by
    unfold C
    simp [show (1062882 * k + 113626) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 112095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 112095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_112255 : ∀ k : Nat,
    iterate (1048576 * k + 112255) 32 = 531441 * k + 56894 ∧
      531441 * k + 56894 < 1048576 * k + 112255 := by
  intro k
  have h1 : C (1048576 * k + 112255) = 3145728 * k + 336766 := by
    unfold C
    simp [show (1048576 * k + 112255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 336766) = 1572864 * k + 168383 := by
    unfold C
    simp [show (3145728 * k + 336766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 168383) = 4718592 * k + 505150 := by
    unfold C
    simp [show (1572864 * k + 168383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 505150) = 2359296 * k + 252575 := by
    unfold C
    simp [show (4718592 * k + 505150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 252575) = 7077888 * k + 757726 := by
    unfold C
    simp [show (2359296 * k + 252575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 757726) = 3538944 * k + 378863 := by
    unfold C
    simp [show (7077888 * k + 757726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 378863) = 10616832 * k + 1136590 := by
    unfold C
    simp [show (3538944 * k + 378863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1136590) = 5308416 * k + 568295 := by
    unfold C
    simp [show (10616832 * k + 1136590) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 568295) = 15925248 * k + 1704886 := by
    unfold C
    simp [show (5308416 * k + 568295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1704886) = 7962624 * k + 852443 := by
    unfold C
    simp [show (15925248 * k + 1704886) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 852443) = 23887872 * k + 2557330 := by
    unfold C
    simp [show (7962624 * k + 852443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2557330) = 11943936 * k + 1278665 := by
    unfold C
    simp [show (23887872 * k + 2557330) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1278665) = 35831808 * k + 3835996 := by
    unfold C
    simp [show (11943936 * k + 1278665) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3835996) = 17915904 * k + 1917998 := by
    unfold C
    simp [show (35831808 * k + 3835996) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1917998) = 8957952 * k + 958999 := by
    unfold C
    simp [show (17915904 * k + 1917998) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 958999) = 26873856 * k + 2876998 := by
    unfold C
    simp [show (8957952 * k + 958999) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2876998) = 13436928 * k + 1438499 := by
    unfold C
    simp [show (26873856 * k + 2876998) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1438499) = 40310784 * k + 4315498 := by
    unfold C
    simp [show (13436928 * k + 1438499) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 4315498) = 20155392 * k + 2157749 := by
    unfold C
    simp [show (40310784 * k + 4315498) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2157749) = 60466176 * k + 6473248 := by
    unfold C
    simp [show (20155392 * k + 2157749) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 6473248) = 30233088 * k + 3236624 := by
    unfold C
    simp [show (60466176 * k + 6473248) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 3236624) = 15116544 * k + 1618312 := by
    unfold C
    simp [show (30233088 * k + 3236624) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1618312) = 7558272 * k + 809156 := by
    unfold C
    simp [show (15116544 * k + 1618312) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 809156) = 3779136 * k + 404578 := by
    unfold C
    simp [show (7558272 * k + 809156) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 404578) = 1889568 * k + 202289 := by
    unfold C
    simp [show (3779136 * k + 404578) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 202289) = 5668704 * k + 606868 := by
    unfold C
    simp [show (1889568 * k + 202289) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 606868) = 2834352 * k + 303434 := by
    unfold C
    simp [show (5668704 * k + 606868) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 303434) = 1417176 * k + 151717 := by
    unfold C
    simp [show (2834352 * k + 303434) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 151717) = 4251528 * k + 455152 := by
    unfold C
    simp [show (1417176 * k + 151717) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 455152) = 2125764 * k + 227576 := by
    unfold C
    simp [show (4251528 * k + 455152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 227576) = 1062882 * k + 113788 := by
    unfold C
    simp [show (2125764 * k + 227576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 113788) = 531441 * k + 56894 := by
    unfold C
    simp [show (1062882 * k + 113788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 112255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 112255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_113119 : ∀ k : Nat,
    iterate (1048576 * k + 113119) 32 = 531441 * k + 57332 ∧
      531441 * k + 57332 < 1048576 * k + 113119 := by
  intro k
  have h1 : C (1048576 * k + 113119) = 3145728 * k + 339358 := by
    unfold C
    simp [show (1048576 * k + 113119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 339358) = 1572864 * k + 169679 := by
    unfold C
    simp [show (3145728 * k + 339358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 169679) = 4718592 * k + 509038 := by
    unfold C
    simp [show (1572864 * k + 169679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 509038) = 2359296 * k + 254519 := by
    unfold C
    simp [show (4718592 * k + 509038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 254519) = 7077888 * k + 763558 := by
    unfold C
    simp [show (2359296 * k + 254519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 763558) = 3538944 * k + 381779 := by
    unfold C
    simp [show (7077888 * k + 763558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 381779) = 10616832 * k + 1145338 := by
    unfold C
    simp [show (3538944 * k + 381779) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1145338) = 5308416 * k + 572669 := by
    unfold C
    simp [show (10616832 * k + 1145338) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 572669) = 15925248 * k + 1718008 := by
    unfold C
    simp [show (5308416 * k + 572669) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1718008) = 7962624 * k + 859004 := by
    unfold C
    simp [show (15925248 * k + 1718008) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 859004) = 3981312 * k + 429502 := by
    unfold C
    simp [show (7962624 * k + 859004) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 429502) = 1990656 * k + 214751 := by
    unfold C
    simp [show (3981312 * k + 429502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 214751) = 5971968 * k + 644254 := by
    unfold C
    simp [show (1990656 * k + 214751) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 644254) = 2985984 * k + 322127 := by
    unfold C
    simp [show (5971968 * k + 644254) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 322127) = 8957952 * k + 966382 := by
    unfold C
    simp [show (2985984 * k + 322127) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 966382) = 4478976 * k + 483191 := by
    unfold C
    simp [show (8957952 * k + 966382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 483191) = 13436928 * k + 1449574 := by
    unfold C
    simp [show (4478976 * k + 483191) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1449574) = 6718464 * k + 724787 := by
    unfold C
    simp [show (13436928 * k + 1449574) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 724787) = 20155392 * k + 2174362 := by
    unfold C
    simp [show (6718464 * k + 724787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2174362) = 10077696 * k + 1087181 := by
    unfold C
    simp [show (20155392 * k + 2174362) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1087181) = 30233088 * k + 3261544 := by
    unfold C
    simp [show (10077696 * k + 1087181) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 3261544) = 15116544 * k + 1630772 := by
    unfold C
    simp [show (30233088 * k + 3261544) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1630772) = 7558272 * k + 815386 := by
    unfold C
    simp [show (15116544 * k + 1630772) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 815386) = 3779136 * k + 407693 := by
    unfold C
    simp [show (7558272 * k + 815386) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 407693) = 11337408 * k + 1223080 := by
    unfold C
    simp [show (3779136 * k + 407693) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1223080) = 5668704 * k + 611540 := by
    unfold C
    simp [show (11337408 * k + 1223080) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 611540) = 2834352 * k + 305770 := by
    unfold C
    simp [show (5668704 * k + 611540) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 305770) = 1417176 * k + 152885 := by
    unfold C
    simp [show (2834352 * k + 305770) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 152885) = 4251528 * k + 458656 := by
    unfold C
    simp [show (1417176 * k + 152885) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 458656) = 2125764 * k + 229328 := by
    unfold C
    simp [show (4251528 * k + 458656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 229328) = 1062882 * k + 114664 := by
    unfold C
    simp [show (2125764 * k + 229328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 114664) = 531441 * k + 57332 := by
    unfold C
    simp [show (1062882 * k + 114664) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 113119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 113119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_113135 : ∀ k : Nat,
    iterate (1048576 * k + 113135) 32 = 531441 * k + 57340 ∧
      531441 * k + 57340 < 1048576 * k + 113135 := by
  intro k
  have h1 : C (1048576 * k + 113135) = 3145728 * k + 339406 := by
    unfold C
    simp [show (1048576 * k + 113135) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 339406) = 1572864 * k + 169703 := by
    unfold C
    simp [show (3145728 * k + 339406) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 169703) = 4718592 * k + 509110 := by
    unfold C
    simp [show (1572864 * k + 169703) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 509110) = 2359296 * k + 254555 := by
    unfold C
    simp [show (4718592 * k + 509110) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 254555) = 7077888 * k + 763666 := by
    unfold C
    simp [show (2359296 * k + 254555) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 763666) = 3538944 * k + 381833 := by
    unfold C
    simp [show (7077888 * k + 763666) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 381833) = 10616832 * k + 1145500 := by
    unfold C
    simp [show (3538944 * k + 381833) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1145500) = 5308416 * k + 572750 := by
    unfold C
    simp [show (10616832 * k + 1145500) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 572750) = 2654208 * k + 286375 := by
    unfold C
    simp [show (5308416 * k + 572750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 286375) = 7962624 * k + 859126 := by
    unfold C
    simp [show (2654208 * k + 286375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 859126) = 3981312 * k + 429563 := by
    unfold C
    simp [show (7962624 * k + 859126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 429563) = 11943936 * k + 1288690 := by
    unfold C
    simp [show (3981312 * k + 429563) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1288690) = 5971968 * k + 644345 := by
    unfold C
    simp [show (11943936 * k + 1288690) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 644345) = 17915904 * k + 1933036 := by
    unfold C
    simp [show (5971968 * k + 644345) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1933036) = 8957952 * k + 966518 := by
    unfold C
    simp [show (17915904 * k + 1933036) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 966518) = 4478976 * k + 483259 := by
    unfold C
    simp [show (8957952 * k + 966518) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 483259) = 13436928 * k + 1449778 := by
    unfold C
    simp [show (4478976 * k + 483259) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1449778) = 6718464 * k + 724889 := by
    unfold C
    simp [show (13436928 * k + 1449778) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 724889) = 20155392 * k + 2174668 := by
    unfold C
    simp [show (6718464 * k + 724889) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 2174668) = 10077696 * k + 1087334 := by
    unfold C
    simp [show (20155392 * k + 2174668) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1087334) = 5038848 * k + 543667 := by
    unfold C
    simp [show (10077696 * k + 1087334) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 543667) = 15116544 * k + 1631002 := by
    unfold C
    simp [show (5038848 * k + 543667) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1631002) = 7558272 * k + 815501 := by
    unfold C
    simp [show (15116544 * k + 1631002) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 815501) = 22674816 * k + 2446504 := by
    unfold C
    simp [show (7558272 * k + 815501) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 2446504) = 11337408 * k + 1223252 := by
    unfold C
    simp [show (22674816 * k + 2446504) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 1223252) = 5668704 * k + 611626 := by
    unfold C
    simp [show (11337408 * k + 1223252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 611626) = 2834352 * k + 305813 := by
    unfold C
    simp [show (5668704 * k + 611626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 305813) = 8503056 * k + 917440 := by
    unfold C
    simp [show (2834352 * k + 305813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 917440) = 4251528 * k + 458720 := by
    unfold C
    simp [show (8503056 * k + 917440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 458720) = 2125764 * k + 229360 := by
    unfold C
    simp [show (4251528 * k + 458720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 229360) = 1062882 * k + 114680 := by
    unfold C
    simp [show (2125764 * k + 229360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 114680) = 531441 * k + 57340 := by
    unfold C
    simp [show (1062882 * k + 114680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 113135) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 113135)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_113279 : ∀ k : Nat,
    iterate (1048576 * k + 113279) 32 = 531441 * k + 57413 ∧
      531441 * k + 57413 < 1048576 * k + 113279 := by
  intro k
  have h1 : C (1048576 * k + 113279) = 3145728 * k + 339838 := by
    unfold C
    simp [show (1048576 * k + 113279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 339838) = 1572864 * k + 169919 := by
    unfold C
    simp [show (3145728 * k + 339838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 169919) = 4718592 * k + 509758 := by
    unfold C
    simp [show (1572864 * k + 169919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 509758) = 2359296 * k + 254879 := by
    unfold C
    simp [show (4718592 * k + 509758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 254879) = 7077888 * k + 764638 := by
    unfold C
    simp [show (2359296 * k + 254879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 764638) = 3538944 * k + 382319 := by
    unfold C
    simp [show (7077888 * k + 764638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 382319) = 10616832 * k + 1146958 := by
    unfold C
    simp [show (3538944 * k + 382319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 1146958) = 5308416 * k + 573479 := by
    unfold C
    simp [show (10616832 * k + 1146958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 573479) = 15925248 * k + 1720438 := by
    unfold C
    simp [show (5308416 * k + 573479) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1720438) = 7962624 * k + 860219 := by
    unfold C
    simp [show (15925248 * k + 1720438) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 860219) = 23887872 * k + 2580658 := by
    unfold C
    simp [show (7962624 * k + 860219) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 2580658) = 11943936 * k + 1290329 := by
    unfold C
    simp [show (23887872 * k + 2580658) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 1290329) = 35831808 * k + 3870988 := by
    unfold C
    simp [show (11943936 * k + 1290329) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 3870988) = 17915904 * k + 1935494 := by
    unfold C
    simp [show (35831808 * k + 3870988) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1935494) = 8957952 * k + 967747 := by
    unfold C
    simp [show (17915904 * k + 1935494) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 967747) = 26873856 * k + 2903242 := by
    unfold C
    simp [show (8957952 * k + 967747) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2903242) = 13436928 * k + 1451621 := by
    unfold C
    simp [show (26873856 * k + 2903242) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1451621) = 40310784 * k + 4354864 := by
    unfold C
    simp [show (13436928 * k + 1451621) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 4354864) = 20155392 * k + 2177432 := by
    unfold C
    simp [show (40310784 * k + 4354864) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 2177432) = 10077696 * k + 1088716 := by
    unfold C
    simp [show (20155392 * k + 2177432) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1088716) = 5038848 * k + 544358 := by
    unfold C
    simp [show (10077696 * k + 1088716) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 544358) = 2519424 * k + 272179 := by
    unfold C
    simp [show (5038848 * k + 544358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 272179) = 7558272 * k + 816538 := by
    unfold C
    simp [show (2519424 * k + 272179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 816538) = 3779136 * k + 408269 := by
    unfold C
    simp [show (7558272 * k + 816538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 408269) = 11337408 * k + 1224808 := by
    unfold C
    simp [show (3779136 * k + 408269) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1224808) = 5668704 * k + 612404 := by
    unfold C
    simp [show (11337408 * k + 1224808) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 612404) = 2834352 * k + 306202 := by
    unfold C
    simp [show (5668704 * k + 612404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 306202) = 1417176 * k + 153101 := by
    unfold C
    simp [show (2834352 * k + 306202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 153101) = 4251528 * k + 459304 := by
    unfold C
    simp [show (1417176 * k + 153101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 459304) = 2125764 * k + 229652 := by
    unfold C
    simp [show (4251528 * k + 459304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 229652) = 1062882 * k + 114826 := by
    unfold C
    simp [show (2125764 * k + 229652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 114826) = 531441 * k + 57413 := by
    unfold C
    simp [show (1062882 * k + 114826) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 113279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 113279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_114075 : ∀ k : Nat,
    iterate (1048576 * k + 114075) 32 = 531441 * k + 57817 ∧
      531441 * k + 57817 < 1048576 * k + 114075 := by
  intro k
  have h1 : C (1048576 * k + 114075) = 3145728 * k + 342226 := by
    unfold C
    simp [show (1048576 * k + 114075) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 342226) = 1572864 * k + 171113 := by
    unfold C
    simp [show (3145728 * k + 342226) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 171113) = 4718592 * k + 513340 := by
    unfold C
    simp [show (1572864 * k + 171113) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 513340) = 2359296 * k + 256670 := by
    unfold C
    simp [show (4718592 * k + 513340) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 256670) = 1179648 * k + 128335 := by
    unfold C
    simp [show (2359296 * k + 256670) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 128335) = 3538944 * k + 385006 := by
    unfold C
    simp [show (1179648 * k + 128335) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 385006) = 1769472 * k + 192503 := by
    unfold C
    simp [show (3538944 * k + 385006) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 192503) = 5308416 * k + 577510 := by
    unfold C
    simp [show (1769472 * k + 192503) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 577510) = 2654208 * k + 288755 := by
    unfold C
    simp [show (5308416 * k + 577510) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 288755) = 7962624 * k + 866266 := by
    unfold C
    simp [show (2654208 * k + 288755) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 866266) = 3981312 * k + 433133 := by
    unfold C
    simp [show (7962624 * k + 866266) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 433133) = 11943936 * k + 1299400 := by
    unfold C
    simp [show (3981312 * k + 433133) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1299400) = 5971968 * k + 649700 := by
    unfold C
    simp [show (11943936 * k + 1299400) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 649700) = 2985984 * k + 324850 := by
    unfold C
    simp [show (5971968 * k + 649700) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 324850) = 1492992 * k + 162425 := by
    unfold C
    simp [show (2985984 * k + 324850) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 162425) = 4478976 * k + 487276 := by
    unfold C
    simp [show (1492992 * k + 162425) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 487276) = 2239488 * k + 243638 := by
    unfold C
    simp [show (4478976 * k + 487276) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 243638) = 1119744 * k + 121819 := by
    unfold C
    simp [show (2239488 * k + 243638) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 121819) = 3359232 * k + 365458 := by
    unfold C
    simp [show (1119744 * k + 121819) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 365458) = 1679616 * k + 182729 := by
    unfold C
    simp [show (3359232 * k + 365458) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 182729) = 5038848 * k + 548188 := by
    unfold C
    simp [show (1679616 * k + 182729) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 548188) = 2519424 * k + 274094 := by
    unfold C
    simp [show (5038848 * k + 548188) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 274094) = 1259712 * k + 137047 := by
    unfold C
    simp [show (2519424 * k + 274094) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 137047) = 3779136 * k + 411142 := by
    unfold C
    simp [show (1259712 * k + 137047) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 411142) = 1889568 * k + 205571 := by
    unfold C
    simp [show (3779136 * k + 411142) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 205571) = 5668704 * k + 616714 := by
    unfold C
    simp [show (1889568 * k + 205571) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 616714) = 2834352 * k + 308357 := by
    unfold C
    simp [show (5668704 * k + 616714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 308357) = 8503056 * k + 925072 := by
    unfold C
    simp [show (2834352 * k + 308357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 925072) = 4251528 * k + 462536 := by
    unfold C
    simp [show (8503056 * k + 925072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 462536) = 2125764 * k + 231268 := by
    unfold C
    simp [show (4251528 * k + 462536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 231268) = 1062882 * k + 115634 := by
    unfold C
    simp [show (2125764 * k + 231268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 115634) = 531441 * k + 57817 := by
    unfold C
    simp [show (1062882 * k + 115634) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 114075) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 114075)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_114279 : ∀ k : Nat,
    iterate (1048576 * k + 114279) 32 = 531441 * k + 57920 ∧
      531441 * k + 57920 < 1048576 * k + 114279 := by
  intro k
  have h1 : C (1048576 * k + 114279) = 3145728 * k + 342838 := by
    unfold C
    simp [show (1048576 * k + 114279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 342838) = 1572864 * k + 171419 := by
    unfold C
    simp [show (3145728 * k + 342838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 171419) = 4718592 * k + 514258 := by
    unfold C
    simp [show (1572864 * k + 171419) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 514258) = 2359296 * k + 257129 := by
    unfold C
    simp [show (4718592 * k + 514258) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 257129) = 7077888 * k + 771388 := by
    unfold C
    simp [show (2359296 * k + 257129) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 771388) = 3538944 * k + 385694 := by
    unfold C
    simp [show (7077888 * k + 771388) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 385694) = 1769472 * k + 192847 := by
    unfold C
    simp [show (3538944 * k + 385694) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 192847) = 5308416 * k + 578542 := by
    unfold C
    simp [show (1769472 * k + 192847) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 578542) = 2654208 * k + 289271 := by
    unfold C
    simp [show (5308416 * k + 578542) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 289271) = 7962624 * k + 867814 := by
    unfold C
    simp [show (2654208 * k + 289271) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 867814) = 3981312 * k + 433907 := by
    unfold C
    simp [show (7962624 * k + 867814) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 433907) = 11943936 * k + 1301722 := by
    unfold C
    simp [show (3981312 * k + 433907) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1301722) = 5971968 * k + 650861 := by
    unfold C
    simp [show (11943936 * k + 1301722) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 650861) = 17915904 * k + 1952584 := by
    unfold C
    simp [show (5971968 * k + 650861) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1952584) = 8957952 * k + 976292 := by
    unfold C
    simp [show (17915904 * k + 1952584) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 976292) = 4478976 * k + 488146 := by
    unfold C
    simp [show (8957952 * k + 976292) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 488146) = 2239488 * k + 244073 := by
    unfold C
    simp [show (4478976 * k + 488146) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 244073) = 6718464 * k + 732220 := by
    unfold C
    simp [show (2239488 * k + 244073) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 732220) = 3359232 * k + 366110 := by
    unfold C
    simp [show (6718464 * k + 732220) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 366110) = 1679616 * k + 183055 := by
    unfold C
    simp [show (3359232 * k + 366110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 183055) = 5038848 * k + 549166 := by
    unfold C
    simp [show (1679616 * k + 183055) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 549166) = 2519424 * k + 274583 := by
    unfold C
    simp [show (5038848 * k + 549166) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 274583) = 7558272 * k + 823750 := by
    unfold C
    simp [show (2519424 * k + 274583) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 823750) = 3779136 * k + 411875 := by
    unfold C
    simp [show (7558272 * k + 823750) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 411875) = 11337408 * k + 1235626 := by
    unfold C
    simp [show (3779136 * k + 411875) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 1235626) = 5668704 * k + 617813 := by
    unfold C
    simp [show (11337408 * k + 1235626) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 617813) = 17006112 * k + 1853440 := by
    unfold C
    simp [show (5668704 * k + 617813) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1853440) = 8503056 * k + 926720 := by
    unfold C
    simp [show (17006112 * k + 1853440) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 926720) = 4251528 * k + 463360 := by
    unfold C
    simp [show (8503056 * k + 926720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 463360) = 2125764 * k + 231680 := by
    unfold C
    simp [show (4251528 * k + 463360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 231680) = 1062882 * k + 115840 := by
    unfold C
    simp [show (2125764 * k + 231680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 115840) = 531441 * k + 57920 := by
    unfold C
    simp [show (1062882 * k + 115840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 114279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 114279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_114715 : ∀ k : Nat,
    iterate (1048576 * k + 114715) 32 = 531441 * k + 58141 ∧
      531441 * k + 58141 < 1048576 * k + 114715 := by
  intro k
  have h1 : C (1048576 * k + 114715) = 3145728 * k + 344146 := by
    unfold C
    simp [show (1048576 * k + 114715) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 344146) = 1572864 * k + 172073 := by
    unfold C
    simp [show (3145728 * k + 344146) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 172073) = 4718592 * k + 516220 := by
    unfold C
    simp [show (1572864 * k + 172073) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 516220) = 2359296 * k + 258110 := by
    unfold C
    simp [show (4718592 * k + 516220) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 258110) = 1179648 * k + 129055 := by
    unfold C
    simp [show (2359296 * k + 258110) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 129055) = 3538944 * k + 387166 := by
    unfold C
    simp [show (1179648 * k + 129055) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 387166) = 1769472 * k + 193583 := by
    unfold C
    simp [show (3538944 * k + 387166) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 193583) = 5308416 * k + 580750 := by
    unfold C
    simp [show (1769472 * k + 193583) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 580750) = 2654208 * k + 290375 := by
    unfold C
    simp [show (5308416 * k + 580750) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 290375) = 7962624 * k + 871126 := by
    unfold C
    simp [show (2654208 * k + 290375) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 871126) = 3981312 * k + 435563 := by
    unfold C
    simp [show (7962624 * k + 871126) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 435563) = 11943936 * k + 1306690 := by
    unfold C
    simp [show (3981312 * k + 435563) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 1306690) = 5971968 * k + 653345 := by
    unfold C
    simp [show (11943936 * k + 1306690) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 653345) = 17915904 * k + 1960036 := by
    unfold C
    simp [show (5971968 * k + 653345) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1960036) = 8957952 * k + 980018 := by
    unfold C
    simp [show (17915904 * k + 1960036) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 980018) = 4478976 * k + 490009 := by
    unfold C
    simp [show (8957952 * k + 980018) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 490009) = 13436928 * k + 1470028 := by
    unfold C
    simp [show (4478976 * k + 490009) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1470028) = 6718464 * k + 735014 := by
    unfold C
    simp [show (13436928 * k + 1470028) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 735014) = 3359232 * k + 367507 := by
    unfold C
    simp [show (6718464 * k + 735014) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 367507) = 10077696 * k + 1102522 := by
    unfold C
    simp [show (3359232 * k + 367507) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1102522) = 5038848 * k + 551261 := by
    unfold C
    simp [show (10077696 * k + 1102522) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 551261) = 15116544 * k + 1653784 := by
    unfold C
    simp [show (5038848 * k + 551261) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1653784) = 7558272 * k + 826892 := by
    unfold C
    simp [show (15116544 * k + 1653784) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 826892) = 3779136 * k + 413446 := by
    unfold C
    simp [show (7558272 * k + 826892) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 413446) = 1889568 * k + 206723 := by
    unfold C
    simp [show (3779136 * k + 413446) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 206723) = 5668704 * k + 620170 := by
    unfold C
    simp [show (1889568 * k + 206723) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 620170) = 2834352 * k + 310085 := by
    unfold C
    simp [show (5668704 * k + 620170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 310085) = 8503056 * k + 930256 := by
    unfold C
    simp [show (2834352 * k + 310085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 930256) = 4251528 * k + 465128 := by
    unfold C
    simp [show (8503056 * k + 930256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 465128) = 2125764 * k + 232564 := by
    unfold C
    simp [show (4251528 * k + 465128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 232564) = 1062882 * k + 116282 := by
    unfold C
    simp [show (2125764 * k + 232564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 116282) = 531441 * k + 58141 := by
    unfold C
    simp [show (1062882 * k + 116282) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 114715) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 114715)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard016
