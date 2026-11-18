import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard012

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_74879 : ∀ k : Nat,
    iterate (1048576 * k + 74879) 32 = 531441 * k + 37951 ∧
      531441 * k + 37951 < 1048576 * k + 74879 := by
  intro k
  have h1 : C (1048576 * k + 74879) = 3145728 * k + 224638 := by
    unfold C
    simp [show (1048576 * k + 74879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 224638) = 1572864 * k + 112319 := by
    unfold C
    simp [show (3145728 * k + 224638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 112319) = 4718592 * k + 336958 := by
    unfold C
    simp [show (1572864 * k + 112319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 336958) = 2359296 * k + 168479 := by
    unfold C
    simp [show (4718592 * k + 336958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 168479) = 7077888 * k + 505438 := by
    unfold C
    simp [show (2359296 * k + 168479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 505438) = 3538944 * k + 252719 := by
    unfold C
    simp [show (7077888 * k + 505438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 252719) = 10616832 * k + 758158 := by
    unfold C
    simp [show (3538944 * k + 252719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 758158) = 5308416 * k + 379079 := by
    unfold C
    simp [show (10616832 * k + 758158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 379079) = 15925248 * k + 1137238 := by
    unfold C
    simp [show (5308416 * k + 379079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1137238) = 7962624 * k + 568619 := by
    unfold C
    simp [show (15925248 * k + 1137238) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 568619) = 23887872 * k + 1705858 := by
    unfold C
    simp [show (7962624 * k + 568619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1705858) = 11943936 * k + 852929 := by
    unfold C
    simp [show (23887872 * k + 1705858) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 852929) = 35831808 * k + 2558788 := by
    unfold C
    simp [show (11943936 * k + 852929) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2558788) = 17915904 * k + 1279394 := by
    unfold C
    simp [show (35831808 * k + 2558788) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1279394) = 8957952 * k + 639697 := by
    unfold C
    simp [show (17915904 * k + 1279394) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 639697) = 26873856 * k + 1919092 := by
    unfold C
    simp [show (8957952 * k + 639697) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1919092) = 13436928 * k + 959546 := by
    unfold C
    simp [show (26873856 * k + 1919092) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 959546) = 6718464 * k + 479773 := by
    unfold C
    simp [show (13436928 * k + 959546) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 479773) = 20155392 * k + 1439320 := by
    unfold C
    simp [show (6718464 * k + 479773) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1439320) = 10077696 * k + 719660 := by
    unfold C
    simp [show (20155392 * k + 1439320) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 719660) = 5038848 * k + 359830 := by
    unfold C
    simp [show (10077696 * k + 719660) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 359830) = 2519424 * k + 179915 := by
    unfold C
    simp [show (5038848 * k + 359830) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 179915) = 7558272 * k + 539746 := by
    unfold C
    simp [show (2519424 * k + 179915) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 539746) = 3779136 * k + 269873 := by
    unfold C
    simp [show (7558272 * k + 539746) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 269873) = 11337408 * k + 809620 := by
    unfold C
    simp [show (3779136 * k + 269873) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 809620) = 5668704 * k + 404810 := by
    unfold C
    simp [show (11337408 * k + 809620) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 404810) = 2834352 * k + 202405 := by
    unfold C
    simp [show (5668704 * k + 404810) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 202405) = 8503056 * k + 607216 := by
    unfold C
    simp [show (2834352 * k + 202405) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 607216) = 4251528 * k + 303608 := by
    unfold C
    simp [show (8503056 * k + 607216) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 303608) = 2125764 * k + 151804 := by
    unfold C
    simp [show (4251528 * k + 303608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 151804) = 1062882 * k + 75902 := by
    unfold C
    simp [show (2125764 * k + 151804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 75902) = 531441 * k + 37951 := by
    unfold C
    simp [show (1062882 * k + 75902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 74879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 74879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_75239 : ∀ k : Nat,
    iterate (1048576 * k + 75239) 32 = 531441 * k + 38134 ∧
      531441 * k + 38134 < 1048576 * k + 75239 := by
  intro k
  have h1 : C (1048576 * k + 75239) = 3145728 * k + 225718 := by
    unfold C
    simp [show (1048576 * k + 75239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 225718) = 1572864 * k + 112859 := by
    unfold C
    simp [show (3145728 * k + 225718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 112859) = 4718592 * k + 338578 := by
    unfold C
    simp [show (1572864 * k + 112859) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 338578) = 2359296 * k + 169289 := by
    unfold C
    simp [show (4718592 * k + 338578) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 169289) = 7077888 * k + 507868 := by
    unfold C
    simp [show (2359296 * k + 169289) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 507868) = 3538944 * k + 253934 := by
    unfold C
    simp [show (7077888 * k + 507868) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 253934) = 1769472 * k + 126967 := by
    unfold C
    simp [show (3538944 * k + 253934) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 126967) = 5308416 * k + 380902 := by
    unfold C
    simp [show (1769472 * k + 126967) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 380902) = 2654208 * k + 190451 := by
    unfold C
    simp [show (5308416 * k + 380902) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 190451) = 7962624 * k + 571354 := by
    unfold C
    simp [show (2654208 * k + 190451) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 571354) = 3981312 * k + 285677 := by
    unfold C
    simp [show (7962624 * k + 571354) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 285677) = 11943936 * k + 857032 := by
    unfold C
    simp [show (3981312 * k + 285677) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 857032) = 5971968 * k + 428516 := by
    unfold C
    simp [show (11943936 * k + 857032) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 428516) = 2985984 * k + 214258 := by
    unfold C
    simp [show (5971968 * k + 428516) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 214258) = 1492992 * k + 107129 := by
    unfold C
    simp [show (2985984 * k + 214258) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 107129) = 4478976 * k + 321388 := by
    unfold C
    simp [show (1492992 * k + 107129) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 321388) = 2239488 * k + 160694 := by
    unfold C
    simp [show (4478976 * k + 321388) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 160694) = 1119744 * k + 80347 := by
    unfold C
    simp [show (2239488 * k + 160694) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 80347) = 3359232 * k + 241042 := by
    unfold C
    simp [show (1119744 * k + 80347) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 241042) = 1679616 * k + 120521 := by
    unfold C
    simp [show (3359232 * k + 241042) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 120521) = 5038848 * k + 361564 := by
    unfold C
    simp [show (1679616 * k + 120521) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 361564) = 2519424 * k + 180782 := by
    unfold C
    simp [show (5038848 * k + 361564) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 180782) = 1259712 * k + 90391 := by
    unfold C
    simp [show (2519424 * k + 180782) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 90391) = 3779136 * k + 271174 := by
    unfold C
    simp [show (1259712 * k + 90391) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 271174) = 1889568 * k + 135587 := by
    unfold C
    simp [show (3779136 * k + 271174) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 135587) = 5668704 * k + 406762 := by
    unfold C
    simp [show (1889568 * k + 135587) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 406762) = 2834352 * k + 203381 := by
    unfold C
    simp [show (5668704 * k + 406762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 203381) = 8503056 * k + 610144 := by
    unfold C
    simp [show (2834352 * k + 203381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 610144) = 4251528 * k + 305072 := by
    unfold C
    simp [show (8503056 * k + 610144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 305072) = 2125764 * k + 152536 := by
    unfold C
    simp [show (4251528 * k + 305072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 152536) = 1062882 * k + 76268 := by
    unfold C
    simp [show (2125764 * k + 152536) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 76268) = 531441 * k + 38134 := by
    unfold C
    simp [show (1062882 * k + 76268) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 75239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 75239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_75879 : ∀ k : Nat,
    iterate (1048576 * k + 75879) 32 = 531441 * k + 38458 ∧
      531441 * k + 38458 < 1048576 * k + 75879 := by
  intro k
  have h1 : C (1048576 * k + 75879) = 3145728 * k + 227638 := by
    unfold C
    simp [show (1048576 * k + 75879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 227638) = 1572864 * k + 113819 := by
    unfold C
    simp [show (3145728 * k + 227638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 113819) = 4718592 * k + 341458 := by
    unfold C
    simp [show (1572864 * k + 113819) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 341458) = 2359296 * k + 170729 := by
    unfold C
    simp [show (4718592 * k + 341458) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 170729) = 7077888 * k + 512188 := by
    unfold C
    simp [show (2359296 * k + 170729) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 512188) = 3538944 * k + 256094 := by
    unfold C
    simp [show (7077888 * k + 512188) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 256094) = 1769472 * k + 128047 := by
    unfold C
    simp [show (3538944 * k + 256094) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 128047) = 5308416 * k + 384142 := by
    unfold C
    simp [show (1769472 * k + 128047) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 384142) = 2654208 * k + 192071 := by
    unfold C
    simp [show (5308416 * k + 384142) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 192071) = 7962624 * k + 576214 := by
    unfold C
    simp [show (2654208 * k + 192071) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 576214) = 3981312 * k + 288107 := by
    unfold C
    simp [show (7962624 * k + 576214) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 288107) = 11943936 * k + 864322 := by
    unfold C
    simp [show (3981312 * k + 288107) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 864322) = 5971968 * k + 432161 := by
    unfold C
    simp [show (11943936 * k + 864322) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 432161) = 17915904 * k + 1296484 := by
    unfold C
    simp [show (5971968 * k + 432161) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1296484) = 8957952 * k + 648242 := by
    unfold C
    simp [show (17915904 * k + 1296484) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 648242) = 4478976 * k + 324121 := by
    unfold C
    simp [show (8957952 * k + 648242) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 324121) = 13436928 * k + 972364 := by
    unfold C
    simp [show (4478976 * k + 324121) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 972364) = 6718464 * k + 486182 := by
    unfold C
    simp [show (13436928 * k + 972364) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 486182) = 3359232 * k + 243091 := by
    unfold C
    simp [show (6718464 * k + 486182) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 243091) = 10077696 * k + 729274 := by
    unfold C
    simp [show (3359232 * k + 243091) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 729274) = 5038848 * k + 364637 := by
    unfold C
    simp [show (10077696 * k + 729274) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 364637) = 15116544 * k + 1093912 := by
    unfold C
    simp [show (5038848 * k + 364637) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1093912) = 7558272 * k + 546956 := by
    unfold C
    simp [show (15116544 * k + 1093912) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 546956) = 3779136 * k + 273478 := by
    unfold C
    simp [show (7558272 * k + 546956) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 273478) = 1889568 * k + 136739 := by
    unfold C
    simp [show (3779136 * k + 273478) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 136739) = 5668704 * k + 410218 := by
    unfold C
    simp [show (1889568 * k + 136739) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 410218) = 2834352 * k + 205109 := by
    unfold C
    simp [show (5668704 * k + 410218) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 205109) = 8503056 * k + 615328 := by
    unfold C
    simp [show (2834352 * k + 205109) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 615328) = 4251528 * k + 307664 := by
    unfold C
    simp [show (8503056 * k + 615328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 307664) = 2125764 * k + 153832 := by
    unfold C
    simp [show (4251528 * k + 307664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 153832) = 1062882 * k + 76916 := by
    unfold C
    simp [show (2125764 * k + 153832) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 76916) = 531441 * k + 38458 := by
    unfold C
    simp [show (1062882 * k + 76916) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 75879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 75879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_75887 : ∀ k : Nat,
    iterate (1048576 * k + 75887) 32 = 531441 * k + 38462 ∧
      531441 * k + 38462 < 1048576 * k + 75887 := by
  intro k
  have h1 : C (1048576 * k + 75887) = 3145728 * k + 227662 := by
    unfold C
    simp [show (1048576 * k + 75887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 227662) = 1572864 * k + 113831 := by
    unfold C
    simp [show (3145728 * k + 227662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 113831) = 4718592 * k + 341494 := by
    unfold C
    simp [show (1572864 * k + 113831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 341494) = 2359296 * k + 170747 := by
    unfold C
    simp [show (4718592 * k + 341494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 170747) = 7077888 * k + 512242 := by
    unfold C
    simp [show (2359296 * k + 170747) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 512242) = 3538944 * k + 256121 := by
    unfold C
    simp [show (7077888 * k + 512242) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 256121) = 10616832 * k + 768364 := by
    unfold C
    simp [show (3538944 * k + 256121) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 768364) = 5308416 * k + 384182 := by
    unfold C
    simp [show (10616832 * k + 768364) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 384182) = 2654208 * k + 192091 := by
    unfold C
    simp [show (5308416 * k + 384182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 192091) = 7962624 * k + 576274 := by
    unfold C
    simp [show (2654208 * k + 192091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 576274) = 3981312 * k + 288137 := by
    unfold C
    simp [show (7962624 * k + 576274) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 288137) = 11943936 * k + 864412 := by
    unfold C
    simp [show (3981312 * k + 288137) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 864412) = 5971968 * k + 432206 := by
    unfold C
    simp [show (11943936 * k + 864412) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 432206) = 2985984 * k + 216103 := by
    unfold C
    simp [show (5971968 * k + 432206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 216103) = 8957952 * k + 648310 := by
    unfold C
    simp [show (2985984 * k + 216103) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 648310) = 4478976 * k + 324155 := by
    unfold C
    simp [show (8957952 * k + 648310) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 324155) = 13436928 * k + 972466 := by
    unfold C
    simp [show (4478976 * k + 324155) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 972466) = 6718464 * k + 486233 := by
    unfold C
    simp [show (13436928 * k + 972466) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 486233) = 20155392 * k + 1458700 := by
    unfold C
    simp [show (6718464 * k + 486233) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1458700) = 10077696 * k + 729350 := by
    unfold C
    simp [show (20155392 * k + 1458700) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 729350) = 5038848 * k + 364675 := by
    unfold C
    simp [show (10077696 * k + 729350) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 364675) = 15116544 * k + 1094026 := by
    unfold C
    simp [show (5038848 * k + 364675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1094026) = 7558272 * k + 547013 := by
    unfold C
    simp [show (15116544 * k + 1094026) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 547013) = 22674816 * k + 1641040 := by
    unfold C
    simp [show (7558272 * k + 547013) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1641040) = 11337408 * k + 820520 := by
    unfold C
    simp [show (22674816 * k + 1641040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 820520) = 5668704 * k + 410260 := by
    unfold C
    simp [show (11337408 * k + 820520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 410260) = 2834352 * k + 205130 := by
    unfold C
    simp [show (5668704 * k + 410260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 205130) = 1417176 * k + 102565 := by
    unfold C
    simp [show (2834352 * k + 205130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 102565) = 4251528 * k + 307696 := by
    unfold C
    simp [show (1417176 * k + 102565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 307696) = 2125764 * k + 153848 := by
    unfold C
    simp [show (4251528 * k + 307696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 153848) = 1062882 * k + 76924 := by
    unfold C
    simp [show (2125764 * k + 153848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 76924) = 531441 * k + 38462 := by
    unfold C
    simp [show (1062882 * k + 76924) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 75887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 75887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_76455 : ∀ k : Nat,
    iterate (1048576 * k + 76455) 32 = 531441 * k + 38750 ∧
      531441 * k + 38750 < 1048576 * k + 76455 := by
  intro k
  have h1 : C (1048576 * k + 76455) = 3145728 * k + 229366 := by
    unfold C
    simp [show (1048576 * k + 76455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 229366) = 1572864 * k + 114683 := by
    unfold C
    simp [show (3145728 * k + 229366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 114683) = 4718592 * k + 344050 := by
    unfold C
    simp [show (1572864 * k + 114683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 344050) = 2359296 * k + 172025 := by
    unfold C
    simp [show (4718592 * k + 344050) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 172025) = 7077888 * k + 516076 := by
    unfold C
    simp [show (2359296 * k + 172025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 516076) = 3538944 * k + 258038 := by
    unfold C
    simp [show (7077888 * k + 516076) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 258038) = 1769472 * k + 129019 := by
    unfold C
    simp [show (3538944 * k + 258038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 129019) = 5308416 * k + 387058 := by
    unfold C
    simp [show (1769472 * k + 129019) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 387058) = 2654208 * k + 193529 := by
    unfold C
    simp [show (5308416 * k + 387058) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 193529) = 7962624 * k + 580588 := by
    unfold C
    simp [show (2654208 * k + 193529) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 580588) = 3981312 * k + 290294 := by
    unfold C
    simp [show (7962624 * k + 580588) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 290294) = 1990656 * k + 145147 := by
    unfold C
    simp [show (3981312 * k + 290294) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 145147) = 5971968 * k + 435442 := by
    unfold C
    simp [show (1990656 * k + 145147) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 435442) = 2985984 * k + 217721 := by
    unfold C
    simp [show (5971968 * k + 435442) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 217721) = 8957952 * k + 653164 := by
    unfold C
    simp [show (2985984 * k + 217721) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 653164) = 4478976 * k + 326582 := by
    unfold C
    simp [show (8957952 * k + 653164) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 326582) = 2239488 * k + 163291 := by
    unfold C
    simp [show (4478976 * k + 326582) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 163291) = 6718464 * k + 489874 := by
    unfold C
    simp [show (2239488 * k + 163291) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 489874) = 3359232 * k + 244937 := by
    unfold C
    simp [show (6718464 * k + 489874) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 244937) = 10077696 * k + 734812 := by
    unfold C
    simp [show (3359232 * k + 244937) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 734812) = 5038848 * k + 367406 := by
    unfold C
    simp [show (10077696 * k + 734812) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 367406) = 2519424 * k + 183703 := by
    unfold C
    simp [show (5038848 * k + 367406) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 183703) = 7558272 * k + 551110 := by
    unfold C
    simp [show (2519424 * k + 183703) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 551110) = 3779136 * k + 275555 := by
    unfold C
    simp [show (7558272 * k + 551110) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 275555) = 11337408 * k + 826666 := by
    unfold C
    simp [show (3779136 * k + 275555) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 826666) = 5668704 * k + 413333 := by
    unfold C
    simp [show (11337408 * k + 826666) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 413333) = 17006112 * k + 1240000 := by
    unfold C
    simp [show (5668704 * k + 413333) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1240000) = 8503056 * k + 620000 := by
    unfold C
    simp [show (17006112 * k + 1240000) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 620000) = 4251528 * k + 310000 := by
    unfold C
    simp [show (8503056 * k + 620000) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 310000) = 2125764 * k + 155000 := by
    unfold C
    simp [show (4251528 * k + 310000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 155000) = 1062882 * k + 77500 := by
    unfold C
    simp [show (2125764 * k + 155000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 77500) = 531441 * k + 38750 := by
    unfold C
    simp [show (1062882 * k + 77500) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 76455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 76455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_77467 : ∀ k : Nat,
    iterate (1048576 * k + 77467) 32 = 531441 * k + 39263 ∧
      531441 * k + 39263 < 1048576 * k + 77467 := by
  intro k
  have h1 : C (1048576 * k + 77467) = 3145728 * k + 232402 := by
    unfold C
    simp [show (1048576 * k + 77467) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 232402) = 1572864 * k + 116201 := by
    unfold C
    simp [show (3145728 * k + 232402) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 116201) = 4718592 * k + 348604 := by
    unfold C
    simp [show (1572864 * k + 116201) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 348604) = 2359296 * k + 174302 := by
    unfold C
    simp [show (4718592 * k + 348604) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 174302) = 1179648 * k + 87151 := by
    unfold C
    simp [show (2359296 * k + 174302) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 87151) = 3538944 * k + 261454 := by
    unfold C
    simp [show (1179648 * k + 87151) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 261454) = 1769472 * k + 130727 := by
    unfold C
    simp [show (3538944 * k + 261454) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 130727) = 5308416 * k + 392182 := by
    unfold C
    simp [show (1769472 * k + 130727) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 392182) = 2654208 * k + 196091 := by
    unfold C
    simp [show (5308416 * k + 392182) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 196091) = 7962624 * k + 588274 := by
    unfold C
    simp [show (2654208 * k + 196091) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 588274) = 3981312 * k + 294137 := by
    unfold C
    simp [show (7962624 * k + 588274) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 294137) = 11943936 * k + 882412 := by
    unfold C
    simp [show (3981312 * k + 294137) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 882412) = 5971968 * k + 441206 := by
    unfold C
    simp [show (11943936 * k + 882412) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 441206) = 2985984 * k + 220603 := by
    unfold C
    simp [show (5971968 * k + 441206) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 220603) = 8957952 * k + 661810 := by
    unfold C
    simp [show (2985984 * k + 220603) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 661810) = 4478976 * k + 330905 := by
    unfold C
    simp [show (8957952 * k + 661810) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 330905) = 13436928 * k + 992716 := by
    unfold C
    simp [show (4478976 * k + 330905) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 992716) = 6718464 * k + 496358 := by
    unfold C
    simp [show (13436928 * k + 992716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 496358) = 3359232 * k + 248179 := by
    unfold C
    simp [show (6718464 * k + 496358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 248179) = 10077696 * k + 744538 := by
    unfold C
    simp [show (3359232 * k + 248179) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 744538) = 5038848 * k + 372269 := by
    unfold C
    simp [show (10077696 * k + 744538) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 372269) = 15116544 * k + 1116808 := by
    unfold C
    simp [show (5038848 * k + 372269) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1116808) = 7558272 * k + 558404 := by
    unfold C
    simp [show (15116544 * k + 1116808) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 558404) = 3779136 * k + 279202 := by
    unfold C
    simp [show (7558272 * k + 558404) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 279202) = 1889568 * k + 139601 := by
    unfold C
    simp [show (3779136 * k + 279202) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 139601) = 5668704 * k + 418804 := by
    unfold C
    simp [show (1889568 * k + 139601) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 418804) = 2834352 * k + 209402 := by
    unfold C
    simp [show (5668704 * k + 418804) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 209402) = 1417176 * k + 104701 := by
    unfold C
    simp [show (2834352 * k + 209402) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 104701) = 4251528 * k + 314104 := by
    unfold C
    simp [show (1417176 * k + 104701) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 314104) = 2125764 * k + 157052 := by
    unfold C
    simp [show (4251528 * k + 314104) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 157052) = 1062882 * k + 78526 := by
    unfold C
    simp [show (2125764 * k + 157052) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 78526) = 531441 * k + 39263 := by
    unfold C
    simp [show (1062882 * k + 78526) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 77467) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 77467)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_77915 : ∀ k : Nat,
    iterate (1048576 * k + 77915) 32 = 531441 * k + 39490 ∧
      531441 * k + 39490 < 1048576 * k + 77915 := by
  intro k
  have h1 : C (1048576 * k + 77915) = 3145728 * k + 233746 := by
    unfold C
    simp [show (1048576 * k + 77915) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 233746) = 1572864 * k + 116873 := by
    unfold C
    simp [show (3145728 * k + 233746) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 116873) = 4718592 * k + 350620 := by
    unfold C
    simp [show (1572864 * k + 116873) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 350620) = 2359296 * k + 175310 := by
    unfold C
    simp [show (4718592 * k + 350620) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 175310) = 1179648 * k + 87655 := by
    unfold C
    simp [show (2359296 * k + 175310) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 87655) = 3538944 * k + 262966 := by
    unfold C
    simp [show (1179648 * k + 87655) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 262966) = 1769472 * k + 131483 := by
    unfold C
    simp [show (3538944 * k + 262966) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 131483) = 5308416 * k + 394450 := by
    unfold C
    simp [show (1769472 * k + 131483) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 394450) = 2654208 * k + 197225 := by
    unfold C
    simp [show (5308416 * k + 394450) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 197225) = 7962624 * k + 591676 := by
    unfold C
    simp [show (2654208 * k + 197225) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 591676) = 3981312 * k + 295838 := by
    unfold C
    simp [show (7962624 * k + 591676) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 295838) = 1990656 * k + 147919 := by
    unfold C
    simp [show (3981312 * k + 295838) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 147919) = 5971968 * k + 443758 := by
    unfold C
    simp [show (1990656 * k + 147919) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 443758) = 2985984 * k + 221879 := by
    unfold C
    simp [show (5971968 * k + 443758) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 221879) = 8957952 * k + 665638 := by
    unfold C
    simp [show (2985984 * k + 221879) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 665638) = 4478976 * k + 332819 := by
    unfold C
    simp [show (8957952 * k + 665638) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 332819) = 13436928 * k + 998458 := by
    unfold C
    simp [show (4478976 * k + 332819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 998458) = 6718464 * k + 499229 := by
    unfold C
    simp [show (13436928 * k + 998458) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 499229) = 20155392 * k + 1497688 := by
    unfold C
    simp [show (6718464 * k + 499229) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1497688) = 10077696 * k + 748844 := by
    unfold C
    simp [show (20155392 * k + 1497688) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 748844) = 5038848 * k + 374422 := by
    unfold C
    simp [show (10077696 * k + 748844) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 374422) = 2519424 * k + 187211 := by
    unfold C
    simp [show (5038848 * k + 374422) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 187211) = 7558272 * k + 561634 := by
    unfold C
    simp [show (2519424 * k + 187211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 561634) = 3779136 * k + 280817 := by
    unfold C
    simp [show (7558272 * k + 561634) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 280817) = 11337408 * k + 842452 := by
    unfold C
    simp [show (3779136 * k + 280817) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 842452) = 5668704 * k + 421226 := by
    unfold C
    simp [show (11337408 * k + 842452) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 421226) = 2834352 * k + 210613 := by
    unfold C
    simp [show (5668704 * k + 421226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 210613) = 8503056 * k + 631840 := by
    unfold C
    simp [show (2834352 * k + 210613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 631840) = 4251528 * k + 315920 := by
    unfold C
    simp [show (8503056 * k + 631840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 315920) = 2125764 * k + 157960 := by
    unfold C
    simp [show (4251528 * k + 315920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 157960) = 1062882 * k + 78980 := by
    unfold C
    simp [show (2125764 * k + 157960) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 78980) = 531441 * k + 39490 := by
    unfold C
    simp [show (1062882 * k + 78980) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 77915) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 77915)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_78847 : ∀ k : Nat,
    iterate (1048576 * k + 78847) 32 = 531441 * k + 39962 ∧
      531441 * k + 39962 < 1048576 * k + 78847 := by
  intro k
  have h1 : C (1048576 * k + 78847) = 3145728 * k + 236542 := by
    unfold C
    simp [show (1048576 * k + 78847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 236542) = 1572864 * k + 118271 := by
    unfold C
    simp [show (3145728 * k + 236542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 118271) = 4718592 * k + 354814 := by
    unfold C
    simp [show (1572864 * k + 118271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 354814) = 2359296 * k + 177407 := by
    unfold C
    simp [show (4718592 * k + 354814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 177407) = 7077888 * k + 532222 := by
    unfold C
    simp [show (2359296 * k + 177407) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 532222) = 3538944 * k + 266111 := by
    unfold C
    simp [show (7077888 * k + 532222) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 266111) = 10616832 * k + 798334 := by
    unfold C
    simp [show (3538944 * k + 266111) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 798334) = 5308416 * k + 399167 := by
    unfold C
    simp [show (10616832 * k + 798334) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 399167) = 15925248 * k + 1197502 := by
    unfold C
    simp [show (5308416 * k + 399167) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1197502) = 7962624 * k + 598751 := by
    unfold C
    simp [show (15925248 * k + 1197502) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 598751) = 23887872 * k + 1796254 := by
    unfold C
    simp [show (7962624 * k + 598751) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1796254) = 11943936 * k + 898127 := by
    unfold C
    simp [show (23887872 * k + 1796254) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 898127) = 35831808 * k + 2694382 := by
    unfold C
    simp [show (11943936 * k + 898127) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2694382) = 17915904 * k + 1347191 := by
    unfold C
    simp [show (35831808 * k + 2694382) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1347191) = 53747712 * k + 4041574 := by
    unfold C
    simp [show (17915904 * k + 1347191) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 4041574) = 26873856 * k + 2020787 := by
    unfold C
    simp [show (53747712 * k + 4041574) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 2020787) = 80621568 * k + 6062362 := by
    unfold C
    simp [show (26873856 * k + 2020787) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 6062362) = 40310784 * k + 3031181 := by
    unfold C
    simp [show (80621568 * k + 6062362) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 3031181) = 120932352 * k + 9093544 := by
    unfold C
    simp [show (40310784 * k + 3031181) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 9093544) = 60466176 * k + 4546772 := by
    unfold C
    simp [show (120932352 * k + 9093544) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 4546772) = 30233088 * k + 2273386 := by
    unfold C
    simp [show (60466176 * k + 4546772) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2273386) = 15116544 * k + 1136693 := by
    unfold C
    simp [show (30233088 * k + 2273386) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1136693) = 45349632 * k + 3410080 := by
    unfold C
    simp [show (15116544 * k + 1136693) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3410080) = 22674816 * k + 1705040 := by
    unfold C
    simp [show (45349632 * k + 3410080) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1705040) = 11337408 * k + 852520 := by
    unfold C
    simp [show (22674816 * k + 1705040) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 852520) = 5668704 * k + 426260 := by
    unfold C
    simp [show (11337408 * k + 852520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 426260) = 2834352 * k + 213130 := by
    unfold C
    simp [show (5668704 * k + 426260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 213130) = 1417176 * k + 106565 := by
    unfold C
    simp [show (2834352 * k + 213130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 106565) = 4251528 * k + 319696 := by
    unfold C
    simp [show (1417176 * k + 106565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 319696) = 2125764 * k + 159848 := by
    unfold C
    simp [show (4251528 * k + 319696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 159848) = 1062882 * k + 79924 := by
    unfold C
    simp [show (2125764 * k + 159848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 79924) = 531441 * k + 39962 := by
    unfold C
    simp [show (1062882 * k + 79924) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 78847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 78847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_78959 : ∀ k : Nat,
    iterate (1048576 * k + 78959) 32 = 531441 * k + 40019 ∧
      531441 * k + 40019 < 1048576 * k + 78959 := by
  intro k
  have h1 : C (1048576 * k + 78959) = 3145728 * k + 236878 := by
    unfold C
    simp [show (1048576 * k + 78959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 236878) = 1572864 * k + 118439 := by
    unfold C
    simp [show (3145728 * k + 236878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 118439) = 4718592 * k + 355318 := by
    unfold C
    simp [show (1572864 * k + 118439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 355318) = 2359296 * k + 177659 := by
    unfold C
    simp [show (4718592 * k + 355318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 177659) = 7077888 * k + 532978 := by
    unfold C
    simp [show (2359296 * k + 177659) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 532978) = 3538944 * k + 266489 := by
    unfold C
    simp [show (7077888 * k + 532978) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 266489) = 10616832 * k + 799468 := by
    unfold C
    simp [show (3538944 * k + 266489) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 799468) = 5308416 * k + 399734 := by
    unfold C
    simp [show (10616832 * k + 799468) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 399734) = 2654208 * k + 199867 := by
    unfold C
    simp [show (5308416 * k + 399734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 199867) = 7962624 * k + 599602 := by
    unfold C
    simp [show (2654208 * k + 199867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 599602) = 3981312 * k + 299801 := by
    unfold C
    simp [show (7962624 * k + 599602) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 299801) = 11943936 * k + 899404 := by
    unfold C
    simp [show (3981312 * k + 299801) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 899404) = 5971968 * k + 449702 := by
    unfold C
    simp [show (11943936 * k + 899404) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 449702) = 2985984 * k + 224851 := by
    unfold C
    simp [show (5971968 * k + 449702) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 224851) = 8957952 * k + 674554 := by
    unfold C
    simp [show (2985984 * k + 224851) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 674554) = 4478976 * k + 337277 := by
    unfold C
    simp [show (8957952 * k + 674554) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 337277) = 13436928 * k + 1011832 := by
    unfold C
    simp [show (4478976 * k + 337277) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1011832) = 6718464 * k + 505916 := by
    unfold C
    simp [show (13436928 * k + 1011832) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 505916) = 3359232 * k + 252958 := by
    unfold C
    simp [show (6718464 * k + 505916) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 252958) = 1679616 * k + 126479 := by
    unfold C
    simp [show (3359232 * k + 252958) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 126479) = 5038848 * k + 379438 := by
    unfold C
    simp [show (1679616 * k + 126479) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 379438) = 2519424 * k + 189719 := by
    unfold C
    simp [show (5038848 * k + 379438) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 189719) = 7558272 * k + 569158 := by
    unfold C
    simp [show (2519424 * k + 189719) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 569158) = 3779136 * k + 284579 := by
    unfold C
    simp [show (7558272 * k + 569158) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 284579) = 11337408 * k + 853738 := by
    unfold C
    simp [show (3779136 * k + 284579) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 853738) = 5668704 * k + 426869 := by
    unfold C
    simp [show (11337408 * k + 853738) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 426869) = 17006112 * k + 1280608 := by
    unfold C
    simp [show (5668704 * k + 426869) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 1280608) = 8503056 * k + 640304 := by
    unfold C
    simp [show (17006112 * k + 1280608) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 640304) = 4251528 * k + 320152 := by
    unfold C
    simp [show (8503056 * k + 640304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 320152) = 2125764 * k + 160076 := by
    unfold C
    simp [show (4251528 * k + 320152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 160076) = 1062882 * k + 80038 := by
    unfold C
    simp [show (2125764 * k + 160076) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 80038) = 531441 * k + 40019 := by
    unfold C
    simp [show (1062882 * k + 80038) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 78959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 78959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_79407 : ∀ k : Nat,
    iterate (1048576 * k + 79407) 32 = 531441 * k + 40246 ∧
      531441 * k + 40246 < 1048576 * k + 79407 := by
  intro k
  have h1 : C (1048576 * k + 79407) = 3145728 * k + 238222 := by
    unfold C
    simp [show (1048576 * k + 79407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 238222) = 1572864 * k + 119111 := by
    unfold C
    simp [show (3145728 * k + 238222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 119111) = 4718592 * k + 357334 := by
    unfold C
    simp [show (1572864 * k + 119111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 357334) = 2359296 * k + 178667 := by
    unfold C
    simp [show (4718592 * k + 357334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 178667) = 7077888 * k + 536002 := by
    unfold C
    simp [show (2359296 * k + 178667) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 536002) = 3538944 * k + 268001 := by
    unfold C
    simp [show (7077888 * k + 536002) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 268001) = 10616832 * k + 804004 := by
    unfold C
    simp [show (3538944 * k + 268001) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 804004) = 5308416 * k + 402002 := by
    unfold C
    simp [show (10616832 * k + 804004) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 402002) = 2654208 * k + 201001 := by
    unfold C
    simp [show (5308416 * k + 402002) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 201001) = 7962624 * k + 603004 := by
    unfold C
    simp [show (2654208 * k + 201001) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 603004) = 3981312 * k + 301502 := by
    unfold C
    simp [show (7962624 * k + 603004) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 301502) = 1990656 * k + 150751 := by
    unfold C
    simp [show (3981312 * k + 301502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 150751) = 5971968 * k + 452254 := by
    unfold C
    simp [show (1990656 * k + 150751) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 452254) = 2985984 * k + 226127 := by
    unfold C
    simp [show (5971968 * k + 452254) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 226127) = 8957952 * k + 678382 := by
    unfold C
    simp [show (2985984 * k + 226127) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 678382) = 4478976 * k + 339191 := by
    unfold C
    simp [show (8957952 * k + 678382) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 339191) = 13436928 * k + 1017574 := by
    unfold C
    simp [show (4478976 * k + 339191) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1017574) = 6718464 * k + 508787 := by
    unfold C
    simp [show (13436928 * k + 1017574) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 508787) = 20155392 * k + 1526362 := by
    unfold C
    simp [show (6718464 * k + 508787) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1526362) = 10077696 * k + 763181 := by
    unfold C
    simp [show (20155392 * k + 1526362) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 763181) = 30233088 * k + 2289544 := by
    unfold C
    simp [show (10077696 * k + 763181) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 2289544) = 15116544 * k + 1144772 := by
    unfold C
    simp [show (30233088 * k + 2289544) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1144772) = 7558272 * k + 572386 := by
    unfold C
    simp [show (15116544 * k + 1144772) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 572386) = 3779136 * k + 286193 := by
    unfold C
    simp [show (7558272 * k + 572386) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 286193) = 11337408 * k + 858580 := by
    unfold C
    simp [show (3779136 * k + 286193) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 858580) = 5668704 * k + 429290 := by
    unfold C
    simp [show (11337408 * k + 858580) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 429290) = 2834352 * k + 214645 := by
    unfold C
    simp [show (5668704 * k + 429290) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 214645) = 8503056 * k + 643936 := by
    unfold C
    simp [show (2834352 * k + 214645) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 643936) = 4251528 * k + 321968 := by
    unfold C
    simp [show (8503056 * k + 643936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 321968) = 2125764 * k + 160984 := by
    unfold C
    simp [show (4251528 * k + 321968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 160984) = 1062882 * k + 80492 := by
    unfold C
    simp [show (2125764 * k + 160984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 80492) = 531441 * k + 40246 := by
    unfold C
    simp [show (1062882 * k + 80492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 79407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 79407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_79983 : ∀ k : Nat,
    iterate (1048576 * k + 79983) 32 = 531441 * k + 40538 ∧
      531441 * k + 40538 < 1048576 * k + 79983 := by
  intro k
  have h1 : C (1048576 * k + 79983) = 3145728 * k + 239950 := by
    unfold C
    simp [show (1048576 * k + 79983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 239950) = 1572864 * k + 119975 := by
    unfold C
    simp [show (3145728 * k + 239950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 119975) = 4718592 * k + 359926 := by
    unfold C
    simp [show (1572864 * k + 119975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 359926) = 2359296 * k + 179963 := by
    unfold C
    simp [show (4718592 * k + 359926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 179963) = 7077888 * k + 539890 := by
    unfold C
    simp [show (2359296 * k + 179963) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 539890) = 3538944 * k + 269945 := by
    unfold C
    simp [show (7077888 * k + 539890) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 269945) = 10616832 * k + 809836 := by
    unfold C
    simp [show (3538944 * k + 269945) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 809836) = 5308416 * k + 404918 := by
    unfold C
    simp [show (10616832 * k + 809836) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 404918) = 2654208 * k + 202459 := by
    unfold C
    simp [show (5308416 * k + 404918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 202459) = 7962624 * k + 607378 := by
    unfold C
    simp [show (2654208 * k + 202459) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 607378) = 3981312 * k + 303689 := by
    unfold C
    simp [show (7962624 * k + 607378) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 303689) = 11943936 * k + 911068 := by
    unfold C
    simp [show (3981312 * k + 303689) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 911068) = 5971968 * k + 455534 := by
    unfold C
    simp [show (11943936 * k + 911068) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 455534) = 2985984 * k + 227767 := by
    unfold C
    simp [show (5971968 * k + 455534) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 227767) = 8957952 * k + 683302 := by
    unfold C
    simp [show (2985984 * k + 227767) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 683302) = 4478976 * k + 341651 := by
    unfold C
    simp [show (8957952 * k + 683302) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 341651) = 13436928 * k + 1024954 := by
    unfold C
    simp [show (4478976 * k + 341651) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1024954) = 6718464 * k + 512477 := by
    unfold C
    simp [show (13436928 * k + 1024954) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 512477) = 20155392 * k + 1537432 := by
    unfold C
    simp [show (6718464 * k + 512477) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1537432) = 10077696 * k + 768716 := by
    unfold C
    simp [show (20155392 * k + 1537432) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 768716) = 5038848 * k + 384358 := by
    unfold C
    simp [show (10077696 * k + 768716) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 384358) = 2519424 * k + 192179 := by
    unfold C
    simp [show (5038848 * k + 384358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 192179) = 7558272 * k + 576538 := by
    unfold C
    simp [show (2519424 * k + 192179) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 576538) = 3779136 * k + 288269 := by
    unfold C
    simp [show (7558272 * k + 576538) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 288269) = 11337408 * k + 864808 := by
    unfold C
    simp [show (3779136 * k + 288269) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 864808) = 5668704 * k + 432404 := by
    unfold C
    simp [show (11337408 * k + 864808) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 432404) = 2834352 * k + 216202 := by
    unfold C
    simp [show (5668704 * k + 432404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 216202) = 1417176 * k + 108101 := by
    unfold C
    simp [show (2834352 * k + 216202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 108101) = 4251528 * k + 324304 := by
    unfold C
    simp [show (1417176 * k + 108101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 324304) = 2125764 * k + 162152 := by
    unfold C
    simp [show (4251528 * k + 324304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 162152) = 1062882 * k + 81076 := by
    unfold C
    simp [show (2125764 * k + 162152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 81076) = 531441 * k + 40538 := by
    unfold C
    simp [show (1062882 * k + 81076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 79983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 79983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_79999 : ∀ k : Nat,
    iterate (1048576 * k + 79999) 32 = 531441 * k + 40546 ∧
      531441 * k + 40546 < 1048576 * k + 79999 := by
  intro k
  have h1 : C (1048576 * k + 79999) = 3145728 * k + 239998 := by
    unfold C
    simp [show (1048576 * k + 79999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 239998) = 1572864 * k + 119999 := by
    unfold C
    simp [show (3145728 * k + 239998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 119999) = 4718592 * k + 359998 := by
    unfold C
    simp [show (1572864 * k + 119999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 359998) = 2359296 * k + 179999 := by
    unfold C
    simp [show (4718592 * k + 359998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 179999) = 7077888 * k + 539998 := by
    unfold C
    simp [show (2359296 * k + 179999) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 539998) = 3538944 * k + 269999 := by
    unfold C
    simp [show (7077888 * k + 539998) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 269999) = 10616832 * k + 809998 := by
    unfold C
    simp [show (3538944 * k + 269999) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 809998) = 5308416 * k + 404999 := by
    unfold C
    simp [show (10616832 * k + 809998) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 404999) = 15925248 * k + 1214998 := by
    unfold C
    simp [show (5308416 * k + 404999) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1214998) = 7962624 * k + 607499 := by
    unfold C
    simp [show (15925248 * k + 1214998) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 607499) = 23887872 * k + 1822498 := by
    unfold C
    simp [show (7962624 * k + 607499) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1822498) = 11943936 * k + 911249 := by
    unfold C
    simp [show (23887872 * k + 1822498) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 911249) = 35831808 * k + 2733748 := by
    unfold C
    simp [show (11943936 * k + 911249) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2733748) = 17915904 * k + 1366874 := by
    unfold C
    simp [show (35831808 * k + 2733748) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1366874) = 8957952 * k + 683437 := by
    unfold C
    simp [show (17915904 * k + 1366874) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 683437) = 26873856 * k + 2050312 := by
    unfold C
    simp [show (8957952 * k + 683437) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2050312) = 13436928 * k + 1025156 := by
    unfold C
    simp [show (26873856 * k + 2050312) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1025156) = 6718464 * k + 512578 := by
    unfold C
    simp [show (13436928 * k + 1025156) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 512578) = 3359232 * k + 256289 := by
    unfold C
    simp [show (6718464 * k + 512578) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 256289) = 10077696 * k + 768868 := by
    unfold C
    simp [show (3359232 * k + 256289) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 768868) = 5038848 * k + 384434 := by
    unfold C
    simp [show (10077696 * k + 768868) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 384434) = 2519424 * k + 192217 := by
    unfold C
    simp [show (5038848 * k + 384434) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 192217) = 7558272 * k + 576652 := by
    unfold C
    simp [show (2519424 * k + 192217) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 576652) = 3779136 * k + 288326 := by
    unfold C
    simp [show (7558272 * k + 576652) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 288326) = 1889568 * k + 144163 := by
    unfold C
    simp [show (3779136 * k + 288326) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 144163) = 5668704 * k + 432490 := by
    unfold C
    simp [show (1889568 * k + 144163) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 432490) = 2834352 * k + 216245 := by
    unfold C
    simp [show (5668704 * k + 432490) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 216245) = 8503056 * k + 648736 := by
    unfold C
    simp [show (2834352 * k + 216245) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 648736) = 4251528 * k + 324368 := by
    unfold C
    simp [show (8503056 * k + 648736) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 324368) = 2125764 * k + 162184 := by
    unfold C
    simp [show (4251528 * k + 324368) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 162184) = 1062882 * k + 81092 := by
    unfold C
    simp [show (2125764 * k + 162184) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 81092) = 531441 * k + 40546 := by
    unfold C
    simp [show (1062882 * k + 81092) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 79999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 79999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_80095 : ∀ k : Nat,
    iterate (1048576 * k + 80095) 32 = 531441 * k + 40595 ∧
      531441 * k + 40595 < 1048576 * k + 80095 := by
  intro k
  have h1 : C (1048576 * k + 80095) = 3145728 * k + 240286 := by
    unfold C
    simp [show (1048576 * k + 80095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 240286) = 1572864 * k + 120143 := by
    unfold C
    simp [show (3145728 * k + 240286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 120143) = 4718592 * k + 360430 := by
    unfold C
    simp [show (1572864 * k + 120143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 360430) = 2359296 * k + 180215 := by
    unfold C
    simp [show (4718592 * k + 360430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 180215) = 7077888 * k + 540646 := by
    unfold C
    simp [show (2359296 * k + 180215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 540646) = 3538944 * k + 270323 := by
    unfold C
    simp [show (7077888 * k + 540646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 270323) = 10616832 * k + 810970 := by
    unfold C
    simp [show (3538944 * k + 270323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 810970) = 5308416 * k + 405485 := by
    unfold C
    simp [show (10616832 * k + 810970) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 405485) = 15925248 * k + 1216456 := by
    unfold C
    simp [show (5308416 * k + 405485) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1216456) = 7962624 * k + 608228 := by
    unfold C
    simp [show (15925248 * k + 1216456) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 608228) = 3981312 * k + 304114 := by
    unfold C
    simp [show (7962624 * k + 608228) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 304114) = 1990656 * k + 152057 := by
    unfold C
    simp [show (3981312 * k + 304114) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 152057) = 5971968 * k + 456172 := by
    unfold C
    simp [show (1990656 * k + 152057) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 456172) = 2985984 * k + 228086 := by
    unfold C
    simp [show (5971968 * k + 456172) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 228086) = 1492992 * k + 114043 := by
    unfold C
    simp [show (2985984 * k + 228086) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 114043) = 4478976 * k + 342130 := by
    unfold C
    simp [show (1492992 * k + 114043) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 342130) = 2239488 * k + 171065 := by
    unfold C
    simp [show (4478976 * k + 342130) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 171065) = 6718464 * k + 513196 := by
    unfold C
    simp [show (2239488 * k + 171065) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 513196) = 3359232 * k + 256598 := by
    unfold C
    simp [show (6718464 * k + 513196) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 256598) = 1679616 * k + 128299 := by
    unfold C
    simp [show (3359232 * k + 256598) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 128299) = 5038848 * k + 384898 := by
    unfold C
    simp [show (1679616 * k + 128299) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 384898) = 2519424 * k + 192449 := by
    unfold C
    simp [show (5038848 * k + 384898) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 192449) = 7558272 * k + 577348 := by
    unfold C
    simp [show (2519424 * k + 192449) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 577348) = 3779136 * k + 288674 := by
    unfold C
    simp [show (7558272 * k + 577348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 288674) = 1889568 * k + 144337 := by
    unfold C
    simp [show (3779136 * k + 288674) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 144337) = 5668704 * k + 433012 := by
    unfold C
    simp [show (1889568 * k + 144337) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 433012) = 2834352 * k + 216506 := by
    unfold C
    simp [show (5668704 * k + 433012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 216506) = 1417176 * k + 108253 := by
    unfold C
    simp [show (2834352 * k + 216506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 108253) = 4251528 * k + 324760 := by
    unfold C
    simp [show (1417176 * k + 108253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 324760) = 2125764 * k + 162380 := by
    unfold C
    simp [show (4251528 * k + 324760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 162380) = 1062882 * k + 81190 := by
    unfold C
    simp [show (2125764 * k + 162380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 81190) = 531441 * k + 40595 := by
    unfold C
    simp [show (1062882 * k + 81190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 80095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 80095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_80255 : ∀ k : Nat,
    iterate (1048576 * k + 80255) 32 = 531441 * k + 40676 ∧
      531441 * k + 40676 < 1048576 * k + 80255 := by
  intro k
  have h1 : C (1048576 * k + 80255) = 3145728 * k + 240766 := by
    unfold C
    simp [show (1048576 * k + 80255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 240766) = 1572864 * k + 120383 := by
    unfold C
    simp [show (3145728 * k + 240766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 120383) = 4718592 * k + 361150 := by
    unfold C
    simp [show (1572864 * k + 120383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 361150) = 2359296 * k + 180575 := by
    unfold C
    simp [show (4718592 * k + 361150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 180575) = 7077888 * k + 541726 := by
    unfold C
    simp [show (2359296 * k + 180575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 541726) = 3538944 * k + 270863 := by
    unfold C
    simp [show (7077888 * k + 541726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 270863) = 10616832 * k + 812590 := by
    unfold C
    simp [show (3538944 * k + 270863) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 812590) = 5308416 * k + 406295 := by
    unfold C
    simp [show (10616832 * k + 812590) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 406295) = 15925248 * k + 1218886 := by
    unfold C
    simp [show (5308416 * k + 406295) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1218886) = 7962624 * k + 609443 := by
    unfold C
    simp [show (15925248 * k + 1218886) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 609443) = 23887872 * k + 1828330 := by
    unfold C
    simp [show (7962624 * k + 609443) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1828330) = 11943936 * k + 914165 := by
    unfold C
    simp [show (23887872 * k + 1828330) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 914165) = 35831808 * k + 2742496 := by
    unfold C
    simp [show (11943936 * k + 914165) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 2742496) = 17915904 * k + 1371248 := by
    unfold C
    simp [show (35831808 * k + 2742496) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 1371248) = 8957952 * k + 685624 := by
    unfold C
    simp [show (17915904 * k + 1371248) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 685624) = 4478976 * k + 342812 := by
    unfold C
    simp [show (8957952 * k + 685624) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 342812) = 2239488 * k + 171406 := by
    unfold C
    simp [show (4478976 * k + 342812) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 171406) = 1119744 * k + 85703 := by
    unfold C
    simp [show (2239488 * k + 171406) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 85703) = 3359232 * k + 257110 := by
    unfold C
    simp [show (1119744 * k + 85703) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 257110) = 1679616 * k + 128555 := by
    unfold C
    simp [show (3359232 * k + 257110) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 128555) = 5038848 * k + 385666 := by
    unfold C
    simp [show (1679616 * k + 128555) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 385666) = 2519424 * k + 192833 := by
    unfold C
    simp [show (5038848 * k + 385666) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 192833) = 7558272 * k + 578500 := by
    unfold C
    simp [show (2519424 * k + 192833) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 578500) = 3779136 * k + 289250 := by
    unfold C
    simp [show (7558272 * k + 578500) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 289250) = 1889568 * k + 144625 := by
    unfold C
    simp [show (3779136 * k + 289250) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 144625) = 5668704 * k + 433876 := by
    unfold C
    simp [show (1889568 * k + 144625) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 433876) = 2834352 * k + 216938 := by
    unfold C
    simp [show (5668704 * k + 433876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 216938) = 1417176 * k + 108469 := by
    unfold C
    simp [show (2834352 * k + 216938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 108469) = 4251528 * k + 325408 := by
    unfold C
    simp [show (1417176 * k + 108469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 325408) = 2125764 * k + 162704 := by
    unfold C
    simp [show (4251528 * k + 325408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 162704) = 1062882 * k + 81352 := by
    unfold C
    simp [show (2125764 * k + 162704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 81352) = 531441 * k + 40676 := by
    unfold C
    simp [show (1062882 * k + 81352) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 80255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 80255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_80551 : ∀ k : Nat,
    iterate (1048576 * k + 80551) 32 = 531441 * k + 40826 ∧
      531441 * k + 40826 < 1048576 * k + 80551 := by
  intro k
  have h1 : C (1048576 * k + 80551) = 3145728 * k + 241654 := by
    unfold C
    simp [show (1048576 * k + 80551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 241654) = 1572864 * k + 120827 := by
    unfold C
    simp [show (3145728 * k + 241654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 120827) = 4718592 * k + 362482 := by
    unfold C
    simp [show (1572864 * k + 120827) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 362482) = 2359296 * k + 181241 := by
    unfold C
    simp [show (4718592 * k + 362482) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 181241) = 7077888 * k + 543724 := by
    unfold C
    simp [show (2359296 * k + 181241) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 543724) = 3538944 * k + 271862 := by
    unfold C
    simp [show (7077888 * k + 543724) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 271862) = 1769472 * k + 135931 := by
    unfold C
    simp [show (3538944 * k + 271862) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 135931) = 5308416 * k + 407794 := by
    unfold C
    simp [show (1769472 * k + 135931) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 407794) = 2654208 * k + 203897 := by
    unfold C
    simp [show (5308416 * k + 407794) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 203897) = 7962624 * k + 611692 := by
    unfold C
    simp [show (2654208 * k + 203897) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 611692) = 3981312 * k + 305846 := by
    unfold C
    simp [show (7962624 * k + 611692) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 305846) = 1990656 * k + 152923 := by
    unfold C
    simp [show (3981312 * k + 305846) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 152923) = 5971968 * k + 458770 := by
    unfold C
    simp [show (1990656 * k + 152923) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 458770) = 2985984 * k + 229385 := by
    unfold C
    simp [show (5971968 * k + 458770) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 229385) = 8957952 * k + 688156 := by
    unfold C
    simp [show (2985984 * k + 229385) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 688156) = 4478976 * k + 344078 := by
    unfold C
    simp [show (8957952 * k + 688156) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 344078) = 2239488 * k + 172039 := by
    unfold C
    simp [show (4478976 * k + 344078) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 172039) = 6718464 * k + 516118 := by
    unfold C
    simp [show (2239488 * k + 172039) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 516118) = 3359232 * k + 258059 := by
    unfold C
    simp [show (6718464 * k + 516118) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 258059) = 10077696 * k + 774178 := by
    unfold C
    simp [show (3359232 * k + 258059) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 774178) = 5038848 * k + 387089 := by
    unfold C
    simp [show (10077696 * k + 774178) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 387089) = 15116544 * k + 1161268 := by
    unfold C
    simp [show (5038848 * k + 387089) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1161268) = 7558272 * k + 580634 := by
    unfold C
    simp [show (15116544 * k + 1161268) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 580634) = 3779136 * k + 290317 := by
    unfold C
    simp [show (7558272 * k + 580634) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 290317) = 11337408 * k + 870952 := by
    unfold C
    simp [show (3779136 * k + 290317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 870952) = 5668704 * k + 435476 := by
    unfold C
    simp [show (11337408 * k + 870952) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 435476) = 2834352 * k + 217738 := by
    unfold C
    simp [show (5668704 * k + 435476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 217738) = 1417176 * k + 108869 := by
    unfold C
    simp [show (2834352 * k + 217738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 108869) = 4251528 * k + 326608 := by
    unfold C
    simp [show (1417176 * k + 108869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 326608) = 2125764 * k + 163304 := by
    unfold C
    simp [show (4251528 * k + 326608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 163304) = 1062882 * k + 81652 := by
    unfold C
    simp [show (2125764 * k + 163304) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 81652) = 531441 * k + 40826 := by
    unfold C
    simp [show (1062882 * k + 81652) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 80551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 80551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_80575 : ∀ k : Nat,
    iterate (1048576 * k + 80575) 32 = 531441 * k + 40838 ∧
      531441 * k + 40838 < 1048576 * k + 80575 := by
  intro k
  have h1 : C (1048576 * k + 80575) = 3145728 * k + 241726 := by
    unfold C
    simp [show (1048576 * k + 80575) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 241726) = 1572864 * k + 120863 := by
    unfold C
    simp [show (3145728 * k + 241726) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 120863) = 4718592 * k + 362590 := by
    unfold C
    simp [show (1572864 * k + 120863) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 362590) = 2359296 * k + 181295 := by
    unfold C
    simp [show (4718592 * k + 362590) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 181295) = 7077888 * k + 543886 := by
    unfold C
    simp [show (2359296 * k + 181295) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 543886) = 3538944 * k + 271943 := by
    unfold C
    simp [show (7077888 * k + 543886) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 271943) = 10616832 * k + 815830 := by
    unfold C
    simp [show (3538944 * k + 271943) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 815830) = 5308416 * k + 407915 := by
    unfold C
    simp [show (10616832 * k + 815830) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 407915) = 15925248 * k + 1223746 := by
    unfold C
    simp [show (5308416 * k + 407915) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1223746) = 7962624 * k + 611873 := by
    unfold C
    simp [show (15925248 * k + 1223746) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 611873) = 23887872 * k + 1835620 := by
    unfold C
    simp [show (7962624 * k + 611873) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1835620) = 11943936 * k + 917810 := by
    unfold C
    simp [show (23887872 * k + 1835620) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 917810) = 5971968 * k + 458905 := by
    unfold C
    simp [show (11943936 * k + 917810) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 458905) = 17915904 * k + 1376716 := by
    unfold C
    simp [show (5971968 * k + 458905) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1376716) = 8957952 * k + 688358 := by
    unfold C
    simp [show (17915904 * k + 1376716) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 688358) = 4478976 * k + 344179 := by
    unfold C
    simp [show (8957952 * k + 688358) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 344179) = 13436928 * k + 1032538 := by
    unfold C
    simp [show (4478976 * k + 344179) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1032538) = 6718464 * k + 516269 := by
    unfold C
    simp [show (13436928 * k + 1032538) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 516269) = 20155392 * k + 1548808 := by
    unfold C
    simp [show (6718464 * k + 516269) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1548808) = 10077696 * k + 774404 := by
    unfold C
    simp [show (20155392 * k + 1548808) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 774404) = 5038848 * k + 387202 := by
    unfold C
    simp [show (10077696 * k + 774404) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 387202) = 2519424 * k + 193601 := by
    unfold C
    simp [show (5038848 * k + 387202) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 193601) = 7558272 * k + 580804 := by
    unfold C
    simp [show (2519424 * k + 193601) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 580804) = 3779136 * k + 290402 := by
    unfold C
    simp [show (7558272 * k + 580804) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 290402) = 1889568 * k + 145201 := by
    unfold C
    simp [show (3779136 * k + 290402) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 145201) = 5668704 * k + 435604 := by
    unfold C
    simp [show (1889568 * k + 145201) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 435604) = 2834352 * k + 217802 := by
    unfold C
    simp [show (5668704 * k + 435604) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 217802) = 1417176 * k + 108901 := by
    unfold C
    simp [show (2834352 * k + 217802) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 108901) = 4251528 * k + 326704 := by
    unfold C
    simp [show (1417176 * k + 108901) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 326704) = 2125764 * k + 163352 := by
    unfold C
    simp [show (4251528 * k + 326704) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 163352) = 1062882 * k + 81676 := by
    unfold C
    simp [show (2125764 * k + 163352) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 81676) = 531441 * k + 40838 := by
    unfold C
    simp [show (1062882 * k + 81676) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 80575) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 80575)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_81343 : ∀ k : Nat,
    iterate (1048576 * k + 81343) 32 = 531441 * k + 41227 ∧
      531441 * k + 41227 < 1048576 * k + 81343 := by
  intro k
  have h1 : C (1048576 * k + 81343) = 3145728 * k + 244030 := by
    unfold C
    simp [show (1048576 * k + 81343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 244030) = 1572864 * k + 122015 := by
    unfold C
    simp [show (3145728 * k + 244030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 122015) = 4718592 * k + 366046 := by
    unfold C
    simp [show (1572864 * k + 122015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 366046) = 2359296 * k + 183023 := by
    unfold C
    simp [show (4718592 * k + 366046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 183023) = 7077888 * k + 549070 := by
    unfold C
    simp [show (2359296 * k + 183023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 549070) = 3538944 * k + 274535 := by
    unfold C
    simp [show (7077888 * k + 549070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 274535) = 10616832 * k + 823606 := by
    unfold C
    simp [show (3538944 * k + 274535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 823606) = 5308416 * k + 411803 := by
    unfold C
    simp [show (10616832 * k + 823606) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 411803) = 15925248 * k + 1235410 := by
    unfold C
    simp [show (5308416 * k + 411803) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1235410) = 7962624 * k + 617705 := by
    unfold C
    simp [show (15925248 * k + 1235410) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 617705) = 23887872 * k + 1853116 := by
    unfold C
    simp [show (7962624 * k + 617705) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1853116) = 11943936 * k + 926558 := by
    unfold C
    simp [show (23887872 * k + 1853116) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 926558) = 5971968 * k + 463279 := by
    unfold C
    simp [show (11943936 * k + 926558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 463279) = 17915904 * k + 1389838 := by
    unfold C
    simp [show (5971968 * k + 463279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1389838) = 8957952 * k + 694919 := by
    unfold C
    simp [show (17915904 * k + 1389838) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 694919) = 26873856 * k + 2084758 := by
    unfold C
    simp [show (8957952 * k + 694919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 2084758) = 13436928 * k + 1042379 := by
    unfold C
    simp [show (26873856 * k + 2084758) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 1042379) = 40310784 * k + 3127138 := by
    unfold C
    simp [show (13436928 * k + 1042379) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 3127138) = 20155392 * k + 1563569 := by
    unfold C
    simp [show (40310784 * k + 3127138) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1563569) = 60466176 * k + 4690708 := by
    unfold C
    simp [show (20155392 * k + 1563569) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 4690708) = 30233088 * k + 2345354 := by
    unfold C
    simp [show (60466176 * k + 4690708) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 2345354) = 15116544 * k + 1172677 := by
    unfold C
    simp [show (30233088 * k + 2345354) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 1172677) = 45349632 * k + 3518032 := by
    unfold C
    simp [show (15116544 * k + 1172677) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 3518032) = 22674816 * k + 1759016 := by
    unfold C
    simp [show (45349632 * k + 3518032) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1759016) = 11337408 * k + 879508 := by
    unfold C
    simp [show (22674816 * k + 1759016) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 879508) = 5668704 * k + 439754 := by
    unfold C
    simp [show (11337408 * k + 879508) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 439754) = 2834352 * k + 219877 := by
    unfold C
    simp [show (5668704 * k + 439754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 219877) = 8503056 * k + 659632 := by
    unfold C
    simp [show (2834352 * k + 219877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 659632) = 4251528 * k + 329816 := by
    unfold C
    simp [show (8503056 * k + 659632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 329816) = 2125764 * k + 164908 := by
    unfold C
    simp [show (4251528 * k + 329816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 164908) = 1062882 * k + 82454 := by
    unfold C
    simp [show (2125764 * k + 164908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 82454) = 531441 * k + 41227 := by
    unfold C
    simp [show (1062882 * k + 82454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 81343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 81343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_82023 : ∀ k : Nat,
    iterate (1048576 * k + 82023) 32 = 531441 * k + 41572 ∧
      531441 * k + 41572 < 1048576 * k + 82023 := by
  intro k
  have h1 : C (1048576 * k + 82023) = 3145728 * k + 246070 := by
    unfold C
    simp [show (1048576 * k + 82023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 246070) = 1572864 * k + 123035 := by
    unfold C
    simp [show (3145728 * k + 246070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 123035) = 4718592 * k + 369106 := by
    unfold C
    simp [show (1572864 * k + 123035) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 369106) = 2359296 * k + 184553 := by
    unfold C
    simp [show (4718592 * k + 369106) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 184553) = 7077888 * k + 553660 := by
    unfold C
    simp [show (2359296 * k + 184553) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 553660) = 3538944 * k + 276830 := by
    unfold C
    simp [show (7077888 * k + 553660) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 276830) = 1769472 * k + 138415 := by
    unfold C
    simp [show (3538944 * k + 276830) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 138415) = 5308416 * k + 415246 := by
    unfold C
    simp [show (1769472 * k + 138415) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 415246) = 2654208 * k + 207623 := by
    unfold C
    simp [show (5308416 * k + 415246) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 207623) = 7962624 * k + 622870 := by
    unfold C
    simp [show (2654208 * k + 207623) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 622870) = 3981312 * k + 311435 := by
    unfold C
    simp [show (7962624 * k + 622870) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 311435) = 11943936 * k + 934306 := by
    unfold C
    simp [show (3981312 * k + 311435) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 934306) = 5971968 * k + 467153 := by
    unfold C
    simp [show (11943936 * k + 934306) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 467153) = 17915904 * k + 1401460 := by
    unfold C
    simp [show (5971968 * k + 467153) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 1401460) = 8957952 * k + 700730 := by
    unfold C
    simp [show (17915904 * k + 1401460) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 700730) = 4478976 * k + 350365 := by
    unfold C
    simp [show (8957952 * k + 700730) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 350365) = 13436928 * k + 1051096 := by
    unfold C
    simp [show (4478976 * k + 350365) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1051096) = 6718464 * k + 525548 := by
    unfold C
    simp [show (13436928 * k + 1051096) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 525548) = 3359232 * k + 262774 := by
    unfold C
    simp [show (6718464 * k + 525548) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 262774) = 1679616 * k + 131387 := by
    unfold C
    simp [show (3359232 * k + 262774) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 131387) = 5038848 * k + 394162 := by
    unfold C
    simp [show (1679616 * k + 131387) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 394162) = 2519424 * k + 197081 := by
    unfold C
    simp [show (5038848 * k + 394162) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 197081) = 7558272 * k + 591244 := by
    unfold C
    simp [show (2519424 * k + 197081) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 591244) = 3779136 * k + 295622 := by
    unfold C
    simp [show (7558272 * k + 591244) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 295622) = 1889568 * k + 147811 := by
    unfold C
    simp [show (3779136 * k + 295622) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 147811) = 5668704 * k + 443434 := by
    unfold C
    simp [show (1889568 * k + 147811) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 443434) = 2834352 * k + 221717 := by
    unfold C
    simp [show (5668704 * k + 443434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 221717) = 8503056 * k + 665152 := by
    unfold C
    simp [show (2834352 * k + 221717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 665152) = 4251528 * k + 332576 := by
    unfold C
    simp [show (8503056 * k + 665152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 332576) = 2125764 * k + 166288 := by
    unfold C
    simp [show (4251528 * k + 332576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 166288) = 1062882 * k + 83144 := by
    unfold C
    simp [show (2125764 * k + 166288) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 83144) = 531441 * k + 41572 := by
    unfold C
    simp [show (1062882 * k + 83144) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 82023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 82023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_82479 : ∀ k : Nat,
    iterate (1048576 * k + 82479) 32 = 531441 * k + 41803 ∧
      531441 * k + 41803 < 1048576 * k + 82479 := by
  intro k
  have h1 : C (1048576 * k + 82479) = 3145728 * k + 247438 := by
    unfold C
    simp [show (1048576 * k + 82479) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 247438) = 1572864 * k + 123719 := by
    unfold C
    simp [show (3145728 * k + 247438) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 123719) = 4718592 * k + 371158 := by
    unfold C
    simp [show (1572864 * k + 123719) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 371158) = 2359296 * k + 185579 := by
    unfold C
    simp [show (4718592 * k + 371158) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 185579) = 7077888 * k + 556738 := by
    unfold C
    simp [show (2359296 * k + 185579) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 556738) = 3538944 * k + 278369 := by
    unfold C
    simp [show (7077888 * k + 556738) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 278369) = 10616832 * k + 835108 := by
    unfold C
    simp [show (3538944 * k + 278369) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 835108) = 5308416 * k + 417554 := by
    unfold C
    simp [show (10616832 * k + 835108) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 417554) = 2654208 * k + 208777 := by
    unfold C
    simp [show (5308416 * k + 417554) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 208777) = 7962624 * k + 626332 := by
    unfold C
    simp [show (2654208 * k + 208777) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 626332) = 3981312 * k + 313166 := by
    unfold C
    simp [show (7962624 * k + 626332) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 313166) = 1990656 * k + 156583 := by
    unfold C
    simp [show (3981312 * k + 313166) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 156583) = 5971968 * k + 469750 := by
    unfold C
    simp [show (1990656 * k + 156583) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 469750) = 2985984 * k + 234875 := by
    unfold C
    simp [show (5971968 * k + 469750) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 234875) = 8957952 * k + 704626 := by
    unfold C
    simp [show (2985984 * k + 234875) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 704626) = 4478976 * k + 352313 := by
    unfold C
    simp [show (8957952 * k + 704626) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 352313) = 13436928 * k + 1056940 := by
    unfold C
    simp [show (4478976 * k + 352313) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 1056940) = 6718464 * k + 528470 := by
    unfold C
    simp [show (13436928 * k + 1056940) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 528470) = 3359232 * k + 264235 := by
    unfold C
    simp [show (6718464 * k + 528470) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 264235) = 10077696 * k + 792706 := by
    unfold C
    simp [show (3359232 * k + 264235) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 792706) = 5038848 * k + 396353 := by
    unfold C
    simp [show (10077696 * k + 792706) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 396353) = 15116544 * k + 1189060 := by
    unfold C
    simp [show (5038848 * k + 396353) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 1189060) = 7558272 * k + 594530 := by
    unfold C
    simp [show (15116544 * k + 1189060) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 594530) = 3779136 * k + 297265 := by
    unfold C
    simp [show (7558272 * k + 594530) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 297265) = 11337408 * k + 891796 := by
    unfold C
    simp [show (3779136 * k + 297265) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 891796) = 5668704 * k + 445898 := by
    unfold C
    simp [show (11337408 * k + 891796) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 445898) = 2834352 * k + 222949 := by
    unfold C
    simp [show (5668704 * k + 445898) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 222949) = 8503056 * k + 668848 := by
    unfold C
    simp [show (2834352 * k + 222949) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 668848) = 4251528 * k + 334424 := by
    unfold C
    simp [show (8503056 * k + 668848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 334424) = 2125764 * k + 167212 := by
    unfold C
    simp [show (4251528 * k + 334424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 167212) = 1062882 * k + 83606 := by
    unfold C
    simp [show (2125764 * k + 167212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 83606) = 531441 * k + 41803 := by
    unfold C
    simp [show (1062882 * k + 83606) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 82479) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 82479)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_82751 : ∀ k : Nat,
    iterate (1048576 * k + 82751) 32 = 531441 * k + 41941 ∧
      531441 * k + 41941 < 1048576 * k + 82751 := by
  intro k
  have h1 : C (1048576 * k + 82751) = 3145728 * k + 248254 := by
    unfold C
    simp [show (1048576 * k + 82751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 248254) = 1572864 * k + 124127 := by
    unfold C
    simp [show (3145728 * k + 248254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 124127) = 4718592 * k + 372382 := by
    unfold C
    simp [show (1572864 * k + 124127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 372382) = 2359296 * k + 186191 := by
    unfold C
    simp [show (4718592 * k + 372382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 186191) = 7077888 * k + 558574 := by
    unfold C
    simp [show (2359296 * k + 186191) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 558574) = 3538944 * k + 279287 := by
    unfold C
    simp [show (7077888 * k + 558574) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 279287) = 10616832 * k + 837862 := by
    unfold C
    simp [show (3538944 * k + 279287) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 837862) = 5308416 * k + 418931 := by
    unfold C
    simp [show (10616832 * k + 837862) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 418931) = 15925248 * k + 1256794 := by
    unfold C
    simp [show (5308416 * k + 418931) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 1256794) = 7962624 * k + 628397 := by
    unfold C
    simp [show (15925248 * k + 1256794) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 628397) = 23887872 * k + 1885192 := by
    unfold C
    simp [show (7962624 * k + 628397) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1885192) = 11943936 * k + 942596 := by
    unfold C
    simp [show (23887872 * k + 1885192) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 942596) = 5971968 * k + 471298 := by
    unfold C
    simp [show (11943936 * k + 942596) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 471298) = 2985984 * k + 235649 := by
    unfold C
    simp [show (5971968 * k + 471298) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 235649) = 8957952 * k + 706948 := by
    unfold C
    simp [show (2985984 * k + 235649) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 706948) = 4478976 * k + 353474 := by
    unfold C
    simp [show (8957952 * k + 706948) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 353474) = 2239488 * k + 176737 := by
    unfold C
    simp [show (4478976 * k + 353474) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 176737) = 6718464 * k + 530212 := by
    unfold C
    simp [show (2239488 * k + 176737) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 530212) = 3359232 * k + 265106 := by
    unfold C
    simp [show (6718464 * k + 530212) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 265106) = 1679616 * k + 132553 := by
    unfold C
    simp [show (3359232 * k + 265106) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 132553) = 5038848 * k + 397660 := by
    unfold C
    simp [show (1679616 * k + 132553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 397660) = 2519424 * k + 198830 := by
    unfold C
    simp [show (5038848 * k + 397660) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 198830) = 1259712 * k + 99415 := by
    unfold C
    simp [show (2519424 * k + 198830) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 99415) = 3779136 * k + 298246 := by
    unfold C
    simp [show (1259712 * k + 99415) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 298246) = 1889568 * k + 149123 := by
    unfold C
    simp [show (3779136 * k + 298246) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 149123) = 5668704 * k + 447370 := by
    unfold C
    simp [show (1889568 * k + 149123) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 447370) = 2834352 * k + 223685 := by
    unfold C
    simp [show (5668704 * k + 447370) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 223685) = 8503056 * k + 671056 := by
    unfold C
    simp [show (2834352 * k + 223685) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 671056) = 4251528 * k + 335528 := by
    unfold C
    simp [show (8503056 * k + 671056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 335528) = 2125764 * k + 167764 := by
    unfold C
    simp [show (4251528 * k + 335528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 167764) = 1062882 * k + 83882 := by
    unfold C
    simp [show (2125764 * k + 167764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 83882) = 531441 * k + 41941 := by
    unfold C
    simp [show (1062882 * k + 83882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 82751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 82751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard012
