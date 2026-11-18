import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard002

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_5247 : ∀ k : Nat,
    iterate (1048576 * k + 5247) 32 = 531441 * k + 2660 ∧
      531441 * k + 2660 < 1048576 * k + 5247 := by
  intro k
  have h1 : C (1048576 * k + 5247) = 3145728 * k + 15742 := by
    unfold C
    simp [show (1048576 * k + 5247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 15742) = 1572864 * k + 7871 := by
    unfold C
    simp [show (3145728 * k + 15742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 7871) = 4718592 * k + 23614 := by
    unfold C
    simp [show (1572864 * k + 7871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 23614) = 2359296 * k + 11807 := by
    unfold C
    simp [show (4718592 * k + 23614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 11807) = 7077888 * k + 35422 := by
    unfold C
    simp [show (2359296 * k + 11807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 35422) = 3538944 * k + 17711 := by
    unfold C
    simp [show (7077888 * k + 35422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 17711) = 10616832 * k + 53134 := by
    unfold C
    simp [show (3538944 * k + 17711) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 53134) = 5308416 * k + 26567 := by
    unfold C
    simp [show (10616832 * k + 53134) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 26567) = 15925248 * k + 79702 := by
    unfold C
    simp [show (5308416 * k + 26567) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 79702) = 7962624 * k + 39851 := by
    unfold C
    simp [show (15925248 * k + 79702) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 39851) = 23887872 * k + 119554 := by
    unfold C
    simp [show (7962624 * k + 39851) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 119554) = 11943936 * k + 59777 := by
    unfold C
    simp [show (23887872 * k + 119554) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 59777) = 35831808 * k + 179332 := by
    unfold C
    simp [show (11943936 * k + 59777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 179332) = 17915904 * k + 89666 := by
    unfold C
    simp [show (35831808 * k + 179332) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 89666) = 8957952 * k + 44833 := by
    unfold C
    simp [show (17915904 * k + 89666) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 44833) = 26873856 * k + 134500 := by
    unfold C
    simp [show (8957952 * k + 44833) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 134500) = 13436928 * k + 67250 := by
    unfold C
    simp [show (26873856 * k + 134500) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 67250) = 6718464 * k + 33625 := by
    unfold C
    simp [show (13436928 * k + 67250) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 33625) = 20155392 * k + 100876 := by
    unfold C
    simp [show (6718464 * k + 33625) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 100876) = 10077696 * k + 50438 := by
    unfold C
    simp [show (20155392 * k + 100876) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 50438) = 5038848 * k + 25219 := by
    unfold C
    simp [show (10077696 * k + 50438) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 25219) = 15116544 * k + 75658 := by
    unfold C
    simp [show (5038848 * k + 25219) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 75658) = 7558272 * k + 37829 := by
    unfold C
    simp [show (15116544 * k + 75658) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 37829) = 22674816 * k + 113488 := by
    unfold C
    simp [show (7558272 * k + 37829) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 113488) = 11337408 * k + 56744 := by
    unfold C
    simp [show (22674816 * k + 113488) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 56744) = 5668704 * k + 28372 := by
    unfold C
    simp [show (11337408 * k + 56744) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 28372) = 2834352 * k + 14186 := by
    unfold C
    simp [show (5668704 * k + 28372) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 14186) = 1417176 * k + 7093 := by
    unfold C
    simp [show (2834352 * k + 14186) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 7093) = 4251528 * k + 21280 := by
    unfold C
    simp [show (1417176 * k + 7093) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 21280) = 2125764 * k + 10640 := by
    unfold C
    simp [show (4251528 * k + 21280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 10640) = 1062882 * k + 5320 := by
    unfold C
    simp [show (2125764 * k + 10640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 5320) = 531441 * k + 2660 := by
    unfold C
    simp [show (1062882 * k + 5320) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 5247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 5247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_5679 : ∀ k : Nat,
    iterate (1048576 * k + 5679) 32 = 531441 * k + 2879 ∧
      531441 * k + 2879 < 1048576 * k + 5679 := by
  intro k
  have h1 : C (1048576 * k + 5679) = 3145728 * k + 17038 := by
    unfold C
    simp [show (1048576 * k + 5679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 17038) = 1572864 * k + 8519 := by
    unfold C
    simp [show (3145728 * k + 17038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 8519) = 4718592 * k + 25558 := by
    unfold C
    simp [show (1572864 * k + 8519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 25558) = 2359296 * k + 12779 := by
    unfold C
    simp [show (4718592 * k + 25558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 12779) = 7077888 * k + 38338 := by
    unfold C
    simp [show (2359296 * k + 12779) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 38338) = 3538944 * k + 19169 := by
    unfold C
    simp [show (7077888 * k + 38338) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 19169) = 10616832 * k + 57508 := by
    unfold C
    simp [show (3538944 * k + 19169) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 57508) = 5308416 * k + 28754 := by
    unfold C
    simp [show (10616832 * k + 57508) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 28754) = 2654208 * k + 14377 := by
    unfold C
    simp [show (5308416 * k + 28754) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 14377) = 7962624 * k + 43132 := by
    unfold C
    simp [show (2654208 * k + 14377) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 43132) = 3981312 * k + 21566 := by
    unfold C
    simp [show (7962624 * k + 43132) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 21566) = 1990656 * k + 10783 := by
    unfold C
    simp [show (3981312 * k + 21566) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 10783) = 5971968 * k + 32350 := by
    unfold C
    simp [show (1990656 * k + 10783) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 32350) = 2985984 * k + 16175 := by
    unfold C
    simp [show (5971968 * k + 32350) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 16175) = 8957952 * k + 48526 := by
    unfold C
    simp [show (2985984 * k + 16175) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 48526) = 4478976 * k + 24263 := by
    unfold C
    simp [show (8957952 * k + 48526) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 24263) = 13436928 * k + 72790 := by
    unfold C
    simp [show (4478976 * k + 24263) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 72790) = 6718464 * k + 36395 := by
    unfold C
    simp [show (13436928 * k + 72790) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 36395) = 20155392 * k + 109186 := by
    unfold C
    simp [show (6718464 * k + 36395) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 109186) = 10077696 * k + 54593 := by
    unfold C
    simp [show (20155392 * k + 109186) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 54593) = 30233088 * k + 163780 := by
    unfold C
    simp [show (10077696 * k + 54593) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 163780) = 15116544 * k + 81890 := by
    unfold C
    simp [show (30233088 * k + 163780) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 81890) = 7558272 * k + 40945 := by
    unfold C
    simp [show (15116544 * k + 81890) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 40945) = 22674816 * k + 122836 := by
    unfold C
    simp [show (7558272 * k + 40945) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 122836) = 11337408 * k + 61418 := by
    unfold C
    simp [show (22674816 * k + 122836) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 61418) = 5668704 * k + 30709 := by
    unfold C
    simp [show (11337408 * k + 61418) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 30709) = 17006112 * k + 92128 := by
    unfold C
    simp [show (5668704 * k + 30709) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 92128) = 8503056 * k + 46064 := by
    unfold C
    simp [show (17006112 * k + 92128) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 46064) = 4251528 * k + 23032 := by
    unfold C
    simp [show (8503056 * k + 46064) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 23032) = 2125764 * k + 11516 := by
    unfold C
    simp [show (4251528 * k + 23032) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 11516) = 1062882 * k + 5758 := by
    unfold C
    simp [show (2125764 * k + 11516) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 5758) = 531441 * k + 2879 := by
    unfold C
    simp [show (1062882 * k + 5758) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 5679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 5679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_6235 : ∀ k : Nat,
    iterate (1048576 * k + 6235) 32 = 531441 * k + 3161 ∧
      531441 * k + 3161 < 1048576 * k + 6235 := by
  intro k
  have h1 : C (1048576 * k + 6235) = 3145728 * k + 18706 := by
    unfold C
    simp [show (1048576 * k + 6235) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 18706) = 1572864 * k + 9353 := by
    unfold C
    simp [show (3145728 * k + 18706) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 9353) = 4718592 * k + 28060 := by
    unfold C
    simp [show (1572864 * k + 9353) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 28060) = 2359296 * k + 14030 := by
    unfold C
    simp [show (4718592 * k + 28060) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 14030) = 1179648 * k + 7015 := by
    unfold C
    simp [show (2359296 * k + 14030) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 7015) = 3538944 * k + 21046 := by
    unfold C
    simp [show (1179648 * k + 7015) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 21046) = 1769472 * k + 10523 := by
    unfold C
    simp [show (3538944 * k + 21046) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 10523) = 5308416 * k + 31570 := by
    unfold C
    simp [show (1769472 * k + 10523) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 31570) = 2654208 * k + 15785 := by
    unfold C
    simp [show (5308416 * k + 31570) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 15785) = 7962624 * k + 47356 := by
    unfold C
    simp [show (2654208 * k + 15785) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 47356) = 3981312 * k + 23678 := by
    unfold C
    simp [show (7962624 * k + 47356) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 23678) = 1990656 * k + 11839 := by
    unfold C
    simp [show (3981312 * k + 23678) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 11839) = 5971968 * k + 35518 := by
    unfold C
    simp [show (1990656 * k + 11839) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 35518) = 2985984 * k + 17759 := by
    unfold C
    simp [show (5971968 * k + 35518) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 17759) = 8957952 * k + 53278 := by
    unfold C
    simp [show (2985984 * k + 17759) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 53278) = 4478976 * k + 26639 := by
    unfold C
    simp [show (8957952 * k + 53278) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 26639) = 13436928 * k + 79918 := by
    unfold C
    simp [show (4478976 * k + 26639) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 79918) = 6718464 * k + 39959 := by
    unfold C
    simp [show (13436928 * k + 79918) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 39959) = 20155392 * k + 119878 := by
    unfold C
    simp [show (6718464 * k + 39959) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 119878) = 10077696 * k + 59939 := by
    unfold C
    simp [show (20155392 * k + 119878) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 59939) = 30233088 * k + 179818 := by
    unfold C
    simp [show (10077696 * k + 59939) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 179818) = 15116544 * k + 89909 := by
    unfold C
    simp [show (30233088 * k + 179818) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 89909) = 45349632 * k + 269728 := by
    unfold C
    simp [show (15116544 * k + 89909) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 269728) = 22674816 * k + 134864 := by
    unfold C
    simp [show (45349632 * k + 269728) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 134864) = 11337408 * k + 67432 := by
    unfold C
    simp [show (22674816 * k + 134864) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 67432) = 5668704 * k + 33716 := by
    unfold C
    simp [show (11337408 * k + 67432) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 33716) = 2834352 * k + 16858 := by
    unfold C
    simp [show (5668704 * k + 33716) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 16858) = 1417176 * k + 8429 := by
    unfold C
    simp [show (2834352 * k + 16858) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 8429) = 4251528 * k + 25288 := by
    unfold C
    simp [show (1417176 * k + 8429) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 25288) = 2125764 * k + 12644 := by
    unfold C
    simp [show (4251528 * k + 25288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 12644) = 1062882 * k + 6322 := by
    unfold C
    simp [show (2125764 * k + 12644) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 6322) = 531441 * k + 3161 := by
    unfold C
    simp [show (1062882 * k + 6322) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 6235) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 6235)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_7271 : ∀ k : Nat,
    iterate (1048576 * k + 7271) 32 = 531441 * k + 3686 ∧
      531441 * k + 3686 < 1048576 * k + 7271 := by
  intro k
  have h1 : C (1048576 * k + 7271) = 3145728 * k + 21814 := by
    unfold C
    simp [show (1048576 * k + 7271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 21814) = 1572864 * k + 10907 := by
    unfold C
    simp [show (3145728 * k + 21814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 10907) = 4718592 * k + 32722 := by
    unfold C
    simp [show (1572864 * k + 10907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 32722) = 2359296 * k + 16361 := by
    unfold C
    simp [show (4718592 * k + 32722) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 16361) = 7077888 * k + 49084 := by
    unfold C
    simp [show (2359296 * k + 16361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 49084) = 3538944 * k + 24542 := by
    unfold C
    simp [show (7077888 * k + 49084) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 24542) = 1769472 * k + 12271 := by
    unfold C
    simp [show (3538944 * k + 24542) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 12271) = 5308416 * k + 36814 := by
    unfold C
    simp [show (1769472 * k + 12271) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 36814) = 2654208 * k + 18407 := by
    unfold C
    simp [show (5308416 * k + 36814) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 18407) = 7962624 * k + 55222 := by
    unfold C
    simp [show (2654208 * k + 18407) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 55222) = 3981312 * k + 27611 := by
    unfold C
    simp [show (7962624 * k + 55222) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 27611) = 11943936 * k + 82834 := by
    unfold C
    simp [show (3981312 * k + 27611) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 82834) = 5971968 * k + 41417 := by
    unfold C
    simp [show (11943936 * k + 82834) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 41417) = 17915904 * k + 124252 := by
    unfold C
    simp [show (5971968 * k + 41417) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 124252) = 8957952 * k + 62126 := by
    unfold C
    simp [show (17915904 * k + 124252) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 62126) = 4478976 * k + 31063 := by
    unfold C
    simp [show (8957952 * k + 62126) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 31063) = 13436928 * k + 93190 := by
    unfold C
    simp [show (4478976 * k + 31063) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 93190) = 6718464 * k + 46595 := by
    unfold C
    simp [show (13436928 * k + 93190) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 46595) = 20155392 * k + 139786 := by
    unfold C
    simp [show (6718464 * k + 46595) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 139786) = 10077696 * k + 69893 := by
    unfold C
    simp [show (20155392 * k + 139786) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 69893) = 30233088 * k + 209680 := by
    unfold C
    simp [show (10077696 * k + 69893) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 209680) = 15116544 * k + 104840 := by
    unfold C
    simp [show (30233088 * k + 209680) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 104840) = 7558272 * k + 52420 := by
    unfold C
    simp [show (15116544 * k + 104840) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 52420) = 3779136 * k + 26210 := by
    unfold C
    simp [show (7558272 * k + 52420) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 26210) = 1889568 * k + 13105 := by
    unfold C
    simp [show (3779136 * k + 26210) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 13105) = 5668704 * k + 39316 := by
    unfold C
    simp [show (1889568 * k + 13105) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 39316) = 2834352 * k + 19658 := by
    unfold C
    simp [show (5668704 * k + 39316) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 19658) = 1417176 * k + 9829 := by
    unfold C
    simp [show (2834352 * k + 19658) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 9829) = 4251528 * k + 29488 := by
    unfold C
    simp [show (1417176 * k + 9829) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 29488) = 2125764 * k + 14744 := by
    unfold C
    simp [show (4251528 * k + 29488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 14744) = 1062882 * k + 7372 := by
    unfold C
    simp [show (2125764 * k + 14744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 7372) = 531441 * k + 3686 := by
    unfold C
    simp [show (1062882 * k + 7372) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 7271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 7271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_7583 : ∀ k : Nat,
    iterate (1048576 * k + 7583) 32 = 531441 * k + 3844 ∧
      531441 * k + 3844 < 1048576 * k + 7583 := by
  intro k
  have h1 : C (1048576 * k + 7583) = 3145728 * k + 22750 := by
    unfold C
    simp [show (1048576 * k + 7583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 22750) = 1572864 * k + 11375 := by
    unfold C
    simp [show (3145728 * k + 22750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 11375) = 4718592 * k + 34126 := by
    unfold C
    simp [show (1572864 * k + 11375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 34126) = 2359296 * k + 17063 := by
    unfold C
    simp [show (4718592 * k + 34126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 17063) = 7077888 * k + 51190 := by
    unfold C
    simp [show (2359296 * k + 17063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 51190) = 3538944 * k + 25595 := by
    unfold C
    simp [show (7077888 * k + 51190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 25595) = 10616832 * k + 76786 := by
    unfold C
    simp [show (3538944 * k + 25595) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 76786) = 5308416 * k + 38393 := by
    unfold C
    simp [show (10616832 * k + 76786) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 38393) = 15925248 * k + 115180 := by
    unfold C
    simp [show (5308416 * k + 38393) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 115180) = 7962624 * k + 57590 := by
    unfold C
    simp [show (15925248 * k + 115180) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 57590) = 3981312 * k + 28795 := by
    unfold C
    simp [show (7962624 * k + 57590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 28795) = 11943936 * k + 86386 := by
    unfold C
    simp [show (3981312 * k + 28795) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 86386) = 5971968 * k + 43193 := by
    unfold C
    simp [show (11943936 * k + 86386) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 43193) = 17915904 * k + 129580 := by
    unfold C
    simp [show (5971968 * k + 43193) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 129580) = 8957952 * k + 64790 := by
    unfold C
    simp [show (17915904 * k + 129580) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 64790) = 4478976 * k + 32395 := by
    unfold C
    simp [show (8957952 * k + 64790) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 32395) = 13436928 * k + 97186 := by
    unfold C
    simp [show (4478976 * k + 32395) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 97186) = 6718464 * k + 48593 := by
    unfold C
    simp [show (13436928 * k + 97186) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 48593) = 20155392 * k + 145780 := by
    unfold C
    simp [show (6718464 * k + 48593) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 145780) = 10077696 * k + 72890 := by
    unfold C
    simp [show (20155392 * k + 145780) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 72890) = 5038848 * k + 36445 := by
    unfold C
    simp [show (10077696 * k + 72890) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 36445) = 15116544 * k + 109336 := by
    unfold C
    simp [show (5038848 * k + 36445) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 109336) = 7558272 * k + 54668 := by
    unfold C
    simp [show (15116544 * k + 109336) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 54668) = 3779136 * k + 27334 := by
    unfold C
    simp [show (7558272 * k + 54668) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 27334) = 1889568 * k + 13667 := by
    unfold C
    simp [show (3779136 * k + 27334) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 13667) = 5668704 * k + 41002 := by
    unfold C
    simp [show (1889568 * k + 13667) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 41002) = 2834352 * k + 20501 := by
    unfold C
    simp [show (5668704 * k + 41002) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 20501) = 8503056 * k + 61504 := by
    unfold C
    simp [show (2834352 * k + 20501) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 61504) = 4251528 * k + 30752 := by
    unfold C
    simp [show (8503056 * k + 61504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 30752) = 2125764 * k + 15376 := by
    unfold C
    simp [show (4251528 * k + 30752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 15376) = 1062882 * k + 7688 := by
    unfold C
    simp [show (2125764 * k + 15376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 7688) = 531441 * k + 3844 := by
    unfold C
    simp [show (1062882 * k + 7688) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 7583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 7583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_7615 : ∀ k : Nat,
    iterate (1048576 * k + 7615) 32 = 531441 * k + 3860 ∧
      531441 * k + 3860 < 1048576 * k + 7615 := by
  intro k
  have h1 : C (1048576 * k + 7615) = 3145728 * k + 22846 := by
    unfold C
    simp [show (1048576 * k + 7615) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 22846) = 1572864 * k + 11423 := by
    unfold C
    simp [show (3145728 * k + 22846) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 11423) = 4718592 * k + 34270 := by
    unfold C
    simp [show (1572864 * k + 11423) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 34270) = 2359296 * k + 17135 := by
    unfold C
    simp [show (4718592 * k + 34270) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 17135) = 7077888 * k + 51406 := by
    unfold C
    simp [show (2359296 * k + 17135) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 51406) = 3538944 * k + 25703 := by
    unfold C
    simp [show (7077888 * k + 51406) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 25703) = 10616832 * k + 77110 := by
    unfold C
    simp [show (3538944 * k + 25703) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 77110) = 5308416 * k + 38555 := by
    unfold C
    simp [show (10616832 * k + 77110) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 38555) = 15925248 * k + 115666 := by
    unfold C
    simp [show (5308416 * k + 38555) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 115666) = 7962624 * k + 57833 := by
    unfold C
    simp [show (15925248 * k + 115666) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 57833) = 23887872 * k + 173500 := by
    unfold C
    simp [show (7962624 * k + 57833) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 173500) = 11943936 * k + 86750 := by
    unfold C
    simp [show (23887872 * k + 173500) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 86750) = 5971968 * k + 43375 := by
    unfold C
    simp [show (11943936 * k + 86750) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 43375) = 17915904 * k + 130126 := by
    unfold C
    simp [show (5971968 * k + 43375) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 130126) = 8957952 * k + 65063 := by
    unfold C
    simp [show (17915904 * k + 130126) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 65063) = 26873856 * k + 195190 := by
    unfold C
    simp [show (8957952 * k + 65063) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 195190) = 13436928 * k + 97595 := by
    unfold C
    simp [show (26873856 * k + 195190) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 97595) = 40310784 * k + 292786 := by
    unfold C
    simp [show (13436928 * k + 97595) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 292786) = 20155392 * k + 146393 := by
    unfold C
    simp [show (40310784 * k + 292786) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 146393) = 60466176 * k + 439180 := by
    unfold C
    simp [show (20155392 * k + 146393) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 439180) = 30233088 * k + 219590 := by
    unfold C
    simp [show (60466176 * k + 439180) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 219590) = 15116544 * k + 109795 := by
    unfold C
    simp [show (30233088 * k + 219590) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 109795) = 45349632 * k + 329386 := by
    unfold C
    simp [show (15116544 * k + 109795) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 329386) = 22674816 * k + 164693 := by
    unfold C
    simp [show (45349632 * k + 329386) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 164693) = 68024448 * k + 494080 := by
    unfold C
    simp [show (22674816 * k + 164693) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 494080) = 34012224 * k + 247040 := by
    unfold C
    simp [show (68024448 * k + 494080) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 247040) = 17006112 * k + 123520 := by
    unfold C
    simp [show (34012224 * k + 247040) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 123520) = 8503056 * k + 61760 := by
    unfold C
    simp [show (17006112 * k + 123520) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 61760) = 4251528 * k + 30880 := by
    unfold C
    simp [show (8503056 * k + 61760) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 30880) = 2125764 * k + 15440 := by
    unfold C
    simp [show (4251528 * k + 30880) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 15440) = 1062882 * k + 7720 := by
    unfold C
    simp [show (2125764 * k + 15440) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 7720) = 531441 * k + 3860 := by
    unfold C
    simp [show (1062882 * k + 7720) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 7615) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 7615)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_7707 : ∀ k : Nat,
    iterate (1048576 * k + 7707) 32 = 531441 * k + 3907 ∧
      531441 * k + 3907 < 1048576 * k + 7707 := by
  intro k
  have h1 : C (1048576 * k + 7707) = 3145728 * k + 23122 := by
    unfold C
    simp [show (1048576 * k + 7707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 23122) = 1572864 * k + 11561 := by
    unfold C
    simp [show (3145728 * k + 23122) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 11561) = 4718592 * k + 34684 := by
    unfold C
    simp [show (1572864 * k + 11561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 34684) = 2359296 * k + 17342 := by
    unfold C
    simp [show (4718592 * k + 34684) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 17342) = 1179648 * k + 8671 := by
    unfold C
    simp [show (2359296 * k + 17342) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 8671) = 3538944 * k + 26014 := by
    unfold C
    simp [show (1179648 * k + 8671) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 26014) = 1769472 * k + 13007 := by
    unfold C
    simp [show (3538944 * k + 26014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 13007) = 5308416 * k + 39022 := by
    unfold C
    simp [show (1769472 * k + 13007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 39022) = 2654208 * k + 19511 := by
    unfold C
    simp [show (5308416 * k + 39022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 19511) = 7962624 * k + 58534 := by
    unfold C
    simp [show (2654208 * k + 19511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 58534) = 3981312 * k + 29267 := by
    unfold C
    simp [show (7962624 * k + 58534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 29267) = 11943936 * k + 87802 := by
    unfold C
    simp [show (3981312 * k + 29267) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 87802) = 5971968 * k + 43901 := by
    unfold C
    simp [show (11943936 * k + 87802) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 43901) = 17915904 * k + 131704 := by
    unfold C
    simp [show (5971968 * k + 43901) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 131704) = 8957952 * k + 65852 := by
    unfold C
    simp [show (17915904 * k + 131704) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 65852) = 4478976 * k + 32926 := by
    unfold C
    simp [show (8957952 * k + 65852) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 32926) = 2239488 * k + 16463 := by
    unfold C
    simp [show (4478976 * k + 32926) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 16463) = 6718464 * k + 49390 := by
    unfold C
    simp [show (2239488 * k + 16463) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 49390) = 3359232 * k + 24695 := by
    unfold C
    simp [show (6718464 * k + 49390) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 24695) = 10077696 * k + 74086 := by
    unfold C
    simp [show (3359232 * k + 24695) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 74086) = 5038848 * k + 37043 := by
    unfold C
    simp [show (10077696 * k + 74086) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 37043) = 15116544 * k + 111130 := by
    unfold C
    simp [show (5038848 * k + 37043) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 111130) = 7558272 * k + 55565 := by
    unfold C
    simp [show (15116544 * k + 111130) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 55565) = 22674816 * k + 166696 := by
    unfold C
    simp [show (7558272 * k + 55565) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 166696) = 11337408 * k + 83348 := by
    unfold C
    simp [show (22674816 * k + 166696) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 83348) = 5668704 * k + 41674 := by
    unfold C
    simp [show (11337408 * k + 83348) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 41674) = 2834352 * k + 20837 := by
    unfold C
    simp [show (5668704 * k + 41674) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 20837) = 8503056 * k + 62512 := by
    unfold C
    simp [show (2834352 * k + 20837) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 62512) = 4251528 * k + 31256 := by
    unfold C
    simp [show (8503056 * k + 62512) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 31256) = 2125764 * k + 15628 := by
    unfold C
    simp [show (4251528 * k + 31256) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 15628) = 1062882 * k + 7814 := by
    unfold C
    simp [show (2125764 * k + 15628) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 7814) = 531441 * k + 3907 := by
    unfold C
    simp [show (1062882 * k + 7814) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 7707) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 7707)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_7999 : ∀ k : Nat,
    iterate (1048576 * k + 7999) 32 = 531441 * k + 4055 ∧
      531441 * k + 4055 < 1048576 * k + 7999 := by
  intro k
  have h1 : C (1048576 * k + 7999) = 3145728 * k + 23998 := by
    unfold C
    simp [show (1048576 * k + 7999) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 23998) = 1572864 * k + 11999 := by
    unfold C
    simp [show (3145728 * k + 23998) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 11999) = 4718592 * k + 35998 := by
    unfold C
    simp [show (1572864 * k + 11999) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 35998) = 2359296 * k + 17999 := by
    unfold C
    simp [show (4718592 * k + 35998) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 17999) = 7077888 * k + 53998 := by
    unfold C
    simp [show (2359296 * k + 17999) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 53998) = 3538944 * k + 26999 := by
    unfold C
    simp [show (7077888 * k + 53998) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 26999) = 10616832 * k + 80998 := by
    unfold C
    simp [show (3538944 * k + 26999) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 80998) = 5308416 * k + 40499 := by
    unfold C
    simp [show (10616832 * k + 80998) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 40499) = 15925248 * k + 121498 := by
    unfold C
    simp [show (5308416 * k + 40499) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 121498) = 7962624 * k + 60749 := by
    unfold C
    simp [show (15925248 * k + 121498) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 60749) = 23887872 * k + 182248 := by
    unfold C
    simp [show (7962624 * k + 60749) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 182248) = 11943936 * k + 91124 := by
    unfold C
    simp [show (23887872 * k + 182248) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 91124) = 5971968 * k + 45562 := by
    unfold C
    simp [show (11943936 * k + 91124) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 45562) = 2985984 * k + 22781 := by
    unfold C
    simp [show (5971968 * k + 45562) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 22781) = 8957952 * k + 68344 := by
    unfold C
    simp [show (2985984 * k + 22781) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 68344) = 4478976 * k + 34172 := by
    unfold C
    simp [show (8957952 * k + 68344) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 34172) = 2239488 * k + 17086 := by
    unfold C
    simp [show (4478976 * k + 34172) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 17086) = 1119744 * k + 8543 := by
    unfold C
    simp [show (2239488 * k + 17086) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 8543) = 3359232 * k + 25630 := by
    unfold C
    simp [show (1119744 * k + 8543) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 25630) = 1679616 * k + 12815 := by
    unfold C
    simp [show (3359232 * k + 25630) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 12815) = 5038848 * k + 38446 := by
    unfold C
    simp [show (1679616 * k + 12815) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 38446) = 2519424 * k + 19223 := by
    unfold C
    simp [show (5038848 * k + 38446) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 19223) = 7558272 * k + 57670 := by
    unfold C
    simp [show (2519424 * k + 19223) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 57670) = 3779136 * k + 28835 := by
    unfold C
    simp [show (7558272 * k + 57670) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 28835) = 11337408 * k + 86506 := by
    unfold C
    simp [show (3779136 * k + 28835) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 86506) = 5668704 * k + 43253 := by
    unfold C
    simp [show (11337408 * k + 86506) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 43253) = 17006112 * k + 129760 := by
    unfold C
    simp [show (5668704 * k + 43253) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 129760) = 8503056 * k + 64880 := by
    unfold C
    simp [show (17006112 * k + 129760) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 64880) = 4251528 * k + 32440 := by
    unfold C
    simp [show (8503056 * k + 64880) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 32440) = 2125764 * k + 16220 := by
    unfold C
    simp [show (4251528 * k + 32440) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 16220) = 1062882 * k + 8110 := by
    unfold C
    simp [show (2125764 * k + 16220) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 8110) = 531441 * k + 4055 := by
    unfold C
    simp [show (1062882 * k + 8110) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 7999) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 7999)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_8039 : ∀ k : Nat,
    iterate (1048576 * k + 8039) 32 = 531441 * k + 4075 ∧
      531441 * k + 4075 < 1048576 * k + 8039 := by
  intro k
  have h1 : C (1048576 * k + 8039) = 3145728 * k + 24118 := by
    unfold C
    simp [show (1048576 * k + 8039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 24118) = 1572864 * k + 12059 := by
    unfold C
    simp [show (3145728 * k + 24118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 12059) = 4718592 * k + 36178 := by
    unfold C
    simp [show (1572864 * k + 12059) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 36178) = 2359296 * k + 18089 := by
    unfold C
    simp [show (4718592 * k + 36178) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 18089) = 7077888 * k + 54268 := by
    unfold C
    simp [show (2359296 * k + 18089) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 54268) = 3538944 * k + 27134 := by
    unfold C
    simp [show (7077888 * k + 54268) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 27134) = 1769472 * k + 13567 := by
    unfold C
    simp [show (3538944 * k + 27134) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 13567) = 5308416 * k + 40702 := by
    unfold C
    simp [show (1769472 * k + 13567) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 40702) = 2654208 * k + 20351 := by
    unfold C
    simp [show (5308416 * k + 40702) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 20351) = 7962624 * k + 61054 := by
    unfold C
    simp [show (2654208 * k + 20351) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 61054) = 3981312 * k + 30527 := by
    unfold C
    simp [show (7962624 * k + 61054) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 30527) = 11943936 * k + 91582 := by
    unfold C
    simp [show (3981312 * k + 30527) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 91582) = 5971968 * k + 45791 := by
    unfold C
    simp [show (11943936 * k + 91582) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 45791) = 17915904 * k + 137374 := by
    unfold C
    simp [show (5971968 * k + 45791) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 137374) = 8957952 * k + 68687 := by
    unfold C
    simp [show (17915904 * k + 137374) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 68687) = 26873856 * k + 206062 := by
    unfold C
    simp [show (8957952 * k + 68687) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 206062) = 13436928 * k + 103031 := by
    unfold C
    simp [show (26873856 * k + 206062) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 103031) = 40310784 * k + 309094 := by
    unfold C
    simp [show (13436928 * k + 103031) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 309094) = 20155392 * k + 154547 := by
    unfold C
    simp [show (40310784 * k + 309094) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 154547) = 60466176 * k + 463642 := by
    unfold C
    simp [show (20155392 * k + 154547) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 463642) = 30233088 * k + 231821 := by
    unfold C
    simp [show (60466176 * k + 463642) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 231821) = 90699264 * k + 695464 := by
    unfold C
    simp [show (30233088 * k + 231821) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 695464) = 45349632 * k + 347732 := by
    unfold C
    simp [show (90699264 * k + 695464) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 347732) = 22674816 * k + 173866 := by
    unfold C
    simp [show (45349632 * k + 347732) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 173866) = 11337408 * k + 86933 := by
    unfold C
    simp [show (22674816 * k + 173866) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 86933) = 34012224 * k + 260800 := by
    unfold C
    simp [show (11337408 * k + 86933) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 260800) = 17006112 * k + 130400 := by
    unfold C
    simp [show (34012224 * k + 260800) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 130400) = 8503056 * k + 65200 := by
    unfold C
    simp [show (17006112 * k + 130400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 65200) = 4251528 * k + 32600 := by
    unfold C
    simp [show (8503056 * k + 65200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 32600) = 2125764 * k + 16300 := by
    unfold C
    simp [show (4251528 * k + 32600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 16300) = 1062882 * k + 8150 := by
    unfold C
    simp [show (2125764 * k + 16300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 8150) = 531441 * k + 4075 := by
    unfold C
    simp [show (1062882 * k + 8150) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 8039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 8039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_8283 : ∀ k : Nat,
    iterate (1048576 * k + 8283) 32 = 531441 * k + 4199 ∧
      531441 * k + 4199 < 1048576 * k + 8283 := by
  intro k
  have h1 : C (1048576 * k + 8283) = 3145728 * k + 24850 := by
    unfold C
    simp [show (1048576 * k + 8283) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 24850) = 1572864 * k + 12425 := by
    unfold C
    simp [show (3145728 * k + 24850) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 12425) = 4718592 * k + 37276 := by
    unfold C
    simp [show (1572864 * k + 12425) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 37276) = 2359296 * k + 18638 := by
    unfold C
    simp [show (4718592 * k + 37276) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 18638) = 1179648 * k + 9319 := by
    unfold C
    simp [show (2359296 * k + 18638) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 9319) = 3538944 * k + 27958 := by
    unfold C
    simp [show (1179648 * k + 9319) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 27958) = 1769472 * k + 13979 := by
    unfold C
    simp [show (3538944 * k + 27958) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 13979) = 5308416 * k + 41938 := by
    unfold C
    simp [show (1769472 * k + 13979) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 41938) = 2654208 * k + 20969 := by
    unfold C
    simp [show (5308416 * k + 41938) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 20969) = 7962624 * k + 62908 := by
    unfold C
    simp [show (2654208 * k + 20969) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 62908) = 3981312 * k + 31454 := by
    unfold C
    simp [show (7962624 * k + 62908) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 31454) = 1990656 * k + 15727 := by
    unfold C
    simp [show (3981312 * k + 31454) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 15727) = 5971968 * k + 47182 := by
    unfold C
    simp [show (1990656 * k + 15727) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 47182) = 2985984 * k + 23591 := by
    unfold C
    simp [show (5971968 * k + 47182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 23591) = 8957952 * k + 70774 := by
    unfold C
    simp [show (2985984 * k + 23591) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 70774) = 4478976 * k + 35387 := by
    unfold C
    simp [show (8957952 * k + 70774) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 35387) = 13436928 * k + 106162 := by
    unfold C
    simp [show (4478976 * k + 35387) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 106162) = 6718464 * k + 53081 := by
    unfold C
    simp [show (13436928 * k + 106162) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 53081) = 20155392 * k + 159244 := by
    unfold C
    simp [show (6718464 * k + 53081) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 159244) = 10077696 * k + 79622 := by
    unfold C
    simp [show (20155392 * k + 159244) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 79622) = 5038848 * k + 39811 := by
    unfold C
    simp [show (10077696 * k + 79622) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 39811) = 15116544 * k + 119434 := by
    unfold C
    simp [show (5038848 * k + 39811) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 119434) = 7558272 * k + 59717 := by
    unfold C
    simp [show (15116544 * k + 119434) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 59717) = 22674816 * k + 179152 := by
    unfold C
    simp [show (7558272 * k + 59717) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 179152) = 11337408 * k + 89576 := by
    unfold C
    simp [show (22674816 * k + 179152) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 89576) = 5668704 * k + 44788 := by
    unfold C
    simp [show (11337408 * k + 89576) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 44788) = 2834352 * k + 22394 := by
    unfold C
    simp [show (5668704 * k + 44788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 22394) = 1417176 * k + 11197 := by
    unfold C
    simp [show (2834352 * k + 22394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 11197) = 4251528 * k + 33592 := by
    unfold C
    simp [show (1417176 * k + 11197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 33592) = 2125764 * k + 16796 := by
    unfold C
    simp [show (4251528 * k + 33592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 16796) = 1062882 * k + 8398 := by
    unfold C
    simp [show (2125764 * k + 16796) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 8398) = 531441 * k + 4199 := by
    unfold C
    simp [show (1062882 * k + 8398) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 8283) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 8283)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_8319 : ∀ k : Nat,
    iterate (1048576 * k + 8319) 32 = 531441 * k + 4217 ∧
      531441 * k + 4217 < 1048576 * k + 8319 := by
  intro k
  have h1 : C (1048576 * k + 8319) = 3145728 * k + 24958 := by
    unfold C
    simp [show (1048576 * k + 8319) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 24958) = 1572864 * k + 12479 := by
    unfold C
    simp [show (3145728 * k + 24958) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 12479) = 4718592 * k + 37438 := by
    unfold C
    simp [show (1572864 * k + 12479) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 37438) = 2359296 * k + 18719 := by
    unfold C
    simp [show (4718592 * k + 37438) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 18719) = 7077888 * k + 56158 := by
    unfold C
    simp [show (2359296 * k + 18719) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 56158) = 3538944 * k + 28079 := by
    unfold C
    simp [show (7077888 * k + 56158) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 28079) = 10616832 * k + 84238 := by
    unfold C
    simp [show (3538944 * k + 28079) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 84238) = 5308416 * k + 42119 := by
    unfold C
    simp [show (10616832 * k + 84238) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 42119) = 15925248 * k + 126358 := by
    unfold C
    simp [show (5308416 * k + 42119) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 126358) = 7962624 * k + 63179 := by
    unfold C
    simp [show (15925248 * k + 126358) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 63179) = 23887872 * k + 189538 := by
    unfold C
    simp [show (7962624 * k + 63179) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 189538) = 11943936 * k + 94769 := by
    unfold C
    simp [show (23887872 * k + 189538) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 94769) = 35831808 * k + 284308 := by
    unfold C
    simp [show (11943936 * k + 94769) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 284308) = 17915904 * k + 142154 := by
    unfold C
    simp [show (35831808 * k + 284308) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 142154) = 8957952 * k + 71077 := by
    unfold C
    simp [show (17915904 * k + 142154) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 71077) = 26873856 * k + 213232 := by
    unfold C
    simp [show (8957952 * k + 71077) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 213232) = 13436928 * k + 106616 := by
    unfold C
    simp [show (26873856 * k + 213232) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 106616) = 6718464 * k + 53308 := by
    unfold C
    simp [show (13436928 * k + 106616) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 53308) = 3359232 * k + 26654 := by
    unfold C
    simp [show (6718464 * k + 53308) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 26654) = 1679616 * k + 13327 := by
    unfold C
    simp [show (3359232 * k + 26654) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 13327) = 5038848 * k + 39982 := by
    unfold C
    simp [show (1679616 * k + 13327) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 39982) = 2519424 * k + 19991 := by
    unfold C
    simp [show (5038848 * k + 39982) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 19991) = 7558272 * k + 59974 := by
    unfold C
    simp [show (2519424 * k + 19991) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 59974) = 3779136 * k + 29987 := by
    unfold C
    simp [show (7558272 * k + 59974) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 29987) = 11337408 * k + 89962 := by
    unfold C
    simp [show (3779136 * k + 29987) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 89962) = 5668704 * k + 44981 := by
    unfold C
    simp [show (11337408 * k + 89962) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 44981) = 17006112 * k + 134944 := by
    unfold C
    simp [show (5668704 * k + 44981) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 134944) = 8503056 * k + 67472 := by
    unfold C
    simp [show (17006112 * k + 134944) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 67472) = 4251528 * k + 33736 := by
    unfold C
    simp [show (8503056 * k + 67472) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 33736) = 2125764 * k + 16868 := by
    unfold C
    simp [show (4251528 * k + 33736) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 16868) = 1062882 * k + 8434 := by
    unfold C
    simp [show (2125764 * k + 16868) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 8434) = 531441 * k + 4217 := by
    unfold C
    simp [show (1062882 * k + 8434) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 8319) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 8319)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_8607 : ∀ k : Nat,
    iterate (1048576 * k + 8607) 32 = 531441 * k + 4363 ∧
      531441 * k + 4363 < 1048576 * k + 8607 := by
  intro k
  have h1 : C (1048576 * k + 8607) = 3145728 * k + 25822 := by
    unfold C
    simp [show (1048576 * k + 8607) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 25822) = 1572864 * k + 12911 := by
    unfold C
    simp [show (3145728 * k + 25822) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 12911) = 4718592 * k + 38734 := by
    unfold C
    simp [show (1572864 * k + 12911) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 38734) = 2359296 * k + 19367 := by
    unfold C
    simp [show (4718592 * k + 38734) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 19367) = 7077888 * k + 58102 := by
    unfold C
    simp [show (2359296 * k + 19367) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 58102) = 3538944 * k + 29051 := by
    unfold C
    simp [show (7077888 * k + 58102) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 29051) = 10616832 * k + 87154 := by
    unfold C
    simp [show (3538944 * k + 29051) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 87154) = 5308416 * k + 43577 := by
    unfold C
    simp [show (10616832 * k + 87154) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 43577) = 15925248 * k + 130732 := by
    unfold C
    simp [show (5308416 * k + 43577) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 130732) = 7962624 * k + 65366 := by
    unfold C
    simp [show (15925248 * k + 130732) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 65366) = 3981312 * k + 32683 := by
    unfold C
    simp [show (7962624 * k + 65366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 32683) = 11943936 * k + 98050 := by
    unfold C
    simp [show (3981312 * k + 32683) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 98050) = 5971968 * k + 49025 := by
    unfold C
    simp [show (11943936 * k + 98050) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 49025) = 17915904 * k + 147076 := by
    unfold C
    simp [show (5971968 * k + 49025) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 147076) = 8957952 * k + 73538 := by
    unfold C
    simp [show (17915904 * k + 147076) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 73538) = 4478976 * k + 36769 := by
    unfold C
    simp [show (8957952 * k + 73538) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 36769) = 13436928 * k + 110308 := by
    unfold C
    simp [show (4478976 * k + 36769) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 110308) = 6718464 * k + 55154 := by
    unfold C
    simp [show (13436928 * k + 110308) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 55154) = 3359232 * k + 27577 := by
    unfold C
    simp [show (6718464 * k + 55154) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 27577) = 10077696 * k + 82732 := by
    unfold C
    simp [show (3359232 * k + 27577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 82732) = 5038848 * k + 41366 := by
    unfold C
    simp [show (10077696 * k + 82732) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 41366) = 2519424 * k + 20683 := by
    unfold C
    simp [show (5038848 * k + 41366) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 20683) = 7558272 * k + 62050 := by
    unfold C
    simp [show (2519424 * k + 20683) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 62050) = 3779136 * k + 31025 := by
    unfold C
    simp [show (7558272 * k + 62050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 31025) = 11337408 * k + 93076 := by
    unfold C
    simp [show (3779136 * k + 31025) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 93076) = 5668704 * k + 46538 := by
    unfold C
    simp [show (11337408 * k + 93076) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 46538) = 2834352 * k + 23269 := by
    unfold C
    simp [show (5668704 * k + 46538) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 23269) = 8503056 * k + 69808 := by
    unfold C
    simp [show (2834352 * k + 23269) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 69808) = 4251528 * k + 34904 := by
    unfold C
    simp [show (8503056 * k + 69808) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 34904) = 2125764 * k + 17452 := by
    unfold C
    simp [show (4251528 * k + 34904) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 17452) = 1062882 * k + 8726 := by
    unfold C
    simp [show (2125764 * k + 17452) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 8726) = 531441 * k + 4363 := by
    unfold C
    simp [show (1062882 * k + 8726) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 8607) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 8607)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_8751 : ∀ k : Nat,
    iterate (1048576 * k + 8751) 32 = 531441 * k + 4436 ∧
      531441 * k + 4436 < 1048576 * k + 8751 := by
  intro k
  have h1 : C (1048576 * k + 8751) = 3145728 * k + 26254 := by
    unfold C
    simp [show (1048576 * k + 8751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 26254) = 1572864 * k + 13127 := by
    unfold C
    simp [show (3145728 * k + 26254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 13127) = 4718592 * k + 39382 := by
    unfold C
    simp [show (1572864 * k + 13127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 39382) = 2359296 * k + 19691 := by
    unfold C
    simp [show (4718592 * k + 39382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 19691) = 7077888 * k + 59074 := by
    unfold C
    simp [show (2359296 * k + 19691) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 59074) = 3538944 * k + 29537 := by
    unfold C
    simp [show (7077888 * k + 59074) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 29537) = 10616832 * k + 88612 := by
    unfold C
    simp [show (3538944 * k + 29537) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 88612) = 5308416 * k + 44306 := by
    unfold C
    simp [show (10616832 * k + 88612) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 44306) = 2654208 * k + 22153 := by
    unfold C
    simp [show (5308416 * k + 44306) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 22153) = 7962624 * k + 66460 := by
    unfold C
    simp [show (2654208 * k + 22153) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 66460) = 3981312 * k + 33230 := by
    unfold C
    simp [show (7962624 * k + 66460) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 33230) = 1990656 * k + 16615 := by
    unfold C
    simp [show (3981312 * k + 33230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 16615) = 5971968 * k + 49846 := by
    unfold C
    simp [show (1990656 * k + 16615) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 49846) = 2985984 * k + 24923 := by
    unfold C
    simp [show (5971968 * k + 49846) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 24923) = 8957952 * k + 74770 := by
    unfold C
    simp [show (2985984 * k + 24923) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 74770) = 4478976 * k + 37385 := by
    unfold C
    simp [show (8957952 * k + 74770) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 37385) = 13436928 * k + 112156 := by
    unfold C
    simp [show (4478976 * k + 37385) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 112156) = 6718464 * k + 56078 := by
    unfold C
    simp [show (13436928 * k + 112156) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 56078) = 3359232 * k + 28039 := by
    unfold C
    simp [show (6718464 * k + 56078) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 28039) = 10077696 * k + 84118 := by
    unfold C
    simp [show (3359232 * k + 28039) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 84118) = 5038848 * k + 42059 := by
    unfold C
    simp [show (10077696 * k + 84118) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 42059) = 15116544 * k + 126178 := by
    unfold C
    simp [show (5038848 * k + 42059) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 126178) = 7558272 * k + 63089 := by
    unfold C
    simp [show (15116544 * k + 126178) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 63089) = 22674816 * k + 189268 := by
    unfold C
    simp [show (7558272 * k + 63089) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 189268) = 11337408 * k + 94634 := by
    unfold C
    simp [show (22674816 * k + 189268) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 94634) = 5668704 * k + 47317 := by
    unfold C
    simp [show (11337408 * k + 94634) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 47317) = 17006112 * k + 141952 := by
    unfold C
    simp [show (5668704 * k + 47317) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 141952) = 8503056 * k + 70976 := by
    unfold C
    simp [show (17006112 * k + 141952) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 70976) = 4251528 * k + 35488 := by
    unfold C
    simp [show (8503056 * k + 70976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 35488) = 2125764 * k + 17744 := by
    unfold C
    simp [show (4251528 * k + 35488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 17744) = 1062882 * k + 8872 := by
    unfold C
    simp [show (2125764 * k + 17744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 8872) = 531441 * k + 4436 := by
    unfold C
    simp [show (1062882 * k + 8872) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 8751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 8751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_9023 : ∀ k : Nat,
    iterate (1048576 * k + 9023) 32 = 531441 * k + 4574 ∧
      531441 * k + 4574 < 1048576 * k + 9023 := by
  intro k
  have h1 : C (1048576 * k + 9023) = 3145728 * k + 27070 := by
    unfold C
    simp [show (1048576 * k + 9023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 27070) = 1572864 * k + 13535 := by
    unfold C
    simp [show (3145728 * k + 27070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 13535) = 4718592 * k + 40606 := by
    unfold C
    simp [show (1572864 * k + 13535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 40606) = 2359296 * k + 20303 := by
    unfold C
    simp [show (4718592 * k + 40606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 20303) = 7077888 * k + 60910 := by
    unfold C
    simp [show (2359296 * k + 20303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 60910) = 3538944 * k + 30455 := by
    unfold C
    simp [show (7077888 * k + 60910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 30455) = 10616832 * k + 91366 := by
    unfold C
    simp [show (3538944 * k + 30455) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 91366) = 5308416 * k + 45683 := by
    unfold C
    simp [show (10616832 * k + 91366) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 45683) = 15925248 * k + 137050 := by
    unfold C
    simp [show (5308416 * k + 45683) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 137050) = 7962624 * k + 68525 := by
    unfold C
    simp [show (15925248 * k + 137050) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 68525) = 23887872 * k + 205576 := by
    unfold C
    simp [show (7962624 * k + 68525) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 205576) = 11943936 * k + 102788 := by
    unfold C
    simp [show (23887872 * k + 205576) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 102788) = 5971968 * k + 51394 := by
    unfold C
    simp [show (11943936 * k + 102788) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 51394) = 2985984 * k + 25697 := by
    unfold C
    simp [show (5971968 * k + 51394) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 25697) = 8957952 * k + 77092 := by
    unfold C
    simp [show (2985984 * k + 25697) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 77092) = 4478976 * k + 38546 := by
    unfold C
    simp [show (8957952 * k + 77092) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 38546) = 2239488 * k + 19273 := by
    unfold C
    simp [show (4478976 * k + 38546) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 19273) = 6718464 * k + 57820 := by
    unfold C
    simp [show (2239488 * k + 19273) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 57820) = 3359232 * k + 28910 := by
    unfold C
    simp [show (6718464 * k + 57820) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 28910) = 1679616 * k + 14455 := by
    unfold C
    simp [show (3359232 * k + 28910) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 14455) = 5038848 * k + 43366 := by
    unfold C
    simp [show (1679616 * k + 14455) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 43366) = 2519424 * k + 21683 := by
    unfold C
    simp [show (5038848 * k + 43366) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 21683) = 7558272 * k + 65050 := by
    unfold C
    simp [show (2519424 * k + 21683) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 65050) = 3779136 * k + 32525 := by
    unfold C
    simp [show (7558272 * k + 65050) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 32525) = 11337408 * k + 97576 := by
    unfold C
    simp [show (3779136 * k + 32525) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 97576) = 5668704 * k + 48788 := by
    unfold C
    simp [show (11337408 * k + 97576) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 48788) = 2834352 * k + 24394 := by
    unfold C
    simp [show (5668704 * k + 48788) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 24394) = 1417176 * k + 12197 := by
    unfold C
    simp [show (2834352 * k + 24394) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 12197) = 4251528 * k + 36592 := by
    unfold C
    simp [show (1417176 * k + 12197) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 36592) = 2125764 * k + 18296 := by
    unfold C
    simp [show (4251528 * k + 36592) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 18296) = 1062882 * k + 9148 := by
    unfold C
    simp [show (2125764 * k + 18296) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 9148) = 531441 * k + 4574 := by
    unfold C
    simp [show (1062882 * k + 9148) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 9023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 9023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_9063 : ∀ k : Nat,
    iterate (1048576 * k + 9063) 32 = 531441 * k + 4594 ∧
      531441 * k + 4594 < 1048576 * k + 9063 := by
  intro k
  have h1 : C (1048576 * k + 9063) = 3145728 * k + 27190 := by
    unfold C
    simp [show (1048576 * k + 9063) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 27190) = 1572864 * k + 13595 := by
    unfold C
    simp [show (3145728 * k + 27190) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 13595) = 4718592 * k + 40786 := by
    unfold C
    simp [show (1572864 * k + 13595) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 40786) = 2359296 * k + 20393 := by
    unfold C
    simp [show (4718592 * k + 40786) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 20393) = 7077888 * k + 61180 := by
    unfold C
    simp [show (2359296 * k + 20393) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 61180) = 3538944 * k + 30590 := by
    unfold C
    simp [show (7077888 * k + 61180) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 30590) = 1769472 * k + 15295 := by
    unfold C
    simp [show (3538944 * k + 30590) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 15295) = 5308416 * k + 45886 := by
    unfold C
    simp [show (1769472 * k + 15295) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 45886) = 2654208 * k + 22943 := by
    unfold C
    simp [show (5308416 * k + 45886) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 22943) = 7962624 * k + 68830 := by
    unfold C
    simp [show (2654208 * k + 22943) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 68830) = 3981312 * k + 34415 := by
    unfold C
    simp [show (7962624 * k + 68830) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 34415) = 11943936 * k + 103246 := by
    unfold C
    simp [show (3981312 * k + 34415) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 103246) = 5971968 * k + 51623 := by
    unfold C
    simp [show (11943936 * k + 103246) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 51623) = 17915904 * k + 154870 := by
    unfold C
    simp [show (5971968 * k + 51623) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 154870) = 8957952 * k + 77435 := by
    unfold C
    simp [show (17915904 * k + 154870) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 77435) = 26873856 * k + 232306 := by
    unfold C
    simp [show (8957952 * k + 77435) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 232306) = 13436928 * k + 116153 := by
    unfold C
    simp [show (26873856 * k + 232306) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 116153) = 40310784 * k + 348460 := by
    unfold C
    simp [show (13436928 * k + 116153) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 348460) = 20155392 * k + 174230 := by
    unfold C
    simp [show (40310784 * k + 348460) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 174230) = 10077696 * k + 87115 := by
    unfold C
    simp [show (20155392 * k + 174230) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 87115) = 30233088 * k + 261346 := by
    unfold C
    simp [show (10077696 * k + 87115) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 261346) = 15116544 * k + 130673 := by
    unfold C
    simp [show (30233088 * k + 261346) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 130673) = 45349632 * k + 392020 := by
    unfold C
    simp [show (15116544 * k + 130673) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 392020) = 22674816 * k + 196010 := by
    unfold C
    simp [show (45349632 * k + 392020) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 196010) = 11337408 * k + 98005 := by
    unfold C
    simp [show (22674816 * k + 196010) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 98005) = 34012224 * k + 294016 := by
    unfold C
    simp [show (11337408 * k + 98005) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 294016) = 17006112 * k + 147008 := by
    unfold C
    simp [show (34012224 * k + 294016) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 147008) = 8503056 * k + 73504 := by
    unfold C
    simp [show (17006112 * k + 147008) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 73504) = 4251528 * k + 36752 := by
    unfold C
    simp [show (8503056 * k + 73504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 36752) = 2125764 * k + 18376 := by
    unfold C
    simp [show (4251528 * k + 36752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 18376) = 1062882 * k + 9188 := by
    unfold C
    simp [show (2125764 * k + 18376) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 9188) = 531441 * k + 4594 := by
    unfold C
    simp [show (1062882 * k + 9188) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 9063) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 9063)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_9343 : ∀ k : Nat,
    iterate (1048576 * k + 9343) 32 = 531441 * k + 4736 ∧
      531441 * k + 4736 < 1048576 * k + 9343 := by
  intro k
  have h1 : C (1048576 * k + 9343) = 3145728 * k + 28030 := by
    unfold C
    simp [show (1048576 * k + 9343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 28030) = 1572864 * k + 14015 := by
    unfold C
    simp [show (3145728 * k + 28030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 14015) = 4718592 * k + 42046 := by
    unfold C
    simp [show (1572864 * k + 14015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 42046) = 2359296 * k + 21023 := by
    unfold C
    simp [show (4718592 * k + 42046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 21023) = 7077888 * k + 63070 := by
    unfold C
    simp [show (2359296 * k + 21023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 63070) = 3538944 * k + 31535 := by
    unfold C
    simp [show (7077888 * k + 63070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 31535) = 10616832 * k + 94606 := by
    unfold C
    simp [show (3538944 * k + 31535) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 94606) = 5308416 * k + 47303 := by
    unfold C
    simp [show (10616832 * k + 94606) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 47303) = 15925248 * k + 141910 := by
    unfold C
    simp [show (5308416 * k + 47303) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 141910) = 7962624 * k + 70955 := by
    unfold C
    simp [show (15925248 * k + 141910) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 70955) = 23887872 * k + 212866 := by
    unfold C
    simp [show (7962624 * k + 70955) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 212866) = 11943936 * k + 106433 := by
    unfold C
    simp [show (23887872 * k + 212866) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 106433) = 35831808 * k + 319300 := by
    unfold C
    simp [show (11943936 * k + 106433) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 319300) = 17915904 * k + 159650 := by
    unfold C
    simp [show (35831808 * k + 319300) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 159650) = 8957952 * k + 79825 := by
    unfold C
    simp [show (17915904 * k + 159650) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 79825) = 26873856 * k + 239476 := by
    unfold C
    simp [show (8957952 * k + 79825) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 239476) = 13436928 * k + 119738 := by
    unfold C
    simp [show (26873856 * k + 239476) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 119738) = 6718464 * k + 59869 := by
    unfold C
    simp [show (13436928 * k + 119738) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 59869) = 20155392 * k + 179608 := by
    unfold C
    simp [show (6718464 * k + 59869) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 179608) = 10077696 * k + 89804 := by
    unfold C
    simp [show (20155392 * k + 179608) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 89804) = 5038848 * k + 44902 := by
    unfold C
    simp [show (10077696 * k + 89804) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 44902) = 2519424 * k + 22451 := by
    unfold C
    simp [show (5038848 * k + 44902) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 22451) = 7558272 * k + 67354 := by
    unfold C
    simp [show (2519424 * k + 22451) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 67354) = 3779136 * k + 33677 := by
    unfold C
    simp [show (7558272 * k + 67354) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 33677) = 11337408 * k + 101032 := by
    unfold C
    simp [show (3779136 * k + 33677) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 101032) = 5668704 * k + 50516 := by
    unfold C
    simp [show (11337408 * k + 101032) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 50516) = 2834352 * k + 25258 := by
    unfold C
    simp [show (5668704 * k + 50516) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 25258) = 1417176 * k + 12629 := by
    unfold C
    simp [show (2834352 * k + 25258) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 12629) = 4251528 * k + 37888 := by
    unfold C
    simp [show (1417176 * k + 12629) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 37888) = 2125764 * k + 18944 := by
    unfold C
    simp [show (4251528 * k + 37888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 18944) = 1062882 * k + 9472 := by
    unfold C
    simp [show (2125764 * k + 18944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 9472) = 531441 * k + 4736 := by
    unfold C
    simp [show (1062882 * k + 9472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 9343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 9343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_9447 : ∀ k : Nat,
    iterate (1048576 * k + 9447) 32 = 531441 * k + 4789 ∧
      531441 * k + 4789 < 1048576 * k + 9447 := by
  intro k
  have h1 : C (1048576 * k + 9447) = 3145728 * k + 28342 := by
    unfold C
    simp [show (1048576 * k + 9447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 28342) = 1572864 * k + 14171 := by
    unfold C
    simp [show (3145728 * k + 28342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 14171) = 4718592 * k + 42514 := by
    unfold C
    simp [show (1572864 * k + 14171) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 42514) = 2359296 * k + 21257 := by
    unfold C
    simp [show (4718592 * k + 42514) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 21257) = 7077888 * k + 63772 := by
    unfold C
    simp [show (2359296 * k + 21257) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 63772) = 3538944 * k + 31886 := by
    unfold C
    simp [show (7077888 * k + 63772) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 31886) = 1769472 * k + 15943 := by
    unfold C
    simp [show (3538944 * k + 31886) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 15943) = 5308416 * k + 47830 := by
    unfold C
    simp [show (1769472 * k + 15943) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 47830) = 2654208 * k + 23915 := by
    unfold C
    simp [show (5308416 * k + 47830) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 23915) = 7962624 * k + 71746 := by
    unfold C
    simp [show (2654208 * k + 23915) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 71746) = 3981312 * k + 35873 := by
    unfold C
    simp [show (7962624 * k + 71746) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 35873) = 11943936 * k + 107620 := by
    unfold C
    simp [show (3981312 * k + 35873) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 107620) = 5971968 * k + 53810 := by
    unfold C
    simp [show (11943936 * k + 107620) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 53810) = 2985984 * k + 26905 := by
    unfold C
    simp [show (5971968 * k + 53810) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 26905) = 8957952 * k + 80716 := by
    unfold C
    simp [show (2985984 * k + 26905) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 80716) = 4478976 * k + 40358 := by
    unfold C
    simp [show (8957952 * k + 80716) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 40358) = 2239488 * k + 20179 := by
    unfold C
    simp [show (4478976 * k + 40358) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 20179) = 6718464 * k + 60538 := by
    unfold C
    simp [show (2239488 * k + 20179) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 60538) = 3359232 * k + 30269 := by
    unfold C
    simp [show (6718464 * k + 60538) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 30269) = 10077696 * k + 90808 := by
    unfold C
    simp [show (3359232 * k + 30269) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 90808) = 5038848 * k + 45404 := by
    unfold C
    simp [show (10077696 * k + 90808) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 45404) = 2519424 * k + 22702 := by
    unfold C
    simp [show (5038848 * k + 45404) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 22702) = 1259712 * k + 11351 := by
    unfold C
    simp [show (2519424 * k + 22702) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 11351) = 3779136 * k + 34054 := by
    unfold C
    simp [show (1259712 * k + 11351) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 34054) = 1889568 * k + 17027 := by
    unfold C
    simp [show (3779136 * k + 34054) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 17027) = 5668704 * k + 51082 := by
    unfold C
    simp [show (1889568 * k + 17027) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 51082) = 2834352 * k + 25541 := by
    unfold C
    simp [show (5668704 * k + 51082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 25541) = 8503056 * k + 76624 := by
    unfold C
    simp [show (2834352 * k + 25541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 76624) = 4251528 * k + 38312 := by
    unfold C
    simp [show (8503056 * k + 76624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 38312) = 2125764 * k + 19156 := by
    unfold C
    simp [show (4251528 * k + 38312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 19156) = 1062882 * k + 9578 := by
    unfold C
    simp [show (2125764 * k + 19156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 9578) = 531441 * k + 4789 := by
    unfold C
    simp [show (1062882 * k + 9578) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 9447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 9447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_9703 : ∀ k : Nat,
    iterate (1048576 * k + 9703) 32 = 531441 * k + 4919 ∧
      531441 * k + 4919 < 1048576 * k + 9703 := by
  intro k
  have h1 : C (1048576 * k + 9703) = 3145728 * k + 29110 := by
    unfold C
    simp [show (1048576 * k + 9703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 29110) = 1572864 * k + 14555 := by
    unfold C
    simp [show (3145728 * k + 29110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 14555) = 4718592 * k + 43666 := by
    unfold C
    simp [show (1572864 * k + 14555) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 43666) = 2359296 * k + 21833 := by
    unfold C
    simp [show (4718592 * k + 43666) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 21833) = 7077888 * k + 65500 := by
    unfold C
    simp [show (2359296 * k + 21833) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 65500) = 3538944 * k + 32750 := by
    unfold C
    simp [show (7077888 * k + 65500) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 32750) = 1769472 * k + 16375 := by
    unfold C
    simp [show (3538944 * k + 32750) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 16375) = 5308416 * k + 49126 := by
    unfold C
    simp [show (1769472 * k + 16375) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 49126) = 2654208 * k + 24563 := by
    unfold C
    simp [show (5308416 * k + 49126) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 24563) = 7962624 * k + 73690 := by
    unfold C
    simp [show (2654208 * k + 24563) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 73690) = 3981312 * k + 36845 := by
    unfold C
    simp [show (7962624 * k + 73690) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 36845) = 11943936 * k + 110536 := by
    unfold C
    simp [show (3981312 * k + 36845) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 110536) = 5971968 * k + 55268 := by
    unfold C
    simp [show (11943936 * k + 110536) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 55268) = 2985984 * k + 27634 := by
    unfold C
    simp [show (5971968 * k + 55268) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 27634) = 1492992 * k + 13817 := by
    unfold C
    simp [show (2985984 * k + 27634) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 13817) = 4478976 * k + 41452 := by
    unfold C
    simp [show (1492992 * k + 13817) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 41452) = 2239488 * k + 20726 := by
    unfold C
    simp [show (4478976 * k + 41452) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 20726) = 1119744 * k + 10363 := by
    unfold C
    simp [show (2239488 * k + 20726) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 10363) = 3359232 * k + 31090 := by
    unfold C
    simp [show (1119744 * k + 10363) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 31090) = 1679616 * k + 15545 := by
    unfold C
    simp [show (3359232 * k + 31090) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 15545) = 5038848 * k + 46636 := by
    unfold C
    simp [show (1679616 * k + 15545) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 46636) = 2519424 * k + 23318 := by
    unfold C
    simp [show (5038848 * k + 46636) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 23318) = 1259712 * k + 11659 := by
    unfold C
    simp [show (2519424 * k + 23318) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 11659) = 3779136 * k + 34978 := by
    unfold C
    simp [show (1259712 * k + 11659) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 34978) = 1889568 * k + 17489 := by
    unfold C
    simp [show (3779136 * k + 34978) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 17489) = 5668704 * k + 52468 := by
    unfold C
    simp [show (1889568 * k + 17489) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 52468) = 2834352 * k + 26234 := by
    unfold C
    simp [show (5668704 * k + 52468) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 26234) = 1417176 * k + 13117 := by
    unfold C
    simp [show (2834352 * k + 26234) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 13117) = 4251528 * k + 39352 := by
    unfold C
    simp [show (1417176 * k + 13117) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 39352) = 2125764 * k + 19676 := by
    unfold C
    simp [show (4251528 * k + 39352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 19676) = 1062882 * k + 9838 := by
    unfold C
    simp [show (2125764 * k + 19676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 9838) = 531441 * k + 4919 := by
    unfold C
    simp [show (1062882 * k + 9838) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 9703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 9703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_10311 : ∀ k : Nat,
    iterate (1048576 * k + 10311) 32 = 531441 * k + 5227 ∧
      531441 * k + 5227 < 1048576 * k + 10311 := by
  intro k
  have h1 : C (1048576 * k + 10311) = 3145728 * k + 30934 := by
    unfold C
    simp [show (1048576 * k + 10311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 30934) = 1572864 * k + 15467 := by
    unfold C
    simp [show (3145728 * k + 30934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 15467) = 4718592 * k + 46402 := by
    unfold C
    simp [show (1572864 * k + 15467) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 46402) = 2359296 * k + 23201 := by
    unfold C
    simp [show (4718592 * k + 46402) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 23201) = 7077888 * k + 69604 := by
    unfold C
    simp [show (2359296 * k + 23201) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 69604) = 3538944 * k + 34802 := by
    unfold C
    simp [show (7077888 * k + 69604) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 34802) = 1769472 * k + 17401 := by
    unfold C
    simp [show (3538944 * k + 34802) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 17401) = 5308416 * k + 52204 := by
    unfold C
    simp [show (1769472 * k + 17401) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 52204) = 2654208 * k + 26102 := by
    unfold C
    simp [show (5308416 * k + 52204) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 26102) = 1327104 * k + 13051 := by
    unfold C
    simp [show (2654208 * k + 26102) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 13051) = 3981312 * k + 39154 := by
    unfold C
    simp [show (1327104 * k + 13051) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 39154) = 1990656 * k + 19577 := by
    unfold C
    simp [show (3981312 * k + 39154) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 19577) = 5971968 * k + 58732 := by
    unfold C
    simp [show (1990656 * k + 19577) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 58732) = 2985984 * k + 29366 := by
    unfold C
    simp [show (5971968 * k + 58732) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 29366) = 1492992 * k + 14683 := by
    unfold C
    simp [show (2985984 * k + 29366) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 14683) = 4478976 * k + 44050 := by
    unfold C
    simp [show (1492992 * k + 14683) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 44050) = 2239488 * k + 22025 := by
    unfold C
    simp [show (4478976 * k + 44050) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 22025) = 6718464 * k + 66076 := by
    unfold C
    simp [show (2239488 * k + 22025) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 66076) = 3359232 * k + 33038 := by
    unfold C
    simp [show (6718464 * k + 66076) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 33038) = 1679616 * k + 16519 := by
    unfold C
    simp [show (3359232 * k + 33038) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 16519) = 5038848 * k + 49558 := by
    unfold C
    simp [show (1679616 * k + 16519) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 49558) = 2519424 * k + 24779 := by
    unfold C
    simp [show (5038848 * k + 49558) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 24779) = 7558272 * k + 74338 := by
    unfold C
    simp [show (2519424 * k + 24779) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 74338) = 3779136 * k + 37169 := by
    unfold C
    simp [show (7558272 * k + 74338) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 37169) = 11337408 * k + 111508 := by
    unfold C
    simp [show (3779136 * k + 37169) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 111508) = 5668704 * k + 55754 := by
    unfold C
    simp [show (11337408 * k + 111508) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 55754) = 2834352 * k + 27877 := by
    unfold C
    simp [show (5668704 * k + 55754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 27877) = 8503056 * k + 83632 := by
    unfold C
    simp [show (2834352 * k + 27877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 83632) = 4251528 * k + 41816 := by
    unfold C
    simp [show (8503056 * k + 83632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 41816) = 2125764 * k + 20908 := by
    unfold C
    simp [show (4251528 * k + 41816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 20908) = 1062882 * k + 10454 := by
    unfold C
    simp [show (2125764 * k + 20908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 10454) = 531441 * k + 5227 := by
    unfold C
    simp [show (1062882 * k + 10454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 10311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 10311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_10343 : ∀ k : Nat,
    iterate (1048576 * k + 10343) 32 = 531441 * k + 5243 ∧
      531441 * k + 5243 < 1048576 * k + 10343 := by
  intro k
  have h1 : C (1048576 * k + 10343) = 3145728 * k + 31030 := by
    unfold C
    simp [show (1048576 * k + 10343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 31030) = 1572864 * k + 15515 := by
    unfold C
    simp [show (3145728 * k + 31030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 15515) = 4718592 * k + 46546 := by
    unfold C
    simp [show (1572864 * k + 15515) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 46546) = 2359296 * k + 23273 := by
    unfold C
    simp [show (4718592 * k + 46546) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 23273) = 7077888 * k + 69820 := by
    unfold C
    simp [show (2359296 * k + 23273) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 69820) = 3538944 * k + 34910 := by
    unfold C
    simp [show (7077888 * k + 69820) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 34910) = 1769472 * k + 17455 := by
    unfold C
    simp [show (3538944 * k + 34910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 17455) = 5308416 * k + 52366 := by
    unfold C
    simp [show (1769472 * k + 17455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 52366) = 2654208 * k + 26183 := by
    unfold C
    simp [show (5308416 * k + 52366) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 26183) = 7962624 * k + 78550 := by
    unfold C
    simp [show (2654208 * k + 26183) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 78550) = 3981312 * k + 39275 := by
    unfold C
    simp [show (7962624 * k + 78550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 39275) = 11943936 * k + 117826 := by
    unfold C
    simp [show (3981312 * k + 39275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 117826) = 5971968 * k + 58913 := by
    unfold C
    simp [show (11943936 * k + 117826) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 58913) = 17915904 * k + 176740 := by
    unfold C
    simp [show (5971968 * k + 58913) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 176740) = 8957952 * k + 88370 := by
    unfold C
    simp [show (17915904 * k + 176740) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 88370) = 4478976 * k + 44185 := by
    unfold C
    simp [show (8957952 * k + 88370) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 44185) = 13436928 * k + 132556 := by
    unfold C
    simp [show (4478976 * k + 44185) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 132556) = 6718464 * k + 66278 := by
    unfold C
    simp [show (13436928 * k + 132556) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 66278) = 3359232 * k + 33139 := by
    unfold C
    simp [show (6718464 * k + 66278) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 33139) = 10077696 * k + 99418 := by
    unfold C
    simp [show (3359232 * k + 33139) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 99418) = 5038848 * k + 49709 := by
    unfold C
    simp [show (10077696 * k + 99418) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 49709) = 15116544 * k + 149128 := by
    unfold C
    simp [show (5038848 * k + 49709) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 149128) = 7558272 * k + 74564 := by
    unfold C
    simp [show (15116544 * k + 149128) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 74564) = 3779136 * k + 37282 := by
    unfold C
    simp [show (7558272 * k + 74564) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 37282) = 1889568 * k + 18641 := by
    unfold C
    simp [show (3779136 * k + 37282) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 18641) = 5668704 * k + 55924 := by
    unfold C
    simp [show (1889568 * k + 18641) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 55924) = 2834352 * k + 27962 := by
    unfold C
    simp [show (5668704 * k + 55924) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 27962) = 1417176 * k + 13981 := by
    unfold C
    simp [show (2834352 * k + 27962) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 13981) = 4251528 * k + 41944 := by
    unfold C
    simp [show (1417176 * k + 13981) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 41944) = 2125764 * k + 20972 := by
    unfold C
    simp [show (4251528 * k + 41944) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 20972) = 1062882 * k + 10486 := by
    unfold C
    simp [show (2125764 * k + 20972) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 10486) = 531441 * k + 5243 := by
    unfold C
    simp [show (1062882 * k + 10486) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 10343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 10343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard002
