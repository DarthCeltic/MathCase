import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard048

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_376703 : ∀ k : Nat,
    iterate (1048576 * k + 376703) 32 = 531441 * k + 190922 ∧
      531441 * k + 190922 < 1048576 * k + 376703 := by
  intro k
  have h1 : C (1048576 * k + 376703) = 3145728 * k + 1130110 := by
    unfold C
    simp [show (1048576 * k + 376703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1130110) = 1572864 * k + 565055 := by
    unfold C
    simp [show (3145728 * k + 1130110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 565055) = 4718592 * k + 1695166 := by
    unfold C
    simp [show (1572864 * k + 565055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1695166) = 2359296 * k + 847583 := by
    unfold C
    simp [show (4718592 * k + 1695166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 847583) = 7077888 * k + 2542750 := by
    unfold C
    simp [show (2359296 * k + 847583) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2542750) = 3538944 * k + 1271375 := by
    unfold C
    simp [show (7077888 * k + 2542750) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1271375) = 10616832 * k + 3814126 := by
    unfold C
    simp [show (3538944 * k + 1271375) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3814126) = 5308416 * k + 1907063 := by
    unfold C
    simp [show (10616832 * k + 3814126) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1907063) = 15925248 * k + 5721190 := by
    unfold C
    simp [show (5308416 * k + 1907063) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5721190) = 7962624 * k + 2860595 := by
    unfold C
    simp [show (15925248 * k + 5721190) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2860595) = 23887872 * k + 8581786 := by
    unfold C
    simp [show (7962624 * k + 2860595) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8581786) = 11943936 * k + 4290893 := by
    unfold C
    simp [show (23887872 * k + 8581786) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4290893) = 35831808 * k + 12872680 := by
    unfold C
    simp [show (11943936 * k + 4290893) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12872680) = 17915904 * k + 6436340 := by
    unfold C
    simp [show (35831808 * k + 12872680) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6436340) = 8957952 * k + 3218170 := by
    unfold C
    simp [show (17915904 * k + 6436340) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3218170) = 4478976 * k + 1609085 := by
    unfold C
    simp [show (8957952 * k + 3218170) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1609085) = 13436928 * k + 4827256 := by
    unfold C
    simp [show (4478976 * k + 1609085) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4827256) = 6718464 * k + 2413628 := by
    unfold C
    simp [show (13436928 * k + 4827256) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2413628) = 3359232 * k + 1206814 := by
    unfold C
    simp [show (6718464 * k + 2413628) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1206814) = 1679616 * k + 603407 := by
    unfold C
    simp [show (3359232 * k + 1206814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 603407) = 5038848 * k + 1810222 := by
    unfold C
    simp [show (1679616 * k + 603407) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1810222) = 2519424 * k + 905111 := by
    unfold C
    simp [show (5038848 * k + 1810222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 905111) = 7558272 * k + 2715334 := by
    unfold C
    simp [show (2519424 * k + 905111) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2715334) = 3779136 * k + 1357667 := by
    unfold C
    simp [show (7558272 * k + 2715334) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1357667) = 11337408 * k + 4073002 := by
    unfold C
    simp [show (3779136 * k + 1357667) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4073002) = 5668704 * k + 2036501 := by
    unfold C
    simp [show (11337408 * k + 4073002) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2036501) = 17006112 * k + 6109504 := by
    unfold C
    simp [show (5668704 * k + 2036501) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6109504) = 8503056 * k + 3054752 := by
    unfold C
    simp [show (17006112 * k + 6109504) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3054752) = 4251528 * k + 1527376 := by
    unfold C
    simp [show (8503056 * k + 3054752) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1527376) = 2125764 * k + 763688 := by
    unfold C
    simp [show (4251528 * k + 1527376) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 763688) = 1062882 * k + 381844 := by
    unfold C
    simp [show (2125764 * k + 763688) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 381844) = 531441 * k + 190922 := by
    unfold C
    simp [show (1062882 * k + 381844) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 376703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 376703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_377151 : ∀ k : Nat,
    iterate (1048576 * k + 377151) 32 = 531441 * k + 191149 ∧
      531441 * k + 191149 < 1048576 * k + 377151 := by
  intro k
  have h1 : C (1048576 * k + 377151) = 3145728 * k + 1131454 := by
    unfold C
    simp [show (1048576 * k + 377151) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1131454) = 1572864 * k + 565727 := by
    unfold C
    simp [show (3145728 * k + 1131454) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 565727) = 4718592 * k + 1697182 := by
    unfold C
    simp [show (1572864 * k + 565727) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1697182) = 2359296 * k + 848591 := by
    unfold C
    simp [show (4718592 * k + 1697182) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 848591) = 7077888 * k + 2545774 := by
    unfold C
    simp [show (2359296 * k + 848591) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2545774) = 3538944 * k + 1272887 := by
    unfold C
    simp [show (7077888 * k + 2545774) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1272887) = 10616832 * k + 3818662 := by
    unfold C
    simp [show (3538944 * k + 1272887) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3818662) = 5308416 * k + 1909331 := by
    unfold C
    simp [show (10616832 * k + 3818662) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1909331) = 15925248 * k + 5727994 := by
    unfold C
    simp [show (5308416 * k + 1909331) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5727994) = 7962624 * k + 2863997 := by
    unfold C
    simp [show (15925248 * k + 5727994) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2863997) = 23887872 * k + 8591992 := by
    unfold C
    simp [show (7962624 * k + 2863997) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8591992) = 11943936 * k + 4295996 := by
    unfold C
    simp [show (23887872 * k + 8591992) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4295996) = 5971968 * k + 2147998 := by
    unfold C
    simp [show (11943936 * k + 4295996) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2147998) = 2985984 * k + 1073999 := by
    unfold C
    simp [show (5971968 * k + 2147998) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1073999) = 8957952 * k + 3221998 := by
    unfold C
    simp [show (2985984 * k + 1073999) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3221998) = 4478976 * k + 1610999 := by
    unfold C
    simp [show (8957952 * k + 3221998) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1610999) = 13436928 * k + 4832998 := by
    unfold C
    simp [show (4478976 * k + 1610999) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4832998) = 6718464 * k + 2416499 := by
    unfold C
    simp [show (13436928 * k + 4832998) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2416499) = 20155392 * k + 7249498 := by
    unfold C
    simp [show (6718464 * k + 2416499) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7249498) = 10077696 * k + 3624749 := by
    unfold C
    simp [show (20155392 * k + 7249498) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3624749) = 30233088 * k + 10874248 := by
    unfold C
    simp [show (10077696 * k + 3624749) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10874248) = 15116544 * k + 5437124 := by
    unfold C
    simp [show (30233088 * k + 10874248) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5437124) = 7558272 * k + 2718562 := by
    unfold C
    simp [show (15116544 * k + 5437124) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2718562) = 3779136 * k + 1359281 := by
    unfold C
    simp [show (7558272 * k + 2718562) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1359281) = 11337408 * k + 4077844 := by
    unfold C
    simp [show (3779136 * k + 1359281) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4077844) = 5668704 * k + 2038922 := by
    unfold C
    simp [show (11337408 * k + 4077844) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2038922) = 2834352 * k + 1019461 := by
    unfold C
    simp [show (5668704 * k + 2038922) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1019461) = 8503056 * k + 3058384 := by
    unfold C
    simp [show (2834352 * k + 1019461) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3058384) = 4251528 * k + 1529192 := by
    unfold C
    simp [show (8503056 * k + 3058384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1529192) = 2125764 * k + 764596 := by
    unfold C
    simp [show (4251528 * k + 1529192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 764596) = 1062882 * k + 382298 := by
    unfold C
    simp [show (2125764 * k + 764596) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 382298) = 531441 * k + 191149 := by
    unfold C
    simp [show (1062882 * k + 382298) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 377151) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 377151)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_377583 : ∀ k : Nat,
    iterate (1048576 * k + 377583) 32 = 531441 * k + 191368 ∧
      531441 * k + 191368 < 1048576 * k + 377583 := by
  intro k
  have h1 : C (1048576 * k + 377583) = 3145728 * k + 1132750 := by
    unfold C
    simp [show (1048576 * k + 377583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1132750) = 1572864 * k + 566375 := by
    unfold C
    simp [show (3145728 * k + 1132750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 566375) = 4718592 * k + 1699126 := by
    unfold C
    simp [show (1572864 * k + 566375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1699126) = 2359296 * k + 849563 := by
    unfold C
    simp [show (4718592 * k + 1699126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 849563) = 7077888 * k + 2548690 := by
    unfold C
    simp [show (2359296 * k + 849563) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2548690) = 3538944 * k + 1274345 := by
    unfold C
    simp [show (7077888 * k + 2548690) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1274345) = 10616832 * k + 3823036 := by
    unfold C
    simp [show (3538944 * k + 1274345) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3823036) = 5308416 * k + 1911518 := by
    unfold C
    simp [show (10616832 * k + 3823036) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1911518) = 2654208 * k + 955759 := by
    unfold C
    simp [show (5308416 * k + 1911518) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 955759) = 7962624 * k + 2867278 := by
    unfold C
    simp [show (2654208 * k + 955759) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2867278) = 3981312 * k + 1433639 := by
    unfold C
    simp [show (7962624 * k + 2867278) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1433639) = 11943936 * k + 4300918 := by
    unfold C
    simp [show (3981312 * k + 1433639) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4300918) = 5971968 * k + 2150459 := by
    unfold C
    simp [show (11943936 * k + 4300918) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2150459) = 17915904 * k + 6451378 := by
    unfold C
    simp [show (5971968 * k + 2150459) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6451378) = 8957952 * k + 3225689 := by
    unfold C
    simp [show (17915904 * k + 6451378) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3225689) = 26873856 * k + 9677068 := by
    unfold C
    simp [show (8957952 * k + 3225689) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9677068) = 13436928 * k + 4838534 := by
    unfold C
    simp [show (26873856 * k + 9677068) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4838534) = 6718464 * k + 2419267 := by
    unfold C
    simp [show (13436928 * k + 4838534) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2419267) = 20155392 * k + 7257802 := by
    unfold C
    simp [show (6718464 * k + 2419267) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7257802) = 10077696 * k + 3628901 := by
    unfold C
    simp [show (20155392 * k + 7257802) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3628901) = 30233088 * k + 10886704 := by
    unfold C
    simp [show (10077696 * k + 3628901) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10886704) = 15116544 * k + 5443352 := by
    unfold C
    simp [show (30233088 * k + 10886704) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5443352) = 7558272 * k + 2721676 := by
    unfold C
    simp [show (15116544 * k + 5443352) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2721676) = 3779136 * k + 1360838 := by
    unfold C
    simp [show (7558272 * k + 2721676) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1360838) = 1889568 * k + 680419 := by
    unfold C
    simp [show (3779136 * k + 1360838) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 680419) = 5668704 * k + 2041258 := by
    unfold C
    simp [show (1889568 * k + 680419) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2041258) = 2834352 * k + 1020629 := by
    unfold C
    simp [show (5668704 * k + 2041258) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1020629) = 8503056 * k + 3061888 := by
    unfold C
    simp [show (2834352 * k + 1020629) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3061888) = 4251528 * k + 1530944 := by
    unfold C
    simp [show (8503056 * k + 3061888) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1530944) = 2125764 * k + 765472 := by
    unfold C
    simp [show (4251528 * k + 1530944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 765472) = 1062882 * k + 382736 := by
    unfold C
    simp [show (2125764 * k + 765472) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 382736) = 531441 * k + 191368 := by
    unfold C
    simp [show (1062882 * k + 382736) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 377583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 377583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_377671 : ∀ k : Nat,
    iterate (1048576 * k + 377671) 32 = 531441 * k + 191413 ∧
      531441 * k + 191413 < 1048576 * k + 377671 := by
  intro k
  have h1 : C (1048576 * k + 377671) = 3145728 * k + 1133014 := by
    unfold C
    simp [show (1048576 * k + 377671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1133014) = 1572864 * k + 566507 := by
    unfold C
    simp [show (3145728 * k + 1133014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 566507) = 4718592 * k + 1699522 := by
    unfold C
    simp [show (1572864 * k + 566507) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1699522) = 2359296 * k + 849761 := by
    unfold C
    simp [show (4718592 * k + 1699522) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 849761) = 7077888 * k + 2549284 := by
    unfold C
    simp [show (2359296 * k + 849761) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2549284) = 3538944 * k + 1274642 := by
    unfold C
    simp [show (7077888 * k + 2549284) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1274642) = 1769472 * k + 637321 := by
    unfold C
    simp [show (3538944 * k + 1274642) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 637321) = 5308416 * k + 1911964 := by
    unfold C
    simp [show (1769472 * k + 637321) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1911964) = 2654208 * k + 955982 := by
    unfold C
    simp [show (5308416 * k + 1911964) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 955982) = 1327104 * k + 477991 := by
    unfold C
    simp [show (2654208 * k + 955982) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 477991) = 3981312 * k + 1433974 := by
    unfold C
    simp [show (1327104 * k + 477991) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1433974) = 1990656 * k + 716987 := by
    unfold C
    simp [show (3981312 * k + 1433974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 716987) = 5971968 * k + 2150962 := by
    unfold C
    simp [show (1990656 * k + 716987) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2150962) = 2985984 * k + 1075481 := by
    unfold C
    simp [show (5971968 * k + 2150962) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1075481) = 8957952 * k + 3226444 := by
    unfold C
    simp [show (2985984 * k + 1075481) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3226444) = 4478976 * k + 1613222 := by
    unfold C
    simp [show (8957952 * k + 3226444) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1613222) = 2239488 * k + 806611 := by
    unfold C
    simp [show (4478976 * k + 1613222) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 806611) = 6718464 * k + 2419834 := by
    unfold C
    simp [show (2239488 * k + 806611) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2419834) = 3359232 * k + 1209917 := by
    unfold C
    simp [show (6718464 * k + 2419834) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1209917) = 10077696 * k + 3629752 := by
    unfold C
    simp [show (3359232 * k + 1209917) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3629752) = 5038848 * k + 1814876 := by
    unfold C
    simp [show (10077696 * k + 3629752) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1814876) = 2519424 * k + 907438 := by
    unfold C
    simp [show (5038848 * k + 1814876) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 907438) = 1259712 * k + 453719 := by
    unfold C
    simp [show (2519424 * k + 907438) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 453719) = 3779136 * k + 1361158 := by
    unfold C
    simp [show (1259712 * k + 453719) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1361158) = 1889568 * k + 680579 := by
    unfold C
    simp [show (3779136 * k + 1361158) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 680579) = 5668704 * k + 2041738 := by
    unfold C
    simp [show (1889568 * k + 680579) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2041738) = 2834352 * k + 1020869 := by
    unfold C
    simp [show (5668704 * k + 2041738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1020869) = 8503056 * k + 3062608 := by
    unfold C
    simp [show (2834352 * k + 1020869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3062608) = 4251528 * k + 1531304 := by
    unfold C
    simp [show (8503056 * k + 3062608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1531304) = 2125764 * k + 765652 := by
    unfold C
    simp [show (4251528 * k + 1531304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 765652) = 1062882 * k + 382826 := by
    unfold C
    simp [show (2125764 * k + 765652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 382826) = 531441 * k + 191413 := by
    unfold C
    simp [show (1062882 * k + 382826) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 377671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 377671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_377727 : ∀ k : Nat,
    iterate (1048576 * k + 377727) 32 = 531441 * k + 191441 ∧
      531441 * k + 191441 < 1048576 * k + 377727 := by
  intro k
  have h1 : C (1048576 * k + 377727) = 3145728 * k + 1133182 := by
    unfold C
    simp [show (1048576 * k + 377727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1133182) = 1572864 * k + 566591 := by
    unfold C
    simp [show (3145728 * k + 1133182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 566591) = 4718592 * k + 1699774 := by
    unfold C
    simp [show (1572864 * k + 566591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1699774) = 2359296 * k + 849887 := by
    unfold C
    simp [show (4718592 * k + 1699774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 849887) = 7077888 * k + 2549662 := by
    unfold C
    simp [show (2359296 * k + 849887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2549662) = 3538944 * k + 1274831 := by
    unfold C
    simp [show (7077888 * k + 2549662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1274831) = 10616832 * k + 3824494 := by
    unfold C
    simp [show (3538944 * k + 1274831) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3824494) = 5308416 * k + 1912247 := by
    unfold C
    simp [show (10616832 * k + 3824494) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1912247) = 15925248 * k + 5736742 := by
    unfold C
    simp [show (5308416 * k + 1912247) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5736742) = 7962624 * k + 2868371 := by
    unfold C
    simp [show (15925248 * k + 5736742) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2868371) = 23887872 * k + 8605114 := by
    unfold C
    simp [show (7962624 * k + 2868371) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8605114) = 11943936 * k + 4302557 := by
    unfold C
    simp [show (23887872 * k + 8605114) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4302557) = 35831808 * k + 12907672 := by
    unfold C
    simp [show (11943936 * k + 4302557) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12907672) = 17915904 * k + 6453836 := by
    unfold C
    simp [show (35831808 * k + 12907672) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6453836) = 8957952 * k + 3226918 := by
    unfold C
    simp [show (17915904 * k + 6453836) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3226918) = 4478976 * k + 1613459 := by
    unfold C
    simp [show (8957952 * k + 3226918) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1613459) = 13436928 * k + 4840378 := by
    unfold C
    simp [show (4478976 * k + 1613459) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4840378) = 6718464 * k + 2420189 := by
    unfold C
    simp [show (13436928 * k + 4840378) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2420189) = 20155392 * k + 7260568 := by
    unfold C
    simp [show (6718464 * k + 2420189) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7260568) = 10077696 * k + 3630284 := by
    unfold C
    simp [show (20155392 * k + 7260568) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3630284) = 5038848 * k + 1815142 := by
    unfold C
    simp [show (10077696 * k + 3630284) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1815142) = 2519424 * k + 907571 := by
    unfold C
    simp [show (5038848 * k + 1815142) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 907571) = 7558272 * k + 2722714 := by
    unfold C
    simp [show (2519424 * k + 907571) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2722714) = 3779136 * k + 1361357 := by
    unfold C
    simp [show (7558272 * k + 2722714) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1361357) = 11337408 * k + 4084072 := by
    unfold C
    simp [show (3779136 * k + 1361357) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4084072) = 5668704 * k + 2042036 := by
    unfold C
    simp [show (11337408 * k + 4084072) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2042036) = 2834352 * k + 1021018 := by
    unfold C
    simp [show (5668704 * k + 2042036) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1021018) = 1417176 * k + 510509 := by
    unfold C
    simp [show (2834352 * k + 1021018) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 510509) = 4251528 * k + 1531528 := by
    unfold C
    simp [show (1417176 * k + 510509) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1531528) = 2125764 * k + 765764 := by
    unfold C
    simp [show (4251528 * k + 1531528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 765764) = 1062882 * k + 382882 := by
    unfold C
    simp [show (2125764 * k + 765764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 382882) = 531441 * k + 191441 := by
    unfold C
    simp [show (1062882 * k + 382882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 377727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 377727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_377839 : ∀ k : Nat,
    iterate (1048576 * k + 377839) 32 = 531441 * k + 191498 ∧
      531441 * k + 191498 < 1048576 * k + 377839 := by
  intro k
  have h1 : C (1048576 * k + 377839) = 3145728 * k + 1133518 := by
    unfold C
    simp [show (1048576 * k + 377839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1133518) = 1572864 * k + 566759 := by
    unfold C
    simp [show (3145728 * k + 1133518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 566759) = 4718592 * k + 1700278 := by
    unfold C
    simp [show (1572864 * k + 566759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1700278) = 2359296 * k + 850139 := by
    unfold C
    simp [show (4718592 * k + 1700278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 850139) = 7077888 * k + 2550418 := by
    unfold C
    simp [show (2359296 * k + 850139) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2550418) = 3538944 * k + 1275209 := by
    unfold C
    simp [show (7077888 * k + 2550418) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1275209) = 10616832 * k + 3825628 := by
    unfold C
    simp [show (3538944 * k + 1275209) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3825628) = 5308416 * k + 1912814 := by
    unfold C
    simp [show (10616832 * k + 3825628) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1912814) = 2654208 * k + 956407 := by
    unfold C
    simp [show (5308416 * k + 1912814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 956407) = 7962624 * k + 2869222 := by
    unfold C
    simp [show (2654208 * k + 956407) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2869222) = 3981312 * k + 1434611 := by
    unfold C
    simp [show (7962624 * k + 2869222) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1434611) = 11943936 * k + 4303834 := by
    unfold C
    simp [show (3981312 * k + 1434611) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4303834) = 5971968 * k + 2151917 := by
    unfold C
    simp [show (11943936 * k + 4303834) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2151917) = 17915904 * k + 6455752 := by
    unfold C
    simp [show (5971968 * k + 2151917) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6455752) = 8957952 * k + 3227876 := by
    unfold C
    simp [show (17915904 * k + 6455752) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3227876) = 4478976 * k + 1613938 := by
    unfold C
    simp [show (8957952 * k + 3227876) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1613938) = 2239488 * k + 806969 := by
    unfold C
    simp [show (4478976 * k + 1613938) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 806969) = 6718464 * k + 2420908 := by
    unfold C
    simp [show (2239488 * k + 806969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2420908) = 3359232 * k + 1210454 := by
    unfold C
    simp [show (6718464 * k + 2420908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1210454) = 1679616 * k + 605227 := by
    unfold C
    simp [show (3359232 * k + 1210454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 605227) = 5038848 * k + 1815682 := by
    unfold C
    simp [show (1679616 * k + 605227) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1815682) = 2519424 * k + 907841 := by
    unfold C
    simp [show (5038848 * k + 1815682) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 907841) = 7558272 * k + 2723524 := by
    unfold C
    simp [show (2519424 * k + 907841) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2723524) = 3779136 * k + 1361762 := by
    unfold C
    simp [show (7558272 * k + 2723524) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1361762) = 1889568 * k + 680881 := by
    unfold C
    simp [show (3779136 * k + 1361762) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 680881) = 5668704 * k + 2042644 := by
    unfold C
    simp [show (1889568 * k + 680881) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2042644) = 2834352 * k + 1021322 := by
    unfold C
    simp [show (5668704 * k + 2042644) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1021322) = 1417176 * k + 510661 := by
    unfold C
    simp [show (2834352 * k + 1021322) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 510661) = 4251528 * k + 1531984 := by
    unfold C
    simp [show (1417176 * k + 510661) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1531984) = 2125764 * k + 765992 := by
    unfold C
    simp [show (4251528 * k + 1531984) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 765992) = 1062882 * k + 382996 := by
    unfold C
    simp [show (2125764 * k + 765992) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 382996) = 531441 * k + 191498 := by
    unfold C
    simp [show (1062882 * k + 382996) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 377839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 377839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_377927 : ∀ k : Nat,
    iterate (1048576 * k + 377927) 32 = 531441 * k + 191543 ∧
      531441 * k + 191543 < 1048576 * k + 377927 := by
  intro k
  have h1 : C (1048576 * k + 377927) = 3145728 * k + 1133782 := by
    unfold C
    simp [show (1048576 * k + 377927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1133782) = 1572864 * k + 566891 := by
    unfold C
    simp [show (3145728 * k + 1133782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 566891) = 4718592 * k + 1700674 := by
    unfold C
    simp [show (1572864 * k + 566891) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1700674) = 2359296 * k + 850337 := by
    unfold C
    simp [show (4718592 * k + 1700674) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 850337) = 7077888 * k + 2551012 := by
    unfold C
    simp [show (2359296 * k + 850337) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2551012) = 3538944 * k + 1275506 := by
    unfold C
    simp [show (7077888 * k + 2551012) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1275506) = 1769472 * k + 637753 := by
    unfold C
    simp [show (3538944 * k + 1275506) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 637753) = 5308416 * k + 1913260 := by
    unfold C
    simp [show (1769472 * k + 637753) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1913260) = 2654208 * k + 956630 := by
    unfold C
    simp [show (5308416 * k + 1913260) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 956630) = 1327104 * k + 478315 := by
    unfold C
    simp [show (2654208 * k + 956630) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 478315) = 3981312 * k + 1434946 := by
    unfold C
    simp [show (1327104 * k + 478315) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1434946) = 1990656 * k + 717473 := by
    unfold C
    simp [show (3981312 * k + 1434946) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 717473) = 5971968 * k + 2152420 := by
    unfold C
    simp [show (1990656 * k + 717473) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2152420) = 2985984 * k + 1076210 := by
    unfold C
    simp [show (5971968 * k + 2152420) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1076210) = 1492992 * k + 538105 := by
    unfold C
    simp [show (2985984 * k + 1076210) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 538105) = 4478976 * k + 1614316 := by
    unfold C
    simp [show (1492992 * k + 538105) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1614316) = 2239488 * k + 807158 := by
    unfold C
    simp [show (4478976 * k + 1614316) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 807158) = 1119744 * k + 403579 := by
    unfold C
    simp [show (2239488 * k + 807158) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 403579) = 3359232 * k + 1210738 := by
    unfold C
    simp [show (1119744 * k + 403579) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1210738) = 1679616 * k + 605369 := by
    unfold C
    simp [show (3359232 * k + 1210738) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 605369) = 5038848 * k + 1816108 := by
    unfold C
    simp [show (1679616 * k + 605369) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1816108) = 2519424 * k + 908054 := by
    unfold C
    simp [show (5038848 * k + 1816108) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 908054) = 1259712 * k + 454027 := by
    unfold C
    simp [show (2519424 * k + 908054) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 454027) = 3779136 * k + 1362082 := by
    unfold C
    simp [show (1259712 * k + 454027) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1362082) = 1889568 * k + 681041 := by
    unfold C
    simp [show (3779136 * k + 1362082) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 681041) = 5668704 * k + 2043124 := by
    unfold C
    simp [show (1889568 * k + 681041) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2043124) = 2834352 * k + 1021562 := by
    unfold C
    simp [show (5668704 * k + 2043124) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1021562) = 1417176 * k + 510781 := by
    unfold C
    simp [show (2834352 * k + 1021562) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 510781) = 4251528 * k + 1532344 := by
    unfold C
    simp [show (1417176 * k + 510781) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1532344) = 2125764 * k + 766172 := by
    unfold C
    simp [show (4251528 * k + 1532344) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 766172) = 1062882 * k + 383086 := by
    unfold C
    simp [show (2125764 * k + 766172) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 383086) = 531441 * k + 191543 := by
    unfold C
    simp [show (1062882 * k + 383086) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 377927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 377927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_378495 : ∀ k : Nat,
    iterate (1048576 * k + 378495) 32 = 531441 * k + 191830 ∧
      531441 * k + 191830 < 1048576 * k + 378495 := by
  intro k
  have h1 : C (1048576 * k + 378495) = 3145728 * k + 1135486 := by
    unfold C
    simp [show (1048576 * k + 378495) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1135486) = 1572864 * k + 567743 := by
    unfold C
    simp [show (3145728 * k + 1135486) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 567743) = 4718592 * k + 1703230 := by
    unfold C
    simp [show (1572864 * k + 567743) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1703230) = 2359296 * k + 851615 := by
    unfold C
    simp [show (4718592 * k + 1703230) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 851615) = 7077888 * k + 2554846 := by
    unfold C
    simp [show (2359296 * k + 851615) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2554846) = 3538944 * k + 1277423 := by
    unfold C
    simp [show (7077888 * k + 2554846) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1277423) = 10616832 * k + 3832270 := by
    unfold C
    simp [show (3538944 * k + 1277423) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3832270) = 5308416 * k + 1916135 := by
    unfold C
    simp [show (10616832 * k + 3832270) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1916135) = 15925248 * k + 5748406 := by
    unfold C
    simp [show (5308416 * k + 1916135) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5748406) = 7962624 * k + 2874203 := by
    unfold C
    simp [show (15925248 * k + 5748406) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2874203) = 23887872 * k + 8622610 := by
    unfold C
    simp [show (7962624 * k + 2874203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8622610) = 11943936 * k + 4311305 := by
    unfold C
    simp [show (23887872 * k + 8622610) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4311305) = 35831808 * k + 12933916 := by
    unfold C
    simp [show (11943936 * k + 4311305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 12933916) = 17915904 * k + 6466958 := by
    unfold C
    simp [show (35831808 * k + 12933916) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6466958) = 8957952 * k + 3233479 := by
    unfold C
    simp [show (17915904 * k + 6466958) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3233479) = 26873856 * k + 9700438 := by
    unfold C
    simp [show (8957952 * k + 3233479) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9700438) = 13436928 * k + 4850219 := by
    unfold C
    simp [show (26873856 * k + 9700438) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4850219) = 40310784 * k + 14550658 := by
    unfold C
    simp [show (13436928 * k + 4850219) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 14550658) = 20155392 * k + 7275329 := by
    unfold C
    simp [show (40310784 * k + 14550658) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7275329) = 60466176 * k + 21825988 := by
    unfold C
    simp [show (20155392 * k + 7275329) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 21825988) = 30233088 * k + 10912994 := by
    unfold C
    simp [show (60466176 * k + 21825988) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 10912994) = 15116544 * k + 5456497 := by
    unfold C
    simp [show (30233088 * k + 10912994) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5456497) = 45349632 * k + 16369492 := by
    unfold C
    simp [show (15116544 * k + 5456497) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 16369492) = 22674816 * k + 8184746 := by
    unfold C
    simp [show (45349632 * k + 16369492) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8184746) = 11337408 * k + 4092373 := by
    unfold C
    simp [show (22674816 * k + 8184746) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4092373) = 34012224 * k + 12277120 := by
    unfold C
    simp [show (11337408 * k + 4092373) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12277120) = 17006112 * k + 6138560 := by
    unfold C
    simp [show (34012224 * k + 12277120) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6138560) = 8503056 * k + 3069280 := by
    unfold C
    simp [show (17006112 * k + 6138560) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3069280) = 4251528 * k + 1534640 := by
    unfold C
    simp [show (8503056 * k + 3069280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1534640) = 2125764 * k + 767320 := by
    unfold C
    simp [show (4251528 * k + 1534640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 767320) = 1062882 * k + 383660 := by
    unfold C
    simp [show (2125764 * k + 767320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 383660) = 531441 * k + 191830 := by
    unfold C
    simp [show (1062882 * k + 383660) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 378495) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 378495)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_378695 : ∀ k : Nat,
    iterate (1048576 * k + 378695) 32 = 531441 * k + 191932 ∧
      531441 * k + 191932 < 1048576 * k + 378695 := by
  intro k
  have h1 : C (1048576 * k + 378695) = 3145728 * k + 1136086 := by
    unfold C
    simp [show (1048576 * k + 378695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1136086) = 1572864 * k + 568043 := by
    unfold C
    simp [show (3145728 * k + 1136086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 568043) = 4718592 * k + 1704130 := by
    unfold C
    simp [show (1572864 * k + 568043) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1704130) = 2359296 * k + 852065 := by
    unfold C
    simp [show (4718592 * k + 1704130) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 852065) = 7077888 * k + 2556196 := by
    unfold C
    simp [show (2359296 * k + 852065) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2556196) = 3538944 * k + 1278098 := by
    unfold C
    simp [show (7077888 * k + 2556196) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1278098) = 1769472 * k + 639049 := by
    unfold C
    simp [show (3538944 * k + 1278098) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 639049) = 5308416 * k + 1917148 := by
    unfold C
    simp [show (1769472 * k + 639049) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1917148) = 2654208 * k + 958574 := by
    unfold C
    simp [show (5308416 * k + 1917148) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 958574) = 1327104 * k + 479287 := by
    unfold C
    simp [show (2654208 * k + 958574) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 479287) = 3981312 * k + 1437862 := by
    unfold C
    simp [show (1327104 * k + 479287) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1437862) = 1990656 * k + 718931 := by
    unfold C
    simp [show (3981312 * k + 1437862) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 718931) = 5971968 * k + 2156794 := by
    unfold C
    simp [show (1990656 * k + 718931) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2156794) = 2985984 * k + 1078397 := by
    unfold C
    simp [show (5971968 * k + 2156794) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1078397) = 8957952 * k + 3235192 := by
    unfold C
    simp [show (2985984 * k + 1078397) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3235192) = 4478976 * k + 1617596 := by
    unfold C
    simp [show (8957952 * k + 3235192) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1617596) = 2239488 * k + 808798 := by
    unfold C
    simp [show (4478976 * k + 1617596) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 808798) = 1119744 * k + 404399 := by
    unfold C
    simp [show (2239488 * k + 808798) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 404399) = 3359232 * k + 1213198 := by
    unfold C
    simp [show (1119744 * k + 404399) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1213198) = 1679616 * k + 606599 := by
    unfold C
    simp [show (3359232 * k + 1213198) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 606599) = 5038848 * k + 1819798 := by
    unfold C
    simp [show (1679616 * k + 606599) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1819798) = 2519424 * k + 909899 := by
    unfold C
    simp [show (5038848 * k + 1819798) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 909899) = 7558272 * k + 2729698 := by
    unfold C
    simp [show (2519424 * k + 909899) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2729698) = 3779136 * k + 1364849 := by
    unfold C
    simp [show (7558272 * k + 2729698) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1364849) = 11337408 * k + 4094548 := by
    unfold C
    simp [show (3779136 * k + 1364849) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4094548) = 5668704 * k + 2047274 := by
    unfold C
    simp [show (11337408 * k + 4094548) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2047274) = 2834352 * k + 1023637 := by
    unfold C
    simp [show (5668704 * k + 2047274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1023637) = 8503056 * k + 3070912 := by
    unfold C
    simp [show (2834352 * k + 1023637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3070912) = 4251528 * k + 1535456 := by
    unfold C
    simp [show (8503056 * k + 3070912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1535456) = 2125764 * k + 767728 := by
    unfold C
    simp [show (4251528 * k + 1535456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 767728) = 1062882 * k + 383864 := by
    unfold C
    simp [show (2125764 * k + 767728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 383864) = 531441 * k + 191932 := by
    unfold C
    simp [show (1062882 * k + 383864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 378695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 378695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_379935 : ∀ k : Nat,
    iterate (1048576 * k + 379935) 32 = 531441 * k + 192560 ∧
      531441 * k + 192560 < 1048576 * k + 379935 := by
  intro k
  have h1 : C (1048576 * k + 379935) = 3145728 * k + 1139806 := by
    unfold C
    simp [show (1048576 * k + 379935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1139806) = 1572864 * k + 569903 := by
    unfold C
    simp [show (3145728 * k + 1139806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 569903) = 4718592 * k + 1709710 := by
    unfold C
    simp [show (1572864 * k + 569903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1709710) = 2359296 * k + 854855 := by
    unfold C
    simp [show (4718592 * k + 1709710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 854855) = 7077888 * k + 2564566 := by
    unfold C
    simp [show (2359296 * k + 854855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2564566) = 3538944 * k + 1282283 := by
    unfold C
    simp [show (7077888 * k + 2564566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1282283) = 10616832 * k + 3846850 := by
    unfold C
    simp [show (3538944 * k + 1282283) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3846850) = 5308416 * k + 1923425 := by
    unfold C
    simp [show (10616832 * k + 3846850) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1923425) = 15925248 * k + 5770276 := by
    unfold C
    simp [show (5308416 * k + 1923425) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5770276) = 7962624 * k + 2885138 := by
    unfold C
    simp [show (15925248 * k + 5770276) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2885138) = 3981312 * k + 1442569 := by
    unfold C
    simp [show (7962624 * k + 2885138) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1442569) = 11943936 * k + 4327708 := by
    unfold C
    simp [show (3981312 * k + 1442569) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4327708) = 5971968 * k + 2163854 := by
    unfold C
    simp [show (11943936 * k + 4327708) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2163854) = 2985984 * k + 1081927 := by
    unfold C
    simp [show (5971968 * k + 2163854) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1081927) = 8957952 * k + 3245782 := by
    unfold C
    simp [show (2985984 * k + 1081927) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3245782) = 4478976 * k + 1622891 := by
    unfold C
    simp [show (8957952 * k + 3245782) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1622891) = 13436928 * k + 4868674 := by
    unfold C
    simp [show (4478976 * k + 1622891) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4868674) = 6718464 * k + 2434337 := by
    unfold C
    simp [show (13436928 * k + 4868674) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2434337) = 20155392 * k + 7303012 := by
    unfold C
    simp [show (6718464 * k + 2434337) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7303012) = 10077696 * k + 3651506 := by
    unfold C
    simp [show (20155392 * k + 7303012) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3651506) = 5038848 * k + 1825753 := by
    unfold C
    simp [show (10077696 * k + 3651506) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1825753) = 15116544 * k + 5477260 := by
    unfold C
    simp [show (5038848 * k + 1825753) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5477260) = 7558272 * k + 2738630 := by
    unfold C
    simp [show (15116544 * k + 5477260) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2738630) = 3779136 * k + 1369315 := by
    unfold C
    simp [show (7558272 * k + 2738630) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1369315) = 11337408 * k + 4107946 := by
    unfold C
    simp [show (3779136 * k + 1369315) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4107946) = 5668704 * k + 2053973 := by
    unfold C
    simp [show (11337408 * k + 4107946) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2053973) = 17006112 * k + 6161920 := by
    unfold C
    simp [show (5668704 * k + 2053973) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6161920) = 8503056 * k + 3080960 := by
    unfold C
    simp [show (17006112 * k + 6161920) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3080960) = 4251528 * k + 1540480 := by
    unfold C
    simp [show (8503056 * k + 3080960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1540480) = 2125764 * k + 770240 := by
    unfold C
    simp [show (4251528 * k + 1540480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 770240) = 1062882 * k + 385120 := by
    unfold C
    simp [show (2125764 * k + 770240) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 385120) = 531441 * k + 192560 := by
    unfold C
    simp [show (1062882 * k + 385120) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 379935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 379935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_380223 : ∀ k : Nat,
    iterate (1048576 * k + 380223) 32 = 531441 * k + 192706 ∧
      531441 * k + 192706 < 1048576 * k + 380223 := by
  intro k
  have h1 : C (1048576 * k + 380223) = 3145728 * k + 1140670 := by
    unfold C
    simp [show (1048576 * k + 380223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1140670) = 1572864 * k + 570335 := by
    unfold C
    simp [show (3145728 * k + 1140670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 570335) = 4718592 * k + 1711006 := by
    unfold C
    simp [show (1572864 * k + 570335) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1711006) = 2359296 * k + 855503 := by
    unfold C
    simp [show (4718592 * k + 1711006) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 855503) = 7077888 * k + 2566510 := by
    unfold C
    simp [show (2359296 * k + 855503) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2566510) = 3538944 * k + 1283255 := by
    unfold C
    simp [show (7077888 * k + 2566510) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1283255) = 10616832 * k + 3849766 := by
    unfold C
    simp [show (3538944 * k + 1283255) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3849766) = 5308416 * k + 1924883 := by
    unfold C
    simp [show (10616832 * k + 3849766) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1924883) = 15925248 * k + 5774650 := by
    unfold C
    simp [show (5308416 * k + 1924883) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5774650) = 7962624 * k + 2887325 := by
    unfold C
    simp [show (15925248 * k + 5774650) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2887325) = 23887872 * k + 8661976 := by
    unfold C
    simp [show (7962624 * k + 2887325) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8661976) = 11943936 * k + 4330988 := by
    unfold C
    simp [show (23887872 * k + 8661976) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4330988) = 5971968 * k + 2165494 := by
    unfold C
    simp [show (11943936 * k + 4330988) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2165494) = 2985984 * k + 1082747 := by
    unfold C
    simp [show (5971968 * k + 2165494) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1082747) = 8957952 * k + 3248242 := by
    unfold C
    simp [show (2985984 * k + 1082747) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3248242) = 4478976 * k + 1624121 := by
    unfold C
    simp [show (8957952 * k + 3248242) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1624121) = 13436928 * k + 4872364 := by
    unfold C
    simp [show (4478976 * k + 1624121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4872364) = 6718464 * k + 2436182 := by
    unfold C
    simp [show (13436928 * k + 4872364) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2436182) = 3359232 * k + 1218091 := by
    unfold C
    simp [show (6718464 * k + 2436182) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1218091) = 10077696 * k + 3654274 := by
    unfold C
    simp [show (3359232 * k + 1218091) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3654274) = 5038848 * k + 1827137 := by
    unfold C
    simp [show (10077696 * k + 3654274) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1827137) = 15116544 * k + 5481412 := by
    unfold C
    simp [show (5038848 * k + 1827137) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5481412) = 7558272 * k + 2740706 := by
    unfold C
    simp [show (15116544 * k + 5481412) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2740706) = 3779136 * k + 1370353 := by
    unfold C
    simp [show (7558272 * k + 2740706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1370353) = 11337408 * k + 4111060 := by
    unfold C
    simp [show (3779136 * k + 1370353) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4111060) = 5668704 * k + 2055530 := by
    unfold C
    simp [show (11337408 * k + 4111060) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2055530) = 2834352 * k + 1027765 := by
    unfold C
    simp [show (5668704 * k + 2055530) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1027765) = 8503056 * k + 3083296 := by
    unfold C
    simp [show (2834352 * k + 1027765) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3083296) = 4251528 * k + 1541648 := by
    unfold C
    simp [show (8503056 * k + 3083296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1541648) = 2125764 * k + 770824 := by
    unfold C
    simp [show (4251528 * k + 1541648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 770824) = 1062882 * k + 385412 := by
    unfold C
    simp [show (2125764 * k + 770824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 385412) = 531441 * k + 192706 := by
    unfold C
    simp [show (1062882 * k + 385412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 380223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 380223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_380655 : ∀ k : Nat,
    iterate (1048576 * k + 380655) 32 = 531441 * k + 192925 ∧
      531441 * k + 192925 < 1048576 * k + 380655 := by
  intro k
  have h1 : C (1048576 * k + 380655) = 3145728 * k + 1141966 := by
    unfold C
    simp [show (1048576 * k + 380655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1141966) = 1572864 * k + 570983 := by
    unfold C
    simp [show (3145728 * k + 1141966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 570983) = 4718592 * k + 1712950 := by
    unfold C
    simp [show (1572864 * k + 570983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1712950) = 2359296 * k + 856475 := by
    unfold C
    simp [show (4718592 * k + 1712950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 856475) = 7077888 * k + 2569426 := by
    unfold C
    simp [show (2359296 * k + 856475) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2569426) = 3538944 * k + 1284713 := by
    unfold C
    simp [show (7077888 * k + 2569426) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1284713) = 10616832 * k + 3854140 := by
    unfold C
    simp [show (3538944 * k + 1284713) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3854140) = 5308416 * k + 1927070 := by
    unfold C
    simp [show (10616832 * k + 3854140) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1927070) = 2654208 * k + 963535 := by
    unfold C
    simp [show (5308416 * k + 1927070) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 963535) = 7962624 * k + 2890606 := by
    unfold C
    simp [show (2654208 * k + 963535) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2890606) = 3981312 * k + 1445303 := by
    unfold C
    simp [show (7962624 * k + 2890606) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1445303) = 11943936 * k + 4335910 := by
    unfold C
    simp [show (3981312 * k + 1445303) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4335910) = 5971968 * k + 2167955 := by
    unfold C
    simp [show (11943936 * k + 4335910) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2167955) = 17915904 * k + 6503866 := by
    unfold C
    simp [show (5971968 * k + 2167955) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 6503866) = 8957952 * k + 3251933 := by
    unfold C
    simp [show (17915904 * k + 6503866) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3251933) = 26873856 * k + 9755800 := by
    unfold C
    simp [show (8957952 * k + 3251933) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9755800) = 13436928 * k + 4877900 := by
    unfold C
    simp [show (26873856 * k + 9755800) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4877900) = 6718464 * k + 2438950 := by
    unfold C
    simp [show (13436928 * k + 4877900) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2438950) = 3359232 * k + 1219475 := by
    unfold C
    simp [show (6718464 * k + 2438950) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1219475) = 10077696 * k + 3658426 := by
    unfold C
    simp [show (3359232 * k + 1219475) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3658426) = 5038848 * k + 1829213 := by
    unfold C
    simp [show (10077696 * k + 3658426) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1829213) = 15116544 * k + 5487640 := by
    unfold C
    simp [show (5038848 * k + 1829213) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5487640) = 7558272 * k + 2743820 := by
    unfold C
    simp [show (15116544 * k + 5487640) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2743820) = 3779136 * k + 1371910 := by
    unfold C
    simp [show (7558272 * k + 2743820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1371910) = 1889568 * k + 685955 := by
    unfold C
    simp [show (3779136 * k + 1371910) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 685955) = 5668704 * k + 2057866 := by
    unfold C
    simp [show (1889568 * k + 685955) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2057866) = 2834352 * k + 1028933 := by
    unfold C
    simp [show (5668704 * k + 2057866) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1028933) = 8503056 * k + 3086800 := by
    unfold C
    simp [show (2834352 * k + 1028933) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3086800) = 4251528 * k + 1543400 := by
    unfold C
    simp [show (8503056 * k + 3086800) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1543400) = 2125764 * k + 771700 := by
    unfold C
    simp [show (4251528 * k + 1543400) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 771700) = 1062882 * k + 385850 := by
    unfold C
    simp [show (2125764 * k + 771700) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 385850) = 531441 * k + 192925 := by
    unfold C
    simp [show (1062882 * k + 385850) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 380655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 380655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_381095 : ∀ k : Nat,
    iterate (1048576 * k + 381095) 32 = 531441 * k + 193148 ∧
      531441 * k + 193148 < 1048576 * k + 381095 := by
  intro k
  have h1 : C (1048576 * k + 381095) = 3145728 * k + 1143286 := by
    unfold C
    simp [show (1048576 * k + 381095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1143286) = 1572864 * k + 571643 := by
    unfold C
    simp [show (3145728 * k + 1143286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 571643) = 4718592 * k + 1714930 := by
    unfold C
    simp [show (1572864 * k + 571643) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1714930) = 2359296 * k + 857465 := by
    unfold C
    simp [show (4718592 * k + 1714930) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 857465) = 7077888 * k + 2572396 := by
    unfold C
    simp [show (2359296 * k + 857465) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2572396) = 3538944 * k + 1286198 := by
    unfold C
    simp [show (7077888 * k + 2572396) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1286198) = 1769472 * k + 643099 := by
    unfold C
    simp [show (3538944 * k + 1286198) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 643099) = 5308416 * k + 1929298 := by
    unfold C
    simp [show (1769472 * k + 643099) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1929298) = 2654208 * k + 964649 := by
    unfold C
    simp [show (5308416 * k + 1929298) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 964649) = 7962624 * k + 2893948 := by
    unfold C
    simp [show (2654208 * k + 964649) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2893948) = 3981312 * k + 1446974 := by
    unfold C
    simp [show (7962624 * k + 2893948) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1446974) = 1990656 * k + 723487 := by
    unfold C
    simp [show (3981312 * k + 1446974) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 723487) = 5971968 * k + 2170462 := by
    unfold C
    simp [show (1990656 * k + 723487) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2170462) = 2985984 * k + 1085231 := by
    unfold C
    simp [show (5971968 * k + 2170462) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1085231) = 8957952 * k + 3255694 := by
    unfold C
    simp [show (2985984 * k + 1085231) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3255694) = 4478976 * k + 1627847 := by
    unfold C
    simp [show (8957952 * k + 3255694) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1627847) = 13436928 * k + 4883542 := by
    unfold C
    simp [show (4478976 * k + 1627847) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4883542) = 6718464 * k + 2441771 := by
    unfold C
    simp [show (13436928 * k + 4883542) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2441771) = 20155392 * k + 7325314 := by
    unfold C
    simp [show (6718464 * k + 2441771) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7325314) = 10077696 * k + 3662657 := by
    unfold C
    simp [show (20155392 * k + 7325314) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3662657) = 30233088 * k + 10987972 := by
    unfold C
    simp [show (10077696 * k + 3662657) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 10987972) = 15116544 * k + 5493986 := by
    unfold C
    simp [show (30233088 * k + 10987972) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5493986) = 7558272 * k + 2746993 := by
    unfold C
    simp [show (15116544 * k + 5493986) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2746993) = 22674816 * k + 8240980 := by
    unfold C
    simp [show (7558272 * k + 2746993) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8240980) = 11337408 * k + 4120490 := by
    unfold C
    simp [show (22674816 * k + 8240980) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4120490) = 5668704 * k + 2060245 := by
    unfold C
    simp [show (11337408 * k + 4120490) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2060245) = 17006112 * k + 6180736 := by
    unfold C
    simp [show (5668704 * k + 2060245) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6180736) = 8503056 * k + 3090368 := by
    unfold C
    simp [show (17006112 * k + 6180736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3090368) = 4251528 * k + 1545184 := by
    unfold C
    simp [show (8503056 * k + 3090368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1545184) = 2125764 * k + 772592 := by
    unfold C
    simp [show (4251528 * k + 1545184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 772592) = 1062882 * k + 386296 := by
    unfold C
    simp [show (2125764 * k + 772592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 386296) = 531441 * k + 193148 := by
    unfold C
    simp [show (1062882 * k + 386296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 381095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 381095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_382591 : ∀ k : Nat,
    iterate (1048576 * k + 382591) 32 = 531441 * k + 193906 ∧
      531441 * k + 193906 < 1048576 * k + 382591 := by
  intro k
  have h1 : C (1048576 * k + 382591) = 3145728 * k + 1147774 := by
    unfold C
    simp [show (1048576 * k + 382591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1147774) = 1572864 * k + 573887 := by
    unfold C
    simp [show (3145728 * k + 1147774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 573887) = 4718592 * k + 1721662 := by
    unfold C
    simp [show (1572864 * k + 573887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1721662) = 2359296 * k + 860831 := by
    unfold C
    simp [show (4718592 * k + 1721662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 860831) = 7077888 * k + 2582494 := by
    unfold C
    simp [show (2359296 * k + 860831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2582494) = 3538944 * k + 1291247 := by
    unfold C
    simp [show (7077888 * k + 2582494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1291247) = 10616832 * k + 3873742 := by
    unfold C
    simp [show (3538944 * k + 1291247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3873742) = 5308416 * k + 1936871 := by
    unfold C
    simp [show (10616832 * k + 3873742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1936871) = 15925248 * k + 5810614 := by
    unfold C
    simp [show (5308416 * k + 1936871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5810614) = 7962624 * k + 2905307 := by
    unfold C
    simp [show (15925248 * k + 5810614) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2905307) = 23887872 * k + 8715922 := by
    unfold C
    simp [show (7962624 * k + 2905307) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8715922) = 11943936 * k + 4357961 := by
    unfold C
    simp [show (23887872 * k + 8715922) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4357961) = 35831808 * k + 13073884 := by
    unfold C
    simp [show (11943936 * k + 4357961) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13073884) = 17915904 * k + 6536942 := by
    unfold C
    simp [show (35831808 * k + 13073884) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6536942) = 8957952 * k + 3268471 := by
    unfold C
    simp [show (17915904 * k + 6536942) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3268471) = 26873856 * k + 9805414 := by
    unfold C
    simp [show (8957952 * k + 3268471) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 9805414) = 13436928 * k + 4902707 := by
    unfold C
    simp [show (26873856 * k + 9805414) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 4902707) = 40310784 * k + 14708122 := by
    unfold C
    simp [show (13436928 * k + 4902707) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 14708122) = 20155392 * k + 7354061 := by
    unfold C
    simp [show (40310784 * k + 14708122) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7354061) = 60466176 * k + 22062184 := by
    unfold C
    simp [show (20155392 * k + 7354061) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 22062184) = 30233088 * k + 11031092 := by
    unfold C
    simp [show (60466176 * k + 22062184) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 11031092) = 15116544 * k + 5515546 := by
    unfold C
    simp [show (30233088 * k + 11031092) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5515546) = 7558272 * k + 2757773 := by
    unfold C
    simp [show (15116544 * k + 5515546) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2757773) = 22674816 * k + 8273320 := by
    unfold C
    simp [show (7558272 * k + 2757773) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8273320) = 11337408 * k + 4136660 := by
    unfold C
    simp [show (22674816 * k + 8273320) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4136660) = 5668704 * k + 2068330 := by
    unfold C
    simp [show (11337408 * k + 4136660) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2068330) = 2834352 * k + 1034165 := by
    unfold C
    simp [show (5668704 * k + 2068330) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1034165) = 8503056 * k + 3102496 := by
    unfold C
    simp [show (2834352 * k + 1034165) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3102496) = 4251528 * k + 1551248 := by
    unfold C
    simp [show (8503056 * k + 3102496) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1551248) = 2125764 * k + 775624 := by
    unfold C
    simp [show (4251528 * k + 1551248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 775624) = 1062882 * k + 387812 := by
    unfold C
    simp [show (2125764 * k + 775624) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 387812) = 531441 * k + 193906 := by
    unfold C
    simp [show (1062882 * k + 387812) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 382591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 382591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_382847 : ∀ k : Nat,
    iterate (1048576 * k + 382847) 32 = 531441 * k + 194036 ∧
      531441 * k + 194036 < 1048576 * k + 382847 := by
  intro k
  have h1 : C (1048576 * k + 382847) = 3145728 * k + 1148542 := by
    unfold C
    simp [show (1048576 * k + 382847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1148542) = 1572864 * k + 574271 := by
    unfold C
    simp [show (3145728 * k + 1148542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 574271) = 4718592 * k + 1722814 := by
    unfold C
    simp [show (1572864 * k + 574271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1722814) = 2359296 * k + 861407 := by
    unfold C
    simp [show (4718592 * k + 1722814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 861407) = 7077888 * k + 2584222 := by
    unfold C
    simp [show (2359296 * k + 861407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2584222) = 3538944 * k + 1292111 := by
    unfold C
    simp [show (7077888 * k + 2584222) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1292111) = 10616832 * k + 3876334 := by
    unfold C
    simp [show (3538944 * k + 1292111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3876334) = 5308416 * k + 1938167 := by
    unfold C
    simp [show (10616832 * k + 3876334) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1938167) = 15925248 * k + 5814502 := by
    unfold C
    simp [show (5308416 * k + 1938167) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5814502) = 7962624 * k + 2907251 := by
    unfold C
    simp [show (15925248 * k + 5814502) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2907251) = 23887872 * k + 8721754 := by
    unfold C
    simp [show (7962624 * k + 2907251) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8721754) = 11943936 * k + 4360877 := by
    unfold C
    simp [show (23887872 * k + 8721754) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4360877) = 35831808 * k + 13082632 := by
    unfold C
    simp [show (11943936 * k + 4360877) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13082632) = 17915904 * k + 6541316 := by
    unfold C
    simp [show (35831808 * k + 13082632) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6541316) = 8957952 * k + 3270658 := by
    unfold C
    simp [show (17915904 * k + 6541316) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3270658) = 4478976 * k + 1635329 := by
    unfold C
    simp [show (8957952 * k + 3270658) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1635329) = 13436928 * k + 4905988 := by
    unfold C
    simp [show (4478976 * k + 1635329) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4905988) = 6718464 * k + 2452994 := by
    unfold C
    simp [show (13436928 * k + 4905988) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2452994) = 3359232 * k + 1226497 := by
    unfold C
    simp [show (6718464 * k + 2452994) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1226497) = 10077696 * k + 3679492 := by
    unfold C
    simp [show (3359232 * k + 1226497) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3679492) = 5038848 * k + 1839746 := by
    unfold C
    simp [show (10077696 * k + 3679492) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1839746) = 2519424 * k + 919873 := by
    unfold C
    simp [show (5038848 * k + 1839746) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 919873) = 7558272 * k + 2759620 := by
    unfold C
    simp [show (2519424 * k + 919873) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 2759620) = 3779136 * k + 1379810 := by
    unfold C
    simp [show (7558272 * k + 2759620) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1379810) = 1889568 * k + 689905 := by
    unfold C
    simp [show (3779136 * k + 1379810) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 689905) = 5668704 * k + 2069716 := by
    unfold C
    simp [show (1889568 * k + 689905) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2069716) = 2834352 * k + 1034858 := by
    unfold C
    simp [show (5668704 * k + 2069716) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1034858) = 1417176 * k + 517429 := by
    unfold C
    simp [show (2834352 * k + 1034858) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 517429) = 4251528 * k + 1552288 := by
    unfold C
    simp [show (1417176 * k + 517429) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1552288) = 2125764 * k + 776144 := by
    unfold C
    simp [show (4251528 * k + 1552288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 776144) = 1062882 * k + 388072 := by
    unfold C
    simp [show (2125764 * k + 776144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 388072) = 531441 * k + 194036 := by
    unfold C
    simp [show (1062882 * k + 388072) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 382847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 382847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_383455 : ∀ k : Nat,
    iterate (1048576 * k + 383455) 32 = 531441 * k + 194344 ∧
      531441 * k + 194344 < 1048576 * k + 383455 := by
  intro k
  have h1 : C (1048576 * k + 383455) = 3145728 * k + 1150366 := by
    unfold C
    simp [show (1048576 * k + 383455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1150366) = 1572864 * k + 575183 := by
    unfold C
    simp [show (3145728 * k + 1150366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 575183) = 4718592 * k + 1725550 := by
    unfold C
    simp [show (1572864 * k + 575183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1725550) = 2359296 * k + 862775 := by
    unfold C
    simp [show (4718592 * k + 1725550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 862775) = 7077888 * k + 2588326 := by
    unfold C
    simp [show (2359296 * k + 862775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2588326) = 3538944 * k + 1294163 := by
    unfold C
    simp [show (7077888 * k + 2588326) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1294163) = 10616832 * k + 3882490 := by
    unfold C
    simp [show (3538944 * k + 1294163) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3882490) = 5308416 * k + 1941245 := by
    unfold C
    simp [show (10616832 * k + 3882490) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1941245) = 15925248 * k + 5823736 := by
    unfold C
    simp [show (5308416 * k + 1941245) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5823736) = 7962624 * k + 2911868 := by
    unfold C
    simp [show (15925248 * k + 5823736) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2911868) = 3981312 * k + 1455934 := by
    unfold C
    simp [show (7962624 * k + 2911868) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1455934) = 1990656 * k + 727967 := by
    unfold C
    simp [show (3981312 * k + 1455934) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 727967) = 5971968 * k + 2183902 := by
    unfold C
    simp [show (1990656 * k + 727967) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2183902) = 2985984 * k + 1091951 := by
    unfold C
    simp [show (5971968 * k + 2183902) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1091951) = 8957952 * k + 3275854 := by
    unfold C
    simp [show (2985984 * k + 1091951) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3275854) = 4478976 * k + 1637927 := by
    unfold C
    simp [show (8957952 * k + 3275854) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1637927) = 13436928 * k + 4913782 := by
    unfold C
    simp [show (4478976 * k + 1637927) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4913782) = 6718464 * k + 2456891 := by
    unfold C
    simp [show (13436928 * k + 4913782) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2456891) = 20155392 * k + 7370674 := by
    unfold C
    simp [show (6718464 * k + 2456891) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7370674) = 10077696 * k + 3685337 := by
    unfold C
    simp [show (20155392 * k + 7370674) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3685337) = 30233088 * k + 11056012 := by
    unfold C
    simp [show (10077696 * k + 3685337) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 11056012) = 15116544 * k + 5528006 := by
    unfold C
    simp [show (30233088 * k + 11056012) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5528006) = 7558272 * k + 2764003 := by
    unfold C
    simp [show (15116544 * k + 5528006) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2764003) = 22674816 * k + 8292010 := by
    unfold C
    simp [show (7558272 * k + 2764003) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8292010) = 11337408 * k + 4146005 := by
    unfold C
    simp [show (22674816 * k + 8292010) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4146005) = 34012224 * k + 12438016 := by
    unfold C
    simp [show (11337408 * k + 4146005) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 12438016) = 17006112 * k + 6219008 := by
    unfold C
    simp [show (34012224 * k + 12438016) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6219008) = 8503056 * k + 3109504 := by
    unfold C
    simp [show (17006112 * k + 6219008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3109504) = 4251528 * k + 1554752 := by
    unfold C
    simp [show (8503056 * k + 3109504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1554752) = 2125764 * k + 777376 := by
    unfold C
    simp [show (4251528 * k + 1554752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 777376) = 1062882 * k + 388688 := by
    unfold C
    simp [show (2125764 * k + 777376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 388688) = 531441 * k + 194344 := by
    unfold C
    simp [show (1062882 * k + 388688) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 383455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 383455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_384167 : ∀ k : Nat,
    iterate (1048576 * k + 384167) 32 = 531441 * k + 194705 ∧
      531441 * k + 194705 < 1048576 * k + 384167 := by
  intro k
  have h1 : C (1048576 * k + 384167) = 3145728 * k + 1152502 := by
    unfold C
    simp [show (1048576 * k + 384167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1152502) = 1572864 * k + 576251 := by
    unfold C
    simp [show (3145728 * k + 1152502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 576251) = 4718592 * k + 1728754 := by
    unfold C
    simp [show (1572864 * k + 576251) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1728754) = 2359296 * k + 864377 := by
    unfold C
    simp [show (4718592 * k + 1728754) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 864377) = 7077888 * k + 2593132 := by
    unfold C
    simp [show (2359296 * k + 864377) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2593132) = 3538944 * k + 1296566 := by
    unfold C
    simp [show (7077888 * k + 2593132) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1296566) = 1769472 * k + 648283 := by
    unfold C
    simp [show (3538944 * k + 1296566) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 648283) = 5308416 * k + 1944850 := by
    unfold C
    simp [show (1769472 * k + 648283) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1944850) = 2654208 * k + 972425 := by
    unfold C
    simp [show (5308416 * k + 1944850) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 972425) = 7962624 * k + 2917276 := by
    unfold C
    simp [show (2654208 * k + 972425) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2917276) = 3981312 * k + 1458638 := by
    unfold C
    simp [show (7962624 * k + 2917276) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1458638) = 1990656 * k + 729319 := by
    unfold C
    simp [show (3981312 * k + 1458638) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 729319) = 5971968 * k + 2187958 := by
    unfold C
    simp [show (1990656 * k + 729319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2187958) = 2985984 * k + 1093979 := by
    unfold C
    simp [show (5971968 * k + 2187958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1093979) = 8957952 * k + 3281938 := by
    unfold C
    simp [show (2985984 * k + 1093979) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3281938) = 4478976 * k + 1640969 := by
    unfold C
    simp [show (8957952 * k + 3281938) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1640969) = 13436928 * k + 4922908 := by
    unfold C
    simp [show (4478976 * k + 1640969) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4922908) = 6718464 * k + 2461454 := by
    unfold C
    simp [show (13436928 * k + 4922908) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2461454) = 3359232 * k + 1230727 := by
    unfold C
    simp [show (6718464 * k + 2461454) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1230727) = 10077696 * k + 3692182 := by
    unfold C
    simp [show (3359232 * k + 1230727) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3692182) = 5038848 * k + 1846091 := by
    unfold C
    simp [show (10077696 * k + 3692182) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1846091) = 15116544 * k + 5538274 := by
    unfold C
    simp [show (5038848 * k + 1846091) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5538274) = 7558272 * k + 2769137 := by
    unfold C
    simp [show (15116544 * k + 5538274) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2769137) = 22674816 * k + 8307412 := by
    unfold C
    simp [show (7558272 * k + 2769137) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 8307412) = 11337408 * k + 4153706 := by
    unfold C
    simp [show (22674816 * k + 8307412) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4153706) = 5668704 * k + 2076853 := by
    unfold C
    simp [show (11337408 * k + 4153706) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2076853) = 17006112 * k + 6230560 := by
    unfold C
    simp [show (5668704 * k + 2076853) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6230560) = 8503056 * k + 3115280 := by
    unfold C
    simp [show (17006112 * k + 6230560) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3115280) = 4251528 * k + 1557640 := by
    unfold C
    simp [show (8503056 * k + 3115280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1557640) = 2125764 * k + 778820 := by
    unfold C
    simp [show (4251528 * k + 1557640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 778820) = 1062882 * k + 389410 := by
    unfold C
    simp [show (2125764 * k + 778820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 389410) = 531441 * k + 194705 := by
    unfold C
    simp [show (1062882 * k + 389410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 384167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 384167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_384303 : ∀ k : Nat,
    iterate (1048576 * k + 384303) 32 = 531441 * k + 194774 ∧
      531441 * k + 194774 < 1048576 * k + 384303 := by
  intro k
  have h1 : C (1048576 * k + 384303) = 3145728 * k + 1152910 := by
    unfold C
    simp [show (1048576 * k + 384303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1152910) = 1572864 * k + 576455 := by
    unfold C
    simp [show (3145728 * k + 1152910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 576455) = 4718592 * k + 1729366 := by
    unfold C
    simp [show (1572864 * k + 576455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1729366) = 2359296 * k + 864683 := by
    unfold C
    simp [show (4718592 * k + 1729366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 864683) = 7077888 * k + 2594050 := by
    unfold C
    simp [show (2359296 * k + 864683) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2594050) = 3538944 * k + 1297025 := by
    unfold C
    simp [show (7077888 * k + 2594050) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1297025) = 10616832 * k + 3891076 := by
    unfold C
    simp [show (3538944 * k + 1297025) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3891076) = 5308416 * k + 1945538 := by
    unfold C
    simp [show (10616832 * k + 3891076) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1945538) = 2654208 * k + 972769 := by
    unfold C
    simp [show (5308416 * k + 1945538) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 972769) = 7962624 * k + 2918308 := by
    unfold C
    simp [show (2654208 * k + 972769) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2918308) = 3981312 * k + 1459154 := by
    unfold C
    simp [show (7962624 * k + 2918308) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1459154) = 1990656 * k + 729577 := by
    unfold C
    simp [show (3981312 * k + 1459154) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 729577) = 5971968 * k + 2188732 := by
    unfold C
    simp [show (1990656 * k + 729577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2188732) = 2985984 * k + 1094366 := by
    unfold C
    simp [show (5971968 * k + 2188732) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1094366) = 1492992 * k + 547183 := by
    unfold C
    simp [show (2985984 * k + 1094366) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 547183) = 4478976 * k + 1641550 := by
    unfold C
    simp [show (1492992 * k + 547183) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1641550) = 2239488 * k + 820775 := by
    unfold C
    simp [show (4478976 * k + 1641550) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 820775) = 6718464 * k + 2462326 := by
    unfold C
    simp [show (2239488 * k + 820775) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2462326) = 3359232 * k + 1231163 := by
    unfold C
    simp [show (6718464 * k + 2462326) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1231163) = 10077696 * k + 3693490 := by
    unfold C
    simp [show (3359232 * k + 1231163) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 3693490) = 5038848 * k + 1846745 := by
    unfold C
    simp [show (10077696 * k + 3693490) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1846745) = 15116544 * k + 5540236 := by
    unfold C
    simp [show (5038848 * k + 1846745) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 5540236) = 7558272 * k + 2770118 := by
    unfold C
    simp [show (15116544 * k + 5540236) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 2770118) = 3779136 * k + 1385059 := by
    unfold C
    simp [show (7558272 * k + 2770118) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1385059) = 11337408 * k + 4155178 := by
    unfold C
    simp [show (3779136 * k + 1385059) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4155178) = 5668704 * k + 2077589 := by
    unfold C
    simp [show (11337408 * k + 4155178) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2077589) = 17006112 * k + 6232768 := by
    unfold C
    simp [show (5668704 * k + 2077589) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 6232768) = 8503056 * k + 3116384 := by
    unfold C
    simp [show (17006112 * k + 6232768) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3116384) = 4251528 * k + 1558192 := by
    unfold C
    simp [show (8503056 * k + 3116384) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1558192) = 2125764 * k + 779096 := by
    unfold C
    simp [show (4251528 * k + 1558192) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 779096) = 1062882 * k + 389548 := by
    unfold C
    simp [show (2125764 * k + 779096) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 389548) = 531441 * k + 194774 := by
    unfold C
    simp [show (1062882 * k + 389548) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 384303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 384303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_385535 : ∀ k : Nat,
    iterate (1048576 * k + 385535) 32 = 531441 * k + 195398 ∧
      531441 * k + 195398 < 1048576 * k + 385535 := by
  intro k
  have h1 : C (1048576 * k + 385535) = 3145728 * k + 1156606 := by
    unfold C
    simp [show (1048576 * k + 385535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1156606) = 1572864 * k + 578303 := by
    unfold C
    simp [show (3145728 * k + 1156606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 578303) = 4718592 * k + 1734910 := by
    unfold C
    simp [show (1572864 * k + 578303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1734910) = 2359296 * k + 867455 := by
    unfold C
    simp [show (4718592 * k + 1734910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 867455) = 7077888 * k + 2602366 := by
    unfold C
    simp [show (2359296 * k + 867455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2602366) = 3538944 * k + 1301183 := by
    unfold C
    simp [show (7077888 * k + 2602366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1301183) = 10616832 * k + 3903550 := by
    unfold C
    simp [show (3538944 * k + 1301183) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3903550) = 5308416 * k + 1951775 := by
    unfold C
    simp [show (10616832 * k + 3903550) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1951775) = 15925248 * k + 5855326 := by
    unfold C
    simp [show (5308416 * k + 1951775) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5855326) = 7962624 * k + 2927663 := by
    unfold C
    simp [show (15925248 * k + 5855326) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2927663) = 23887872 * k + 8782990 := by
    unfold C
    simp [show (7962624 * k + 2927663) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8782990) = 11943936 * k + 4391495 := by
    unfold C
    simp [show (23887872 * k + 8782990) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4391495) = 35831808 * k + 13174486 := by
    unfold C
    simp [show (11943936 * k + 4391495) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13174486) = 17915904 * k + 6587243 := by
    unfold C
    simp [show (35831808 * k + 13174486) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6587243) = 53747712 * k + 19761730 := by
    unfold C
    simp [show (17915904 * k + 6587243) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 19761730) = 26873856 * k + 9880865 := by
    unfold C
    simp [show (53747712 * k + 19761730) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 9880865) = 80621568 * k + 29642596 := by
    unfold C
    simp [show (26873856 * k + 9880865) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 29642596) = 40310784 * k + 14821298 := by
    unfold C
    simp [show (80621568 * k + 29642596) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 14821298) = 20155392 * k + 7410649 := by
    unfold C
    simp [show (40310784 * k + 14821298) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 7410649) = 60466176 * k + 22231948 := by
    unfold C
    simp [show (20155392 * k + 7410649) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 22231948) = 30233088 * k + 11115974 := by
    unfold C
    simp [show (60466176 * k + 22231948) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 11115974) = 15116544 * k + 5557987 := by
    unfold C
    simp [show (30233088 * k + 11115974) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 5557987) = 45349632 * k + 16673962 := by
    unfold C
    simp [show (15116544 * k + 5557987) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 16673962) = 22674816 * k + 8336981 := by
    unfold C
    simp [show (45349632 * k + 16673962) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 8336981) = 68024448 * k + 25010944 := by
    unfold C
    simp [show (22674816 * k + 8336981) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 25010944) = 34012224 * k + 12505472 := by
    unfold C
    simp [show (68024448 * k + 25010944) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 12505472) = 17006112 * k + 6252736 := by
    unfold C
    simp [show (34012224 * k + 12505472) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 6252736) = 8503056 * k + 3126368 := by
    unfold C
    simp [show (17006112 * k + 6252736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3126368) = 4251528 * k + 1563184 := by
    unfold C
    simp [show (8503056 * k + 3126368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1563184) = 2125764 * k + 781592 := by
    unfold C
    simp [show (4251528 * k + 1563184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 781592) = 1062882 * k + 390796 := by
    unfold C
    simp [show (2125764 * k + 781592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 390796) = 531441 * k + 195398 := by
    unfold C
    simp [show (1062882 * k + 390796) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 385535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 385535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_385919 : ∀ k : Nat,
    iterate (1048576 * k + 385919) 32 = 531441 * k + 195593 ∧
      531441 * k + 195593 < 1048576 * k + 385919 := by
  intro k
  have h1 : C (1048576 * k + 385919) = 3145728 * k + 1157758 := by
    unfold C
    simp [show (1048576 * k + 385919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1157758) = 1572864 * k + 578879 := by
    unfold C
    simp [show (3145728 * k + 1157758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 578879) = 4718592 * k + 1736638 := by
    unfold C
    simp [show (1572864 * k + 578879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1736638) = 2359296 * k + 868319 := by
    unfold C
    simp [show (4718592 * k + 1736638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 868319) = 7077888 * k + 2604958 := by
    unfold C
    simp [show (2359296 * k + 868319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2604958) = 3538944 * k + 1302479 := by
    unfold C
    simp [show (7077888 * k + 2604958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1302479) = 10616832 * k + 3907438 := by
    unfold C
    simp [show (3538944 * k + 1302479) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 3907438) = 5308416 * k + 1953719 := by
    unfold C
    simp [show (10616832 * k + 3907438) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1953719) = 15925248 * k + 5861158 := by
    unfold C
    simp [show (5308416 * k + 1953719) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 5861158) = 7962624 * k + 2930579 := by
    unfold C
    simp [show (15925248 * k + 5861158) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2930579) = 23887872 * k + 8791738 := by
    unfold C
    simp [show (7962624 * k + 2930579) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 8791738) = 11943936 * k + 4395869 := by
    unfold C
    simp [show (23887872 * k + 8791738) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4395869) = 35831808 * k + 13187608 := by
    unfold C
    simp [show (11943936 * k + 4395869) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 13187608) = 17915904 * k + 6593804 := by
    unfold C
    simp [show (35831808 * k + 13187608) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 6593804) = 8957952 * k + 3296902 := by
    unfold C
    simp [show (17915904 * k + 6593804) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3296902) = 4478976 * k + 1648451 := by
    unfold C
    simp [show (8957952 * k + 3296902) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1648451) = 13436928 * k + 4945354 := by
    unfold C
    simp [show (4478976 * k + 1648451) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 4945354) = 6718464 * k + 2472677 := by
    unfold C
    simp [show (13436928 * k + 4945354) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2472677) = 20155392 * k + 7418032 := by
    unfold C
    simp [show (6718464 * k + 2472677) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 7418032) = 10077696 * k + 3709016 := by
    unfold C
    simp [show (20155392 * k + 7418032) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 3709016) = 5038848 * k + 1854508 := by
    unfold C
    simp [show (10077696 * k + 3709016) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1854508) = 2519424 * k + 927254 := by
    unfold C
    simp [show (5038848 * k + 1854508) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 927254) = 1259712 * k + 463627 := by
    unfold C
    simp [show (2519424 * k + 927254) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 463627) = 3779136 * k + 1390882 := by
    unfold C
    simp [show (1259712 * k + 463627) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1390882) = 1889568 * k + 695441 := by
    unfold C
    simp [show (3779136 * k + 1390882) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 695441) = 5668704 * k + 2086324 := by
    unfold C
    simp [show (1889568 * k + 695441) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2086324) = 2834352 * k + 1043162 := by
    unfold C
    simp [show (5668704 * k + 2086324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1043162) = 1417176 * k + 521581 := by
    unfold C
    simp [show (2834352 * k + 1043162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 521581) = 4251528 * k + 1564744 := by
    unfold C
    simp [show (1417176 * k + 521581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1564744) = 2125764 * k + 782372 := by
    unfold C
    simp [show (4251528 * k + 1564744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 782372) = 1062882 * k + 391186 := by
    unfold C
    simp [show (2125764 * k + 782372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 391186) = 531441 * k + 195593 := by
    unfold C
    simp [show (1062882 * k + 391186) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 385919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 385919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard048
