import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard102

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_794943 : ∀ k : Nat,
    iterate (1048576 * k + 794943) 32 = 531441 * k + 402895 ∧
      531441 * k + 402895 < 1048576 * k + 794943 := by
  intro k
  have h1 : C (1048576 * k + 794943) = 3145728 * k + 2384830 := by
    unfold C
    simp [show (1048576 * k + 794943) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2384830) = 1572864 * k + 1192415 := by
    unfold C
    simp [show (3145728 * k + 2384830) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1192415) = 4718592 * k + 3577246 := by
    unfold C
    simp [show (1572864 * k + 1192415) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3577246) = 2359296 * k + 1788623 := by
    unfold C
    simp [show (4718592 * k + 3577246) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1788623) = 7077888 * k + 5365870 := by
    unfold C
    simp [show (2359296 * k + 1788623) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5365870) = 3538944 * k + 2682935 := by
    unfold C
    simp [show (7077888 * k + 5365870) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2682935) = 10616832 * k + 8048806 := by
    unfold C
    simp [show (3538944 * k + 2682935) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8048806) = 5308416 * k + 4024403 := by
    unfold C
    simp [show (10616832 * k + 8048806) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4024403) = 15925248 * k + 12073210 := by
    unfold C
    simp [show (5308416 * k + 4024403) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12073210) = 7962624 * k + 6036605 := by
    unfold C
    simp [show (15925248 * k + 12073210) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6036605) = 23887872 * k + 18109816 := by
    unfold C
    simp [show (7962624 * k + 6036605) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18109816) = 11943936 * k + 9054908 := by
    unfold C
    simp [show (23887872 * k + 18109816) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9054908) = 5971968 * k + 4527454 := by
    unfold C
    simp [show (11943936 * k + 9054908) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4527454) = 2985984 * k + 2263727 := by
    unfold C
    simp [show (5971968 * k + 4527454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2263727) = 8957952 * k + 6791182 := by
    unfold C
    simp [show (2985984 * k + 2263727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6791182) = 4478976 * k + 3395591 := by
    unfold C
    simp [show (8957952 * k + 6791182) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3395591) = 13436928 * k + 10186774 := by
    unfold C
    simp [show (4478976 * k + 3395591) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10186774) = 6718464 * k + 5093387 := by
    unfold C
    simp [show (13436928 * k + 10186774) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5093387) = 20155392 * k + 15280162 := by
    unfold C
    simp [show (6718464 * k + 5093387) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15280162) = 10077696 * k + 7640081 := by
    unfold C
    simp [show (20155392 * k + 15280162) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7640081) = 30233088 * k + 22920244 := by
    unfold C
    simp [show (10077696 * k + 7640081) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22920244) = 15116544 * k + 11460122 := by
    unfold C
    simp [show (30233088 * k + 22920244) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11460122) = 7558272 * k + 5730061 := by
    unfold C
    simp [show (15116544 * k + 11460122) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5730061) = 22674816 * k + 17190184 := by
    unfold C
    simp [show (7558272 * k + 5730061) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17190184) = 11337408 * k + 8595092 := by
    unfold C
    simp [show (22674816 * k + 17190184) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8595092) = 5668704 * k + 4297546 := by
    unfold C
    simp [show (11337408 * k + 8595092) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4297546) = 2834352 * k + 2148773 := by
    unfold C
    simp [show (5668704 * k + 4297546) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2148773) = 8503056 * k + 6446320 := by
    unfold C
    simp [show (2834352 * k + 2148773) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6446320) = 4251528 * k + 3223160 := by
    unfold C
    simp [show (8503056 * k + 6446320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3223160) = 2125764 * k + 1611580 := by
    unfold C
    simp [show (4251528 * k + 3223160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1611580) = 1062882 * k + 805790 := by
    unfold C
    simp [show (2125764 * k + 1611580) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 805790) = 531441 * k + 402895 := by
    unfold C
    simp [show (1062882 * k + 805790) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 794943) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 794943)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_795679 : ∀ k : Nat,
    iterate (1048576 * k + 795679) 32 = 531441 * k + 403268 ∧
      531441 * k + 403268 < 1048576 * k + 795679 := by
  intro k
  have h1 : C (1048576 * k + 795679) = 3145728 * k + 2387038 := by
    unfold C
    simp [show (1048576 * k + 795679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2387038) = 1572864 * k + 1193519 := by
    unfold C
    simp [show (3145728 * k + 2387038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1193519) = 4718592 * k + 3580558 := by
    unfold C
    simp [show (1572864 * k + 1193519) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3580558) = 2359296 * k + 1790279 := by
    unfold C
    simp [show (4718592 * k + 3580558) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1790279) = 7077888 * k + 5370838 := by
    unfold C
    simp [show (2359296 * k + 1790279) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5370838) = 3538944 * k + 2685419 := by
    unfold C
    simp [show (7077888 * k + 5370838) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2685419) = 10616832 * k + 8056258 := by
    unfold C
    simp [show (3538944 * k + 2685419) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8056258) = 5308416 * k + 4028129 := by
    unfold C
    simp [show (10616832 * k + 8056258) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4028129) = 15925248 * k + 12084388 := by
    unfold C
    simp [show (5308416 * k + 4028129) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12084388) = 7962624 * k + 6042194 := by
    unfold C
    simp [show (15925248 * k + 12084388) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6042194) = 3981312 * k + 3021097 := by
    unfold C
    simp [show (7962624 * k + 6042194) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3021097) = 11943936 * k + 9063292 := by
    unfold C
    simp [show (3981312 * k + 3021097) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9063292) = 5971968 * k + 4531646 := by
    unfold C
    simp [show (11943936 * k + 9063292) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4531646) = 2985984 * k + 2265823 := by
    unfold C
    simp [show (5971968 * k + 4531646) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2265823) = 8957952 * k + 6797470 := by
    unfold C
    simp [show (2985984 * k + 2265823) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6797470) = 4478976 * k + 3398735 := by
    unfold C
    simp [show (8957952 * k + 6797470) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3398735) = 13436928 * k + 10196206 := by
    unfold C
    simp [show (4478976 * k + 3398735) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10196206) = 6718464 * k + 5098103 := by
    unfold C
    simp [show (13436928 * k + 10196206) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5098103) = 20155392 * k + 15294310 := by
    unfold C
    simp [show (6718464 * k + 5098103) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15294310) = 10077696 * k + 7647155 := by
    unfold C
    simp [show (20155392 * k + 15294310) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7647155) = 30233088 * k + 22941466 := by
    unfold C
    simp [show (10077696 * k + 7647155) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 22941466) = 15116544 * k + 11470733 := by
    unfold C
    simp [show (30233088 * k + 22941466) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11470733) = 45349632 * k + 34412200 := by
    unfold C
    simp [show (15116544 * k + 11470733) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 34412200) = 22674816 * k + 17206100 := by
    unfold C
    simp [show (45349632 * k + 34412200) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17206100) = 11337408 * k + 8603050 := by
    unfold C
    simp [show (22674816 * k + 17206100) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8603050) = 5668704 * k + 4301525 := by
    unfold C
    simp [show (11337408 * k + 8603050) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4301525) = 17006112 * k + 12904576 := by
    unfold C
    simp [show (5668704 * k + 4301525) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12904576) = 8503056 * k + 6452288 := by
    unfold C
    simp [show (17006112 * k + 12904576) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6452288) = 4251528 * k + 3226144 := by
    unfold C
    simp [show (8503056 * k + 6452288) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3226144) = 2125764 * k + 1613072 := by
    unfold C
    simp [show (4251528 * k + 3226144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1613072) = 1062882 * k + 806536 := by
    unfold C
    simp [show (2125764 * k + 1613072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 806536) = 531441 * k + 403268 := by
    unfold C
    simp [show (1062882 * k + 806536) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 795679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 795679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_796543 : ∀ k : Nat,
    iterate (1048576 * k + 796543) 32 = 531441 * k + 403706 ∧
      531441 * k + 403706 < 1048576 * k + 796543 := by
  intro k
  have h1 : C (1048576 * k + 796543) = 3145728 * k + 2389630 := by
    unfold C
    simp [show (1048576 * k + 796543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2389630) = 1572864 * k + 1194815 := by
    unfold C
    simp [show (3145728 * k + 2389630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1194815) = 4718592 * k + 3584446 := by
    unfold C
    simp [show (1572864 * k + 1194815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3584446) = 2359296 * k + 1792223 := by
    unfold C
    simp [show (4718592 * k + 3584446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1792223) = 7077888 * k + 5376670 := by
    unfold C
    simp [show (2359296 * k + 1792223) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5376670) = 3538944 * k + 2688335 := by
    unfold C
    simp [show (7077888 * k + 5376670) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2688335) = 10616832 * k + 8065006 := by
    unfold C
    simp [show (3538944 * k + 2688335) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8065006) = 5308416 * k + 4032503 := by
    unfold C
    simp [show (10616832 * k + 8065006) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4032503) = 15925248 * k + 12097510 := by
    unfold C
    simp [show (5308416 * k + 4032503) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12097510) = 7962624 * k + 6048755 := by
    unfold C
    simp [show (15925248 * k + 12097510) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6048755) = 23887872 * k + 18146266 := by
    unfold C
    simp [show (7962624 * k + 6048755) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18146266) = 11943936 * k + 9073133 := by
    unfold C
    simp [show (23887872 * k + 18146266) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9073133) = 35831808 * k + 27219400 := by
    unfold C
    simp [show (11943936 * k + 9073133) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27219400) = 17915904 * k + 13609700 := by
    unfold C
    simp [show (35831808 * k + 27219400) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13609700) = 8957952 * k + 6804850 := by
    unfold C
    simp [show (17915904 * k + 13609700) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6804850) = 4478976 * k + 3402425 := by
    unfold C
    simp [show (8957952 * k + 6804850) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3402425) = 13436928 * k + 10207276 := by
    unfold C
    simp [show (4478976 * k + 3402425) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10207276) = 6718464 * k + 5103638 := by
    unfold C
    simp [show (13436928 * k + 10207276) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5103638) = 3359232 * k + 2551819 := by
    unfold C
    simp [show (6718464 * k + 5103638) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2551819) = 10077696 * k + 7655458 := by
    unfold C
    simp [show (3359232 * k + 2551819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7655458) = 5038848 * k + 3827729 := by
    unfold C
    simp [show (10077696 * k + 7655458) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3827729) = 15116544 * k + 11483188 := by
    unfold C
    simp [show (5038848 * k + 3827729) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11483188) = 7558272 * k + 5741594 := by
    unfold C
    simp [show (15116544 * k + 11483188) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5741594) = 3779136 * k + 2870797 := by
    unfold C
    simp [show (7558272 * k + 5741594) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2870797) = 11337408 * k + 8612392 := by
    unfold C
    simp [show (3779136 * k + 2870797) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8612392) = 5668704 * k + 4306196 := by
    unfold C
    simp [show (11337408 * k + 8612392) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4306196) = 2834352 * k + 2153098 := by
    unfold C
    simp [show (5668704 * k + 4306196) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2153098) = 1417176 * k + 1076549 := by
    unfold C
    simp [show (2834352 * k + 2153098) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1076549) = 4251528 * k + 3229648 := by
    unfold C
    simp [show (1417176 * k + 1076549) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3229648) = 2125764 * k + 1614824 := by
    unfold C
    simp [show (4251528 * k + 3229648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1614824) = 1062882 * k + 807412 := by
    unfold C
    simp [show (2125764 * k + 1614824) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 807412) = 531441 * k + 403706 := by
    unfold C
    simp [show (1062882 * k + 807412) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 796543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 796543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_797423 : ∀ k : Nat,
    iterate (1048576 * k + 797423) 32 = 531441 * k + 404152 ∧
      531441 * k + 404152 < 1048576 * k + 797423 := by
  intro k
  have h1 : C (1048576 * k + 797423) = 3145728 * k + 2392270 := by
    unfold C
    simp [show (1048576 * k + 797423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2392270) = 1572864 * k + 1196135 := by
    unfold C
    simp [show (3145728 * k + 2392270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1196135) = 4718592 * k + 3588406 := by
    unfold C
    simp [show (1572864 * k + 1196135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3588406) = 2359296 * k + 1794203 := by
    unfold C
    simp [show (4718592 * k + 3588406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1794203) = 7077888 * k + 5382610 := by
    unfold C
    simp [show (2359296 * k + 1794203) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5382610) = 3538944 * k + 2691305 := by
    unfold C
    simp [show (7077888 * k + 5382610) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2691305) = 10616832 * k + 8073916 := by
    unfold C
    simp [show (3538944 * k + 2691305) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8073916) = 5308416 * k + 4036958 := by
    unfold C
    simp [show (10616832 * k + 8073916) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4036958) = 2654208 * k + 2018479 := by
    unfold C
    simp [show (5308416 * k + 4036958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2018479) = 7962624 * k + 6055438 := by
    unfold C
    simp [show (2654208 * k + 2018479) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6055438) = 3981312 * k + 3027719 := by
    unfold C
    simp [show (7962624 * k + 6055438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3027719) = 11943936 * k + 9083158 := by
    unfold C
    simp [show (3981312 * k + 3027719) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9083158) = 5971968 * k + 4541579 := by
    unfold C
    simp [show (11943936 * k + 9083158) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4541579) = 17915904 * k + 13624738 := by
    unfold C
    simp [show (5971968 * k + 4541579) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13624738) = 8957952 * k + 6812369 := by
    unfold C
    simp [show (17915904 * k + 13624738) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6812369) = 26873856 * k + 20437108 := by
    unfold C
    simp [show (8957952 * k + 6812369) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20437108) = 13436928 * k + 10218554 := by
    unfold C
    simp [show (26873856 * k + 20437108) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10218554) = 6718464 * k + 5109277 := by
    unfold C
    simp [show (13436928 * k + 10218554) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5109277) = 20155392 * k + 15327832 := by
    unfold C
    simp [show (6718464 * k + 5109277) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15327832) = 10077696 * k + 7663916 := by
    unfold C
    simp [show (20155392 * k + 15327832) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7663916) = 5038848 * k + 3831958 := by
    unfold C
    simp [show (10077696 * k + 7663916) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3831958) = 2519424 * k + 1915979 := by
    unfold C
    simp [show (5038848 * k + 3831958) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1915979) = 7558272 * k + 5747938 := by
    unfold C
    simp [show (2519424 * k + 1915979) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5747938) = 3779136 * k + 2873969 := by
    unfold C
    simp [show (7558272 * k + 5747938) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2873969) = 11337408 * k + 8621908 := by
    unfold C
    simp [show (3779136 * k + 2873969) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8621908) = 5668704 * k + 4310954 := by
    unfold C
    simp [show (11337408 * k + 8621908) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4310954) = 2834352 * k + 2155477 := by
    unfold C
    simp [show (5668704 * k + 4310954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2155477) = 8503056 * k + 6466432 := by
    unfold C
    simp [show (2834352 * k + 2155477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6466432) = 4251528 * k + 3233216 := by
    unfold C
    simp [show (8503056 * k + 6466432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3233216) = 2125764 * k + 1616608 := by
    unfold C
    simp [show (4251528 * k + 3233216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1616608) = 1062882 * k + 808304 := by
    unfold C
    simp [show (2125764 * k + 1616608) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 808304) = 531441 * k + 404152 := by
    unfold C
    simp [show (1062882 * k + 808304) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 797423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 797423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_797727 : ∀ k : Nat,
    iterate (1048576 * k + 797727) 32 = 531441 * k + 404306 ∧
      531441 * k + 404306 < 1048576 * k + 797727 := by
  intro k
  have h1 : C (1048576 * k + 797727) = 3145728 * k + 2393182 := by
    unfold C
    simp [show (1048576 * k + 797727) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2393182) = 1572864 * k + 1196591 := by
    unfold C
    simp [show (3145728 * k + 2393182) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1196591) = 4718592 * k + 3589774 := by
    unfold C
    simp [show (1572864 * k + 1196591) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3589774) = 2359296 * k + 1794887 := by
    unfold C
    simp [show (4718592 * k + 3589774) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1794887) = 7077888 * k + 5384662 := by
    unfold C
    simp [show (2359296 * k + 1794887) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5384662) = 3538944 * k + 2692331 := by
    unfold C
    simp [show (7077888 * k + 5384662) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2692331) = 10616832 * k + 8076994 := by
    unfold C
    simp [show (3538944 * k + 2692331) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8076994) = 5308416 * k + 4038497 := by
    unfold C
    simp [show (10616832 * k + 8076994) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4038497) = 15925248 * k + 12115492 := by
    unfold C
    simp [show (5308416 * k + 4038497) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12115492) = 7962624 * k + 6057746 := by
    unfold C
    simp [show (15925248 * k + 12115492) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6057746) = 3981312 * k + 3028873 := by
    unfold C
    simp [show (7962624 * k + 6057746) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3028873) = 11943936 * k + 9086620 := by
    unfold C
    simp [show (3981312 * k + 3028873) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9086620) = 5971968 * k + 4543310 := by
    unfold C
    simp [show (11943936 * k + 9086620) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4543310) = 2985984 * k + 2271655 := by
    unfold C
    simp [show (5971968 * k + 4543310) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2271655) = 8957952 * k + 6814966 := by
    unfold C
    simp [show (2985984 * k + 2271655) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6814966) = 4478976 * k + 3407483 := by
    unfold C
    simp [show (8957952 * k + 6814966) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3407483) = 13436928 * k + 10222450 := by
    unfold C
    simp [show (4478976 * k + 3407483) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10222450) = 6718464 * k + 5111225 := by
    unfold C
    simp [show (13436928 * k + 10222450) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5111225) = 20155392 * k + 15333676 := by
    unfold C
    simp [show (6718464 * k + 5111225) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15333676) = 10077696 * k + 7666838 := by
    unfold C
    simp [show (20155392 * k + 15333676) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7666838) = 5038848 * k + 3833419 := by
    unfold C
    simp [show (10077696 * k + 7666838) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3833419) = 15116544 * k + 11500258 := by
    unfold C
    simp [show (5038848 * k + 3833419) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11500258) = 7558272 * k + 5750129 := by
    unfold C
    simp [show (15116544 * k + 11500258) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5750129) = 22674816 * k + 17250388 := by
    unfold C
    simp [show (7558272 * k + 5750129) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17250388) = 11337408 * k + 8625194 := by
    unfold C
    simp [show (22674816 * k + 17250388) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8625194) = 5668704 * k + 4312597 := by
    unfold C
    simp [show (11337408 * k + 8625194) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4312597) = 17006112 * k + 12937792 := by
    unfold C
    simp [show (5668704 * k + 4312597) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12937792) = 8503056 * k + 6468896 := by
    unfold C
    simp [show (17006112 * k + 12937792) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6468896) = 4251528 * k + 3234448 := by
    unfold C
    simp [show (8503056 * k + 6468896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3234448) = 2125764 * k + 1617224 := by
    unfold C
    simp [show (4251528 * k + 3234448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1617224) = 1062882 * k + 808612 := by
    unfold C
    simp [show (2125764 * k + 1617224) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 808612) = 531441 * k + 404306 := by
    unfold C
    simp [show (1062882 * k + 808612) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 797727) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 797727)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_798015 : ∀ k : Nat,
    iterate (1048576 * k + 798015) 32 = 531441 * k + 404452 ∧
      531441 * k + 404452 < 1048576 * k + 798015 := by
  intro k
  have h1 : C (1048576 * k + 798015) = 3145728 * k + 2394046 := by
    unfold C
    simp [show (1048576 * k + 798015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2394046) = 1572864 * k + 1197023 := by
    unfold C
    simp [show (3145728 * k + 2394046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1197023) = 4718592 * k + 3591070 := by
    unfold C
    simp [show (1572864 * k + 1197023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3591070) = 2359296 * k + 1795535 := by
    unfold C
    simp [show (4718592 * k + 3591070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1795535) = 7077888 * k + 5386606 := by
    unfold C
    simp [show (2359296 * k + 1795535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5386606) = 3538944 * k + 2693303 := by
    unfold C
    simp [show (7077888 * k + 5386606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2693303) = 10616832 * k + 8079910 := by
    unfold C
    simp [show (3538944 * k + 2693303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8079910) = 5308416 * k + 4039955 := by
    unfold C
    simp [show (10616832 * k + 8079910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4039955) = 15925248 * k + 12119866 := by
    unfold C
    simp [show (5308416 * k + 4039955) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12119866) = 7962624 * k + 6059933 := by
    unfold C
    simp [show (15925248 * k + 12119866) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6059933) = 23887872 * k + 18179800 := by
    unfold C
    simp [show (7962624 * k + 6059933) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18179800) = 11943936 * k + 9089900 := by
    unfold C
    simp [show (23887872 * k + 18179800) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9089900) = 5971968 * k + 4544950 := by
    unfold C
    simp [show (11943936 * k + 9089900) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4544950) = 2985984 * k + 2272475 := by
    unfold C
    simp [show (5971968 * k + 4544950) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2272475) = 8957952 * k + 6817426 := by
    unfold C
    simp [show (2985984 * k + 2272475) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6817426) = 4478976 * k + 3408713 := by
    unfold C
    simp [show (8957952 * k + 6817426) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3408713) = 13436928 * k + 10226140 := by
    unfold C
    simp [show (4478976 * k + 3408713) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10226140) = 6718464 * k + 5113070 := by
    unfold C
    simp [show (13436928 * k + 10226140) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5113070) = 3359232 * k + 2556535 := by
    unfold C
    simp [show (6718464 * k + 5113070) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2556535) = 10077696 * k + 7669606 := by
    unfold C
    simp [show (3359232 * k + 2556535) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7669606) = 5038848 * k + 3834803 := by
    unfold C
    simp [show (10077696 * k + 7669606) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3834803) = 15116544 * k + 11504410 := by
    unfold C
    simp [show (5038848 * k + 3834803) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11504410) = 7558272 * k + 5752205 := by
    unfold C
    simp [show (15116544 * k + 11504410) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5752205) = 22674816 * k + 17256616 := by
    unfold C
    simp [show (7558272 * k + 5752205) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17256616) = 11337408 * k + 8628308 := by
    unfold C
    simp [show (22674816 * k + 17256616) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8628308) = 5668704 * k + 4314154 := by
    unfold C
    simp [show (11337408 * k + 8628308) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4314154) = 2834352 * k + 2157077 := by
    unfold C
    simp [show (5668704 * k + 4314154) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2157077) = 8503056 * k + 6471232 := by
    unfold C
    simp [show (2834352 * k + 2157077) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6471232) = 4251528 * k + 3235616 := by
    unfold C
    simp [show (8503056 * k + 6471232) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3235616) = 2125764 * k + 1617808 := by
    unfold C
    simp [show (4251528 * k + 3235616) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1617808) = 1062882 * k + 808904 := by
    unfold C
    simp [show (2125764 * k + 1617808) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 808904) = 531441 * k + 404452 := by
    unfold C
    simp [show (1062882 * k + 808904) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 798015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 798015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_798555 : ∀ k : Nat,
    iterate (1048576 * k + 798555) 32 = 531441 * k + 404726 ∧
      531441 * k + 404726 < 1048576 * k + 798555 := by
  intro k
  have h1 : C (1048576 * k + 798555) = 3145728 * k + 2395666 := by
    unfold C
    simp [show (1048576 * k + 798555) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2395666) = 1572864 * k + 1197833 := by
    unfold C
    simp [show (3145728 * k + 2395666) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1197833) = 4718592 * k + 3593500 := by
    unfold C
    simp [show (1572864 * k + 1197833) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3593500) = 2359296 * k + 1796750 := by
    unfold C
    simp [show (4718592 * k + 3593500) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1796750) = 1179648 * k + 898375 := by
    unfold C
    simp [show (2359296 * k + 1796750) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 898375) = 3538944 * k + 2695126 := by
    unfold C
    simp [show (1179648 * k + 898375) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2695126) = 1769472 * k + 1347563 := by
    unfold C
    simp [show (3538944 * k + 2695126) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1347563) = 5308416 * k + 4042690 := by
    unfold C
    simp [show (1769472 * k + 1347563) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4042690) = 2654208 * k + 2021345 := by
    unfold C
    simp [show (5308416 * k + 4042690) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2021345) = 7962624 * k + 6064036 := by
    unfold C
    simp [show (2654208 * k + 2021345) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6064036) = 3981312 * k + 3032018 := by
    unfold C
    simp [show (7962624 * k + 6064036) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3032018) = 1990656 * k + 1516009 := by
    unfold C
    simp [show (3981312 * k + 3032018) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1516009) = 5971968 * k + 4548028 := by
    unfold C
    simp [show (1990656 * k + 1516009) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4548028) = 2985984 * k + 2274014 := by
    unfold C
    simp [show (5971968 * k + 4548028) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2274014) = 1492992 * k + 1137007 := by
    unfold C
    simp [show (2985984 * k + 2274014) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1137007) = 4478976 * k + 3411022 := by
    unfold C
    simp [show (1492992 * k + 1137007) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3411022) = 2239488 * k + 1705511 := by
    unfold C
    simp [show (4478976 * k + 3411022) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1705511) = 6718464 * k + 5116534 := by
    unfold C
    simp [show (2239488 * k + 1705511) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5116534) = 3359232 * k + 2558267 := by
    unfold C
    simp [show (6718464 * k + 5116534) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2558267) = 10077696 * k + 7674802 := by
    unfold C
    simp [show (3359232 * k + 2558267) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7674802) = 5038848 * k + 3837401 := by
    unfold C
    simp [show (10077696 * k + 7674802) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3837401) = 15116544 * k + 11512204 := by
    unfold C
    simp [show (5038848 * k + 3837401) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11512204) = 7558272 * k + 5756102 := by
    unfold C
    simp [show (15116544 * k + 11512204) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5756102) = 3779136 * k + 2878051 := by
    unfold C
    simp [show (7558272 * k + 5756102) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2878051) = 11337408 * k + 8634154 := by
    unfold C
    simp [show (3779136 * k + 2878051) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8634154) = 5668704 * k + 4317077 := by
    unfold C
    simp [show (11337408 * k + 8634154) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4317077) = 17006112 * k + 12951232 := by
    unfold C
    simp [show (5668704 * k + 4317077) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 12951232) = 8503056 * k + 6475616 := by
    unfold C
    simp [show (17006112 * k + 12951232) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6475616) = 4251528 * k + 3237808 := by
    unfold C
    simp [show (8503056 * k + 6475616) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3237808) = 2125764 * k + 1618904 := by
    unfold C
    simp [show (4251528 * k + 3237808) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1618904) = 1062882 * k + 809452 := by
    unfold C
    simp [show (2125764 * k + 1618904) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 809452) = 531441 * k + 404726 := by
    unfold C
    simp [show (1062882 * k + 809452) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 798555) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 798555)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_799359 : ∀ k : Nat,
    iterate (1048576 * k + 799359) 32 = 531441 * k + 405133 ∧
      531441 * k + 405133 < 1048576 * k + 799359 := by
  intro k
  have h1 : C (1048576 * k + 799359) = 3145728 * k + 2398078 := by
    unfold C
    simp [show (1048576 * k + 799359) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2398078) = 1572864 * k + 1199039 := by
    unfold C
    simp [show (3145728 * k + 2398078) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1199039) = 4718592 * k + 3597118 := by
    unfold C
    simp [show (1572864 * k + 1199039) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3597118) = 2359296 * k + 1798559 := by
    unfold C
    simp [show (4718592 * k + 3597118) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1798559) = 7077888 * k + 5395678 := by
    unfold C
    simp [show (2359296 * k + 1798559) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5395678) = 3538944 * k + 2697839 := by
    unfold C
    simp [show (7077888 * k + 5395678) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2697839) = 10616832 * k + 8093518 := by
    unfold C
    simp [show (3538944 * k + 2697839) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8093518) = 5308416 * k + 4046759 := by
    unfold C
    simp [show (10616832 * k + 8093518) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4046759) = 15925248 * k + 12140278 := by
    unfold C
    simp [show (5308416 * k + 4046759) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12140278) = 7962624 * k + 6070139 := by
    unfold C
    simp [show (15925248 * k + 12140278) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6070139) = 23887872 * k + 18210418 := by
    unfold C
    simp [show (7962624 * k + 6070139) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18210418) = 11943936 * k + 9105209 := by
    unfold C
    simp [show (23887872 * k + 18210418) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9105209) = 35831808 * k + 27315628 := by
    unfold C
    simp [show (11943936 * k + 9105209) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27315628) = 17915904 * k + 13657814 := by
    unfold C
    simp [show (35831808 * k + 27315628) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13657814) = 8957952 * k + 6828907 := by
    unfold C
    simp [show (17915904 * k + 13657814) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6828907) = 26873856 * k + 20486722 := by
    unfold C
    simp [show (8957952 * k + 6828907) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20486722) = 13436928 * k + 10243361 := by
    unfold C
    simp [show (26873856 * k + 20486722) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10243361) = 40310784 * k + 30730084 := by
    unfold C
    simp [show (13436928 * k + 10243361) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30730084) = 20155392 * k + 15365042 := by
    unfold C
    simp [show (40310784 * k + 30730084) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15365042) = 10077696 * k + 7682521 := by
    unfold C
    simp [show (20155392 * k + 15365042) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7682521) = 30233088 * k + 23047564 := by
    unfold C
    simp [show (10077696 * k + 7682521) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23047564) = 15116544 * k + 11523782 := by
    unfold C
    simp [show (30233088 * k + 23047564) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11523782) = 7558272 * k + 5761891 := by
    unfold C
    simp [show (15116544 * k + 11523782) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5761891) = 22674816 * k + 17285674 := by
    unfold C
    simp [show (7558272 * k + 5761891) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17285674) = 11337408 * k + 8642837 := by
    unfold C
    simp [show (22674816 * k + 17285674) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8642837) = 34012224 * k + 25928512 := by
    unfold C
    simp [show (11337408 * k + 8642837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 25928512) = 17006112 * k + 12964256 := by
    unfold C
    simp [show (34012224 * k + 25928512) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 12964256) = 8503056 * k + 6482128 := by
    unfold C
    simp [show (17006112 * k + 12964256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6482128) = 4251528 * k + 3241064 := by
    unfold C
    simp [show (8503056 * k + 6482128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3241064) = 2125764 * k + 1620532 := by
    unfold C
    simp [show (4251528 * k + 3241064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1620532) = 1062882 * k + 810266 := by
    unfold C
    simp [show (2125764 * k + 1620532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 810266) = 531441 * k + 405133 := by
    unfold C
    simp [show (1062882 * k + 810266) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 799359) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 799359)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_801051 : ∀ k : Nat,
    iterate (1048576 * k + 801051) 32 = 531441 * k + 405991 ∧
      531441 * k + 405991 < 1048576 * k + 801051 := by
  intro k
  have h1 : C (1048576 * k + 801051) = 3145728 * k + 2403154 := by
    unfold C
    simp [show (1048576 * k + 801051) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2403154) = 1572864 * k + 1201577 := by
    unfold C
    simp [show (3145728 * k + 2403154) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1201577) = 4718592 * k + 3604732 := by
    unfold C
    simp [show (1572864 * k + 1201577) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3604732) = 2359296 * k + 1802366 := by
    unfold C
    simp [show (4718592 * k + 3604732) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1802366) = 1179648 * k + 901183 := by
    unfold C
    simp [show (2359296 * k + 1802366) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 901183) = 3538944 * k + 2703550 := by
    unfold C
    simp [show (1179648 * k + 901183) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2703550) = 1769472 * k + 1351775 := by
    unfold C
    simp [show (3538944 * k + 2703550) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1351775) = 5308416 * k + 4055326 := by
    unfold C
    simp [show (1769472 * k + 1351775) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4055326) = 2654208 * k + 2027663 := by
    unfold C
    simp [show (5308416 * k + 4055326) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2027663) = 7962624 * k + 6082990 := by
    unfold C
    simp [show (2654208 * k + 2027663) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6082990) = 3981312 * k + 3041495 := by
    unfold C
    simp [show (7962624 * k + 6082990) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3041495) = 11943936 * k + 9124486 := by
    unfold C
    simp [show (3981312 * k + 3041495) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9124486) = 5971968 * k + 4562243 := by
    unfold C
    simp [show (11943936 * k + 9124486) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4562243) = 17915904 * k + 13686730 := by
    unfold C
    simp [show (5971968 * k + 4562243) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13686730) = 8957952 * k + 6843365 := by
    unfold C
    simp [show (17915904 * k + 13686730) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6843365) = 26873856 * k + 20530096 := by
    unfold C
    simp [show (8957952 * k + 6843365) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20530096) = 13436928 * k + 10265048 := by
    unfold C
    simp [show (26873856 * k + 20530096) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10265048) = 6718464 * k + 5132524 := by
    unfold C
    simp [show (13436928 * k + 10265048) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5132524) = 3359232 * k + 2566262 := by
    unfold C
    simp [show (6718464 * k + 5132524) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2566262) = 1679616 * k + 1283131 := by
    unfold C
    simp [show (3359232 * k + 2566262) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1283131) = 5038848 * k + 3849394 := by
    unfold C
    simp [show (1679616 * k + 1283131) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3849394) = 2519424 * k + 1924697 := by
    unfold C
    simp [show (5038848 * k + 3849394) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1924697) = 7558272 * k + 5774092 := by
    unfold C
    simp [show (2519424 * k + 1924697) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5774092) = 3779136 * k + 2887046 := by
    unfold C
    simp [show (7558272 * k + 5774092) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2887046) = 1889568 * k + 1443523 := by
    unfold C
    simp [show (3779136 * k + 2887046) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1443523) = 5668704 * k + 4330570 := by
    unfold C
    simp [show (1889568 * k + 1443523) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4330570) = 2834352 * k + 2165285 := by
    unfold C
    simp [show (5668704 * k + 4330570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2165285) = 8503056 * k + 6495856 := by
    unfold C
    simp [show (2834352 * k + 2165285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6495856) = 4251528 * k + 3247928 := by
    unfold C
    simp [show (8503056 * k + 6495856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3247928) = 2125764 * k + 1623964 := by
    unfold C
    simp [show (4251528 * k + 3247928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1623964) = 1062882 * k + 811982 := by
    unfold C
    simp [show (2125764 * k + 1623964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 811982) = 531441 * k + 405991 := by
    unfold C
    simp [show (1062882 * k + 811982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 801051) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 801051)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_801087 : ∀ k : Nat,
    iterate (1048576 * k + 801087) 32 = 531441 * k + 406009 ∧
      531441 * k + 406009 < 1048576 * k + 801087 := by
  intro k
  have h1 : C (1048576 * k + 801087) = 3145728 * k + 2403262 := by
    unfold C
    simp [show (1048576 * k + 801087) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2403262) = 1572864 * k + 1201631 := by
    unfold C
    simp [show (3145728 * k + 2403262) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1201631) = 4718592 * k + 3604894 := by
    unfold C
    simp [show (1572864 * k + 1201631) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3604894) = 2359296 * k + 1802447 := by
    unfold C
    simp [show (4718592 * k + 3604894) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1802447) = 7077888 * k + 5407342 := by
    unfold C
    simp [show (2359296 * k + 1802447) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5407342) = 3538944 * k + 2703671 := by
    unfold C
    simp [show (7077888 * k + 5407342) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2703671) = 10616832 * k + 8111014 := by
    unfold C
    simp [show (3538944 * k + 2703671) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8111014) = 5308416 * k + 4055507 := by
    unfold C
    simp [show (10616832 * k + 8111014) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4055507) = 15925248 * k + 12166522 := by
    unfold C
    simp [show (5308416 * k + 4055507) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12166522) = 7962624 * k + 6083261 := by
    unfold C
    simp [show (15925248 * k + 12166522) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6083261) = 23887872 * k + 18249784 := by
    unfold C
    simp [show (7962624 * k + 6083261) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18249784) = 11943936 * k + 9124892 := by
    unfold C
    simp [show (23887872 * k + 18249784) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9124892) = 5971968 * k + 4562446 := by
    unfold C
    simp [show (11943936 * k + 9124892) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4562446) = 2985984 * k + 2281223 := by
    unfold C
    simp [show (5971968 * k + 4562446) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2281223) = 8957952 * k + 6843670 := by
    unfold C
    simp [show (2985984 * k + 2281223) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6843670) = 4478976 * k + 3421835 := by
    unfold C
    simp [show (8957952 * k + 6843670) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3421835) = 13436928 * k + 10265506 := by
    unfold C
    simp [show (4478976 * k + 3421835) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10265506) = 6718464 * k + 5132753 := by
    unfold C
    simp [show (13436928 * k + 10265506) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5132753) = 20155392 * k + 15398260 := by
    unfold C
    simp [show (6718464 * k + 5132753) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15398260) = 10077696 * k + 7699130 := by
    unfold C
    simp [show (20155392 * k + 15398260) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7699130) = 5038848 * k + 3849565 := by
    unfold C
    simp [show (10077696 * k + 7699130) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3849565) = 15116544 * k + 11548696 := by
    unfold C
    simp [show (5038848 * k + 3849565) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11548696) = 7558272 * k + 5774348 := by
    unfold C
    simp [show (15116544 * k + 11548696) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5774348) = 3779136 * k + 2887174 := by
    unfold C
    simp [show (7558272 * k + 5774348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2887174) = 1889568 * k + 1443587 := by
    unfold C
    simp [show (3779136 * k + 2887174) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1443587) = 5668704 * k + 4330762 := by
    unfold C
    simp [show (1889568 * k + 1443587) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4330762) = 2834352 * k + 2165381 := by
    unfold C
    simp [show (5668704 * k + 4330762) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2165381) = 8503056 * k + 6496144 := by
    unfold C
    simp [show (2834352 * k + 2165381) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6496144) = 4251528 * k + 3248072 := by
    unfold C
    simp [show (8503056 * k + 6496144) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3248072) = 2125764 * k + 1624036 := by
    unfold C
    simp [show (4251528 * k + 3248072) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1624036) = 1062882 * k + 812018 := by
    unfold C
    simp [show (2125764 * k + 1624036) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 812018) = 531441 * k + 406009 := by
    unfold C
    simp [show (1062882 * k + 812018) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 801087) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 801087)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_801823 : ∀ k : Nat,
    iterate (1048576 * k + 801823) 32 = 531441 * k + 406382 ∧
      531441 * k + 406382 < 1048576 * k + 801823 := by
  intro k
  have h1 : C (1048576 * k + 801823) = 3145728 * k + 2405470 := by
    unfold C
    simp [show (1048576 * k + 801823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2405470) = 1572864 * k + 1202735 := by
    unfold C
    simp [show (3145728 * k + 2405470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1202735) = 4718592 * k + 3608206 := by
    unfold C
    simp [show (1572864 * k + 1202735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3608206) = 2359296 * k + 1804103 := by
    unfold C
    simp [show (4718592 * k + 3608206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1804103) = 7077888 * k + 5412310 := by
    unfold C
    simp [show (2359296 * k + 1804103) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5412310) = 3538944 * k + 2706155 := by
    unfold C
    simp [show (7077888 * k + 5412310) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2706155) = 10616832 * k + 8118466 := by
    unfold C
    simp [show (3538944 * k + 2706155) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8118466) = 5308416 * k + 4059233 := by
    unfold C
    simp [show (10616832 * k + 8118466) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4059233) = 15925248 * k + 12177700 := by
    unfold C
    simp [show (5308416 * k + 4059233) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12177700) = 7962624 * k + 6088850 := by
    unfold C
    simp [show (15925248 * k + 12177700) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6088850) = 3981312 * k + 3044425 := by
    unfold C
    simp [show (7962624 * k + 6088850) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3044425) = 11943936 * k + 9133276 := by
    unfold C
    simp [show (3981312 * k + 3044425) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9133276) = 5971968 * k + 4566638 := by
    unfold C
    simp [show (11943936 * k + 9133276) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4566638) = 2985984 * k + 2283319 := by
    unfold C
    simp [show (5971968 * k + 4566638) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2283319) = 8957952 * k + 6849958 := by
    unfold C
    simp [show (2985984 * k + 2283319) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6849958) = 4478976 * k + 3424979 := by
    unfold C
    simp [show (8957952 * k + 6849958) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3424979) = 13436928 * k + 10274938 := by
    unfold C
    simp [show (4478976 * k + 3424979) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10274938) = 6718464 * k + 5137469 := by
    unfold C
    simp [show (13436928 * k + 10274938) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5137469) = 20155392 * k + 15412408 := by
    unfold C
    simp [show (6718464 * k + 5137469) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15412408) = 10077696 * k + 7706204 := by
    unfold C
    simp [show (20155392 * k + 15412408) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7706204) = 5038848 * k + 3853102 := by
    unfold C
    simp [show (10077696 * k + 7706204) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3853102) = 2519424 * k + 1926551 := by
    unfold C
    simp [show (5038848 * k + 3853102) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1926551) = 7558272 * k + 5779654 := by
    unfold C
    simp [show (2519424 * k + 1926551) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5779654) = 3779136 * k + 2889827 := by
    unfold C
    simp [show (7558272 * k + 5779654) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2889827) = 11337408 * k + 8669482 := by
    unfold C
    simp [show (3779136 * k + 2889827) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8669482) = 5668704 * k + 4334741 := by
    unfold C
    simp [show (11337408 * k + 8669482) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4334741) = 17006112 * k + 13004224 := by
    unfold C
    simp [show (5668704 * k + 4334741) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13004224) = 8503056 * k + 6502112 := by
    unfold C
    simp [show (17006112 * k + 13004224) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6502112) = 4251528 * k + 3251056 := by
    unfold C
    simp [show (8503056 * k + 6502112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3251056) = 2125764 * k + 1625528 := by
    unfold C
    simp [show (4251528 * k + 3251056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1625528) = 1062882 * k + 812764 := by
    unfold C
    simp [show (2125764 * k + 1625528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 812764) = 531441 * k + 406382 := by
    unfold C
    simp [show (1062882 * k + 812764) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 801823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 801823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_802095 : ∀ k : Nat,
    iterate (1048576 * k + 802095) 32 = 531441 * k + 406520 ∧
      531441 * k + 406520 < 1048576 * k + 802095 := by
  intro k
  have h1 : C (1048576 * k + 802095) = 3145728 * k + 2406286 := by
    unfold C
    simp [show (1048576 * k + 802095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2406286) = 1572864 * k + 1203143 := by
    unfold C
    simp [show (3145728 * k + 2406286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1203143) = 4718592 * k + 3609430 := by
    unfold C
    simp [show (1572864 * k + 1203143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3609430) = 2359296 * k + 1804715 := by
    unfold C
    simp [show (4718592 * k + 3609430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1804715) = 7077888 * k + 5414146 := by
    unfold C
    simp [show (2359296 * k + 1804715) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5414146) = 3538944 * k + 2707073 := by
    unfold C
    simp [show (7077888 * k + 5414146) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2707073) = 10616832 * k + 8121220 := by
    unfold C
    simp [show (3538944 * k + 2707073) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8121220) = 5308416 * k + 4060610 := by
    unfold C
    simp [show (10616832 * k + 8121220) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4060610) = 2654208 * k + 2030305 := by
    unfold C
    simp [show (5308416 * k + 4060610) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2030305) = 7962624 * k + 6090916 := by
    unfold C
    simp [show (2654208 * k + 2030305) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6090916) = 3981312 * k + 3045458 := by
    unfold C
    simp [show (7962624 * k + 6090916) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3045458) = 1990656 * k + 1522729 := by
    unfold C
    simp [show (3981312 * k + 3045458) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1522729) = 5971968 * k + 4568188 := by
    unfold C
    simp [show (1990656 * k + 1522729) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4568188) = 2985984 * k + 2284094 := by
    unfold C
    simp [show (5971968 * k + 4568188) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2284094) = 1492992 * k + 1142047 := by
    unfold C
    simp [show (2985984 * k + 2284094) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1142047) = 4478976 * k + 3426142 := by
    unfold C
    simp [show (1492992 * k + 1142047) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3426142) = 2239488 * k + 1713071 := by
    unfold C
    simp [show (4478976 * k + 3426142) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1713071) = 6718464 * k + 5139214 := by
    unfold C
    simp [show (2239488 * k + 1713071) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5139214) = 3359232 * k + 2569607 := by
    unfold C
    simp [show (6718464 * k + 5139214) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2569607) = 10077696 * k + 7708822 := by
    unfold C
    simp [show (3359232 * k + 2569607) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7708822) = 5038848 * k + 3854411 := by
    unfold C
    simp [show (10077696 * k + 7708822) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3854411) = 15116544 * k + 11563234 := by
    unfold C
    simp [show (5038848 * k + 3854411) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11563234) = 7558272 * k + 5781617 := by
    unfold C
    simp [show (15116544 * k + 11563234) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5781617) = 22674816 * k + 17344852 := by
    unfold C
    simp [show (7558272 * k + 5781617) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17344852) = 11337408 * k + 8672426 := by
    unfold C
    simp [show (22674816 * k + 17344852) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8672426) = 5668704 * k + 4336213 := by
    unfold C
    simp [show (11337408 * k + 8672426) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4336213) = 17006112 * k + 13008640 := by
    unfold C
    simp [show (5668704 * k + 4336213) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13008640) = 8503056 * k + 6504320 := by
    unfold C
    simp [show (17006112 * k + 13008640) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6504320) = 4251528 * k + 3252160 := by
    unfold C
    simp [show (8503056 * k + 6504320) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3252160) = 2125764 * k + 1626080 := by
    unfold C
    simp [show (4251528 * k + 3252160) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1626080) = 1062882 * k + 813040 := by
    unfold C
    simp [show (2125764 * k + 1626080) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 813040) = 531441 * k + 406520 := by
    unfold C
    simp [show (1062882 * k + 813040) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 802095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 802095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_802111 : ∀ k : Nat,
    iterate (1048576 * k + 802111) 32 = 531441 * k + 406528 ∧
      531441 * k + 406528 < 1048576 * k + 802111 := by
  intro k
  have h1 : C (1048576 * k + 802111) = 3145728 * k + 2406334 := by
    unfold C
    simp [show (1048576 * k + 802111) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2406334) = 1572864 * k + 1203167 := by
    unfold C
    simp [show (3145728 * k + 2406334) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1203167) = 4718592 * k + 3609502 := by
    unfold C
    simp [show (1572864 * k + 1203167) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3609502) = 2359296 * k + 1804751 := by
    unfold C
    simp [show (4718592 * k + 3609502) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1804751) = 7077888 * k + 5414254 := by
    unfold C
    simp [show (2359296 * k + 1804751) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5414254) = 3538944 * k + 2707127 := by
    unfold C
    simp [show (7077888 * k + 5414254) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2707127) = 10616832 * k + 8121382 := by
    unfold C
    simp [show (3538944 * k + 2707127) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8121382) = 5308416 * k + 4060691 := by
    unfold C
    simp [show (10616832 * k + 8121382) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4060691) = 15925248 * k + 12182074 := by
    unfold C
    simp [show (5308416 * k + 4060691) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12182074) = 7962624 * k + 6091037 := by
    unfold C
    simp [show (15925248 * k + 12182074) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6091037) = 23887872 * k + 18273112 := by
    unfold C
    simp [show (7962624 * k + 6091037) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18273112) = 11943936 * k + 9136556 := by
    unfold C
    simp [show (23887872 * k + 18273112) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9136556) = 5971968 * k + 4568278 := by
    unfold C
    simp [show (11943936 * k + 9136556) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4568278) = 2985984 * k + 2284139 := by
    unfold C
    simp [show (5971968 * k + 4568278) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2284139) = 8957952 * k + 6852418 := by
    unfold C
    simp [show (2985984 * k + 2284139) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6852418) = 4478976 * k + 3426209 := by
    unfold C
    simp [show (8957952 * k + 6852418) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3426209) = 13436928 * k + 10278628 := by
    unfold C
    simp [show (4478976 * k + 3426209) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10278628) = 6718464 * k + 5139314 := by
    unfold C
    simp [show (13436928 * k + 10278628) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5139314) = 3359232 * k + 2569657 := by
    unfold C
    simp [show (6718464 * k + 5139314) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2569657) = 10077696 * k + 7708972 := by
    unfold C
    simp [show (3359232 * k + 2569657) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7708972) = 5038848 * k + 3854486 := by
    unfold C
    simp [show (10077696 * k + 7708972) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3854486) = 2519424 * k + 1927243 := by
    unfold C
    simp [show (5038848 * k + 3854486) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1927243) = 7558272 * k + 5781730 := by
    unfold C
    simp [show (2519424 * k + 1927243) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5781730) = 3779136 * k + 2890865 := by
    unfold C
    simp [show (7558272 * k + 5781730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2890865) = 11337408 * k + 8672596 := by
    unfold C
    simp [show (3779136 * k + 2890865) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8672596) = 5668704 * k + 4336298 := by
    unfold C
    simp [show (11337408 * k + 8672596) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4336298) = 2834352 * k + 2168149 := by
    unfold C
    simp [show (5668704 * k + 4336298) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2168149) = 8503056 * k + 6504448 := by
    unfold C
    simp [show (2834352 * k + 2168149) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6504448) = 4251528 * k + 3252224 := by
    unfold C
    simp [show (8503056 * k + 6504448) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3252224) = 2125764 * k + 1626112 := by
    unfold C
    simp [show (4251528 * k + 3252224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1626112) = 1062882 * k + 813056 := by
    unfold C
    simp [show (2125764 * k + 1626112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 813056) = 531441 * k + 406528 := by
    unfold C
    simp [show (1062882 * k + 813056) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 802111) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 802111)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_802543 : ∀ k : Nat,
    iterate (1048576 * k + 802543) 32 = 531441 * k + 406747 ∧
      531441 * k + 406747 < 1048576 * k + 802543 := by
  intro k
  have h1 : C (1048576 * k + 802543) = 3145728 * k + 2407630 := by
    unfold C
    simp [show (1048576 * k + 802543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2407630) = 1572864 * k + 1203815 := by
    unfold C
    simp [show (3145728 * k + 2407630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1203815) = 4718592 * k + 3611446 := by
    unfold C
    simp [show (1572864 * k + 1203815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3611446) = 2359296 * k + 1805723 := by
    unfold C
    simp [show (4718592 * k + 3611446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1805723) = 7077888 * k + 5417170 := by
    unfold C
    simp [show (2359296 * k + 1805723) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5417170) = 3538944 * k + 2708585 := by
    unfold C
    simp [show (7077888 * k + 5417170) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2708585) = 10616832 * k + 8125756 := by
    unfold C
    simp [show (3538944 * k + 2708585) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8125756) = 5308416 * k + 4062878 := by
    unfold C
    simp [show (10616832 * k + 8125756) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4062878) = 2654208 * k + 2031439 := by
    unfold C
    simp [show (5308416 * k + 4062878) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2031439) = 7962624 * k + 6094318 := by
    unfold C
    simp [show (2654208 * k + 2031439) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6094318) = 3981312 * k + 3047159 := by
    unfold C
    simp [show (7962624 * k + 6094318) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3047159) = 11943936 * k + 9141478 := by
    unfold C
    simp [show (3981312 * k + 3047159) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9141478) = 5971968 * k + 4570739 := by
    unfold C
    simp [show (11943936 * k + 9141478) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4570739) = 17915904 * k + 13712218 := by
    unfold C
    simp [show (5971968 * k + 4570739) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13712218) = 8957952 * k + 6856109 := by
    unfold C
    simp [show (17915904 * k + 13712218) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6856109) = 26873856 * k + 20568328 := by
    unfold C
    simp [show (8957952 * k + 6856109) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20568328) = 13436928 * k + 10284164 := by
    unfold C
    simp [show (26873856 * k + 20568328) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10284164) = 6718464 * k + 5142082 := by
    unfold C
    simp [show (13436928 * k + 10284164) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5142082) = 3359232 * k + 2571041 := by
    unfold C
    simp [show (6718464 * k + 5142082) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2571041) = 10077696 * k + 7713124 := by
    unfold C
    simp [show (3359232 * k + 2571041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7713124) = 5038848 * k + 3856562 := by
    unfold C
    simp [show (10077696 * k + 7713124) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3856562) = 2519424 * k + 1928281 := by
    unfold C
    simp [show (5038848 * k + 3856562) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1928281) = 7558272 * k + 5784844 := by
    unfold C
    simp [show (2519424 * k + 1928281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5784844) = 3779136 * k + 2892422 := by
    unfold C
    simp [show (7558272 * k + 5784844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2892422) = 1889568 * k + 1446211 := by
    unfold C
    simp [show (3779136 * k + 2892422) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1446211) = 5668704 * k + 4338634 := by
    unfold C
    simp [show (1889568 * k + 1446211) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4338634) = 2834352 * k + 2169317 := by
    unfold C
    simp [show (5668704 * k + 4338634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2169317) = 8503056 * k + 6507952 := by
    unfold C
    simp [show (2834352 * k + 2169317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6507952) = 4251528 * k + 3253976 := by
    unfold C
    simp [show (8503056 * k + 6507952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3253976) = 2125764 * k + 1626988 := by
    unfold C
    simp [show (4251528 * k + 3253976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1626988) = 1062882 * k + 813494 := by
    unfold C
    simp [show (2125764 * k + 1626988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 813494) = 531441 * k + 406747 := by
    unfold C
    simp [show (1062882 * k + 813494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 802543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 802543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_802687 : ∀ k : Nat,
    iterate (1048576 * k + 802687) 32 = 531441 * k + 406820 ∧
      531441 * k + 406820 < 1048576 * k + 802687 := by
  intro k
  have h1 : C (1048576 * k + 802687) = 3145728 * k + 2408062 := by
    unfold C
    simp [show (1048576 * k + 802687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2408062) = 1572864 * k + 1204031 := by
    unfold C
    simp [show (3145728 * k + 2408062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1204031) = 4718592 * k + 3612094 := by
    unfold C
    simp [show (1572864 * k + 1204031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3612094) = 2359296 * k + 1806047 := by
    unfold C
    simp [show (4718592 * k + 3612094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1806047) = 7077888 * k + 5418142 := by
    unfold C
    simp [show (2359296 * k + 1806047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5418142) = 3538944 * k + 2709071 := by
    unfold C
    simp [show (7077888 * k + 5418142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2709071) = 10616832 * k + 8127214 := by
    unfold C
    simp [show (3538944 * k + 2709071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8127214) = 5308416 * k + 4063607 := by
    unfold C
    simp [show (10616832 * k + 8127214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4063607) = 15925248 * k + 12190822 := by
    unfold C
    simp [show (5308416 * k + 4063607) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12190822) = 7962624 * k + 6095411 := by
    unfold C
    simp [show (15925248 * k + 12190822) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6095411) = 23887872 * k + 18286234 := by
    unfold C
    simp [show (7962624 * k + 6095411) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18286234) = 11943936 * k + 9143117 := by
    unfold C
    simp [show (23887872 * k + 18286234) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9143117) = 35831808 * k + 27429352 := by
    unfold C
    simp [show (11943936 * k + 9143117) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27429352) = 17915904 * k + 13714676 := by
    unfold C
    simp [show (35831808 * k + 27429352) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13714676) = 8957952 * k + 6857338 := by
    unfold C
    simp [show (17915904 * k + 13714676) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6857338) = 4478976 * k + 3428669 := by
    unfold C
    simp [show (8957952 * k + 6857338) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3428669) = 13436928 * k + 10286008 := by
    unfold C
    simp [show (4478976 * k + 3428669) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10286008) = 6718464 * k + 5143004 := by
    unfold C
    simp [show (13436928 * k + 10286008) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5143004) = 3359232 * k + 2571502 := by
    unfold C
    simp [show (6718464 * k + 5143004) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2571502) = 1679616 * k + 1285751 := by
    unfold C
    simp [show (3359232 * k + 2571502) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1285751) = 5038848 * k + 3857254 := by
    unfold C
    simp [show (1679616 * k + 1285751) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3857254) = 2519424 * k + 1928627 := by
    unfold C
    simp [show (5038848 * k + 3857254) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1928627) = 7558272 * k + 5785882 := by
    unfold C
    simp [show (2519424 * k + 1928627) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5785882) = 3779136 * k + 2892941 := by
    unfold C
    simp [show (7558272 * k + 5785882) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2892941) = 11337408 * k + 8678824 := by
    unfold C
    simp [show (3779136 * k + 2892941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8678824) = 5668704 * k + 4339412 := by
    unfold C
    simp [show (11337408 * k + 8678824) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4339412) = 2834352 * k + 2169706 := by
    unfold C
    simp [show (5668704 * k + 4339412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2169706) = 1417176 * k + 1084853 := by
    unfold C
    simp [show (2834352 * k + 2169706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1084853) = 4251528 * k + 3254560 := by
    unfold C
    simp [show (1417176 * k + 1084853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3254560) = 2125764 * k + 1627280 := by
    unfold C
    simp [show (4251528 * k + 3254560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1627280) = 1062882 * k + 813640 := by
    unfold C
    simp [show (2125764 * k + 1627280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 813640) = 531441 * k + 406820 := by
    unfold C
    simp [show (1062882 * k + 813640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 802687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 802687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_802799 : ∀ k : Nat,
    iterate (1048576 * k + 802799) 32 = 531441 * k + 406877 ∧
      531441 * k + 406877 < 1048576 * k + 802799 := by
  intro k
  have h1 : C (1048576 * k + 802799) = 3145728 * k + 2408398 := by
    unfold C
    simp [show (1048576 * k + 802799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2408398) = 1572864 * k + 1204199 := by
    unfold C
    simp [show (3145728 * k + 2408398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1204199) = 4718592 * k + 3612598 := by
    unfold C
    simp [show (1572864 * k + 1204199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3612598) = 2359296 * k + 1806299 := by
    unfold C
    simp [show (4718592 * k + 3612598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1806299) = 7077888 * k + 5418898 := by
    unfold C
    simp [show (2359296 * k + 1806299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5418898) = 3538944 * k + 2709449 := by
    unfold C
    simp [show (7077888 * k + 5418898) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2709449) = 10616832 * k + 8128348 := by
    unfold C
    simp [show (3538944 * k + 2709449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8128348) = 5308416 * k + 4064174 := by
    unfold C
    simp [show (10616832 * k + 8128348) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4064174) = 2654208 * k + 2032087 := by
    unfold C
    simp [show (5308416 * k + 4064174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2032087) = 7962624 * k + 6096262 := by
    unfold C
    simp [show (2654208 * k + 2032087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6096262) = 3981312 * k + 3048131 := by
    unfold C
    simp [show (7962624 * k + 6096262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3048131) = 11943936 * k + 9144394 := by
    unfold C
    simp [show (3981312 * k + 3048131) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9144394) = 5971968 * k + 4572197 := by
    unfold C
    simp [show (11943936 * k + 9144394) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4572197) = 17915904 * k + 13716592 := by
    unfold C
    simp [show (5971968 * k + 4572197) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13716592) = 8957952 * k + 6858296 := by
    unfold C
    simp [show (17915904 * k + 13716592) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6858296) = 4478976 * k + 3429148 := by
    unfold C
    simp [show (8957952 * k + 6858296) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3429148) = 2239488 * k + 1714574 := by
    unfold C
    simp [show (4478976 * k + 3429148) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1714574) = 1119744 * k + 857287 := by
    unfold C
    simp [show (2239488 * k + 1714574) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 857287) = 3359232 * k + 2571862 := by
    unfold C
    simp [show (1119744 * k + 857287) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2571862) = 1679616 * k + 1285931 := by
    unfold C
    simp [show (3359232 * k + 2571862) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1285931) = 5038848 * k + 3857794 := by
    unfold C
    simp [show (1679616 * k + 1285931) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3857794) = 2519424 * k + 1928897 := by
    unfold C
    simp [show (5038848 * k + 3857794) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1928897) = 7558272 * k + 5786692 := by
    unfold C
    simp [show (2519424 * k + 1928897) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5786692) = 3779136 * k + 2893346 := by
    unfold C
    simp [show (7558272 * k + 5786692) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2893346) = 1889568 * k + 1446673 := by
    unfold C
    simp [show (3779136 * k + 2893346) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1446673) = 5668704 * k + 4340020 := by
    unfold C
    simp [show (1889568 * k + 1446673) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4340020) = 2834352 * k + 2170010 := by
    unfold C
    simp [show (5668704 * k + 4340020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2170010) = 1417176 * k + 1085005 := by
    unfold C
    simp [show (2834352 * k + 2170010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1085005) = 4251528 * k + 3255016 := by
    unfold C
    simp [show (1417176 * k + 1085005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3255016) = 2125764 * k + 1627508 := by
    unfold C
    simp [show (4251528 * k + 3255016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1627508) = 1062882 * k + 813754 := by
    unfold C
    simp [show (2125764 * k + 1627508) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 813754) = 531441 * k + 406877 := by
    unfold C
    simp [show (1062882 * k + 813754) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 802799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 802799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_804455 : ∀ k : Nat,
    iterate (1048576 * k + 804455) 32 = 531441 * k + 407716 ∧
      531441 * k + 407716 < 1048576 * k + 804455 := by
  intro k
  have h1 : C (1048576 * k + 804455) = 3145728 * k + 2413366 := by
    unfold C
    simp [show (1048576 * k + 804455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2413366) = 1572864 * k + 1206683 := by
    unfold C
    simp [show (3145728 * k + 2413366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1206683) = 4718592 * k + 3620050 := by
    unfold C
    simp [show (1572864 * k + 1206683) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3620050) = 2359296 * k + 1810025 := by
    unfold C
    simp [show (4718592 * k + 3620050) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1810025) = 7077888 * k + 5430076 := by
    unfold C
    simp [show (2359296 * k + 1810025) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5430076) = 3538944 * k + 2715038 := by
    unfold C
    simp [show (7077888 * k + 5430076) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2715038) = 1769472 * k + 1357519 := by
    unfold C
    simp [show (3538944 * k + 2715038) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1357519) = 5308416 * k + 4072558 := by
    unfold C
    simp [show (1769472 * k + 1357519) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4072558) = 2654208 * k + 2036279 := by
    unfold C
    simp [show (5308416 * k + 4072558) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2036279) = 7962624 * k + 6108838 := by
    unfold C
    simp [show (2654208 * k + 2036279) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6108838) = 3981312 * k + 3054419 := by
    unfold C
    simp [show (7962624 * k + 6108838) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3054419) = 11943936 * k + 9163258 := by
    unfold C
    simp [show (3981312 * k + 3054419) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9163258) = 5971968 * k + 4581629 := by
    unfold C
    simp [show (11943936 * k + 9163258) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4581629) = 17915904 * k + 13744888 := by
    unfold C
    simp [show (5971968 * k + 4581629) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 13744888) = 8957952 * k + 6872444 := by
    unfold C
    simp [show (17915904 * k + 13744888) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6872444) = 4478976 * k + 3436222 := by
    unfold C
    simp [show (8957952 * k + 6872444) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3436222) = 2239488 * k + 1718111 := by
    unfold C
    simp [show (4478976 * k + 3436222) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1718111) = 6718464 * k + 5154334 := by
    unfold C
    simp [show (2239488 * k + 1718111) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5154334) = 3359232 * k + 2577167 := by
    unfold C
    simp [show (6718464 * k + 5154334) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2577167) = 10077696 * k + 7731502 := by
    unfold C
    simp [show (3359232 * k + 2577167) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 7731502) = 5038848 * k + 3865751 := by
    unfold C
    simp [show (10077696 * k + 7731502) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3865751) = 15116544 * k + 11597254 := by
    unfold C
    simp [show (5038848 * k + 3865751) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11597254) = 7558272 * k + 5798627 := by
    unfold C
    simp [show (15116544 * k + 11597254) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5798627) = 22674816 * k + 17395882 := by
    unfold C
    simp [show (7558272 * k + 5798627) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 17395882) = 11337408 * k + 8697941 := by
    unfold C
    simp [show (22674816 * k + 17395882) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8697941) = 34012224 * k + 26093824 := by
    unfold C
    simp [show (11337408 * k + 8697941) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 26093824) = 17006112 * k + 13046912 := by
    unfold C
    simp [show (34012224 * k + 26093824) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13046912) = 8503056 * k + 6523456 := by
    unfold C
    simp [show (17006112 * k + 13046912) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6523456) = 4251528 * k + 3261728 := by
    unfold C
    simp [show (8503056 * k + 6523456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3261728) = 2125764 * k + 1630864 := by
    unfold C
    simp [show (4251528 * k + 3261728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1630864) = 1062882 * k + 815432 := by
    unfold C
    simp [show (2125764 * k + 1630864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 815432) = 531441 * k + 407716 := by
    unfold C
    simp [show (1062882 * k + 815432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 804455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 804455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_804699 : ∀ k : Nat,
    iterate (1048576 * k + 804699) 32 = 531441 * k + 407840 ∧
      531441 * k + 407840 < 1048576 * k + 804699 := by
  intro k
  have h1 : C (1048576 * k + 804699) = 3145728 * k + 2414098 := by
    unfold C
    simp [show (1048576 * k + 804699) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2414098) = 1572864 * k + 1207049 := by
    unfold C
    simp [show (3145728 * k + 2414098) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1207049) = 4718592 * k + 3621148 := by
    unfold C
    simp [show (1572864 * k + 1207049) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3621148) = 2359296 * k + 1810574 := by
    unfold C
    simp [show (4718592 * k + 3621148) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1810574) = 1179648 * k + 905287 := by
    unfold C
    simp [show (2359296 * k + 1810574) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 905287) = 3538944 * k + 2715862 := by
    unfold C
    simp [show (1179648 * k + 905287) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2715862) = 1769472 * k + 1357931 := by
    unfold C
    simp [show (3538944 * k + 2715862) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1357931) = 5308416 * k + 4073794 := by
    unfold C
    simp [show (1769472 * k + 1357931) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4073794) = 2654208 * k + 2036897 := by
    unfold C
    simp [show (5308416 * k + 4073794) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2036897) = 7962624 * k + 6110692 := by
    unfold C
    simp [show (2654208 * k + 2036897) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6110692) = 3981312 * k + 3055346 := by
    unfold C
    simp [show (7962624 * k + 6110692) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3055346) = 1990656 * k + 1527673 := by
    unfold C
    simp [show (3981312 * k + 3055346) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1527673) = 5971968 * k + 4583020 := by
    unfold C
    simp [show (1990656 * k + 1527673) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4583020) = 2985984 * k + 2291510 := by
    unfold C
    simp [show (5971968 * k + 4583020) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2291510) = 1492992 * k + 1145755 := by
    unfold C
    simp [show (2985984 * k + 2291510) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1145755) = 4478976 * k + 3437266 := by
    unfold C
    simp [show (1492992 * k + 1145755) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3437266) = 2239488 * k + 1718633 := by
    unfold C
    simp [show (4478976 * k + 3437266) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1718633) = 6718464 * k + 5155900 := by
    unfold C
    simp [show (2239488 * k + 1718633) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5155900) = 3359232 * k + 2577950 := by
    unfold C
    simp [show (6718464 * k + 5155900) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2577950) = 1679616 * k + 1288975 := by
    unfold C
    simp [show (3359232 * k + 2577950) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1288975) = 5038848 * k + 3866926 := by
    unfold C
    simp [show (1679616 * k + 1288975) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3866926) = 2519424 * k + 1933463 := by
    unfold C
    simp [show (5038848 * k + 3866926) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1933463) = 7558272 * k + 5800390 := by
    unfold C
    simp [show (2519424 * k + 1933463) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 5800390) = 3779136 * k + 2900195 := by
    unfold C
    simp [show (7558272 * k + 5800390) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2900195) = 11337408 * k + 8700586 := by
    unfold C
    simp [show (3779136 * k + 2900195) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8700586) = 5668704 * k + 4350293 := by
    unfold C
    simp [show (11337408 * k + 8700586) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4350293) = 17006112 * k + 13050880 := by
    unfold C
    simp [show (5668704 * k + 4350293) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13050880) = 8503056 * k + 6525440 := by
    unfold C
    simp [show (17006112 * k + 13050880) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6525440) = 4251528 * k + 3262720 := by
    unfold C
    simp [show (8503056 * k + 6525440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3262720) = 2125764 * k + 1631360 := by
    unfold C
    simp [show (4251528 * k + 3262720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1631360) = 1062882 * k + 815680 := by
    unfold C
    simp [show (2125764 * k + 1631360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 815680) = 531441 * k + 407840 := by
    unfold C
    simp [show (1062882 * k + 815680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 804699) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 804699)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_805343 : ∀ k : Nat,
    iterate (1048576 * k + 805343) 32 = 531441 * k + 408166 ∧
      531441 * k + 408166 < 1048576 * k + 805343 := by
  intro k
  have h1 : C (1048576 * k + 805343) = 3145728 * k + 2416030 := by
    unfold C
    simp [show (1048576 * k + 805343) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2416030) = 1572864 * k + 1208015 := by
    unfold C
    simp [show (3145728 * k + 2416030) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1208015) = 4718592 * k + 3624046 := by
    unfold C
    simp [show (1572864 * k + 1208015) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3624046) = 2359296 * k + 1812023 := by
    unfold C
    simp [show (4718592 * k + 3624046) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1812023) = 7077888 * k + 5436070 := by
    unfold C
    simp [show (2359296 * k + 1812023) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5436070) = 3538944 * k + 2718035 := by
    unfold C
    simp [show (7077888 * k + 5436070) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2718035) = 10616832 * k + 8154106 := by
    unfold C
    simp [show (3538944 * k + 2718035) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8154106) = 5308416 * k + 4077053 := by
    unfold C
    simp [show (10616832 * k + 8154106) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4077053) = 15925248 * k + 12231160 := by
    unfold C
    simp [show (5308416 * k + 4077053) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12231160) = 7962624 * k + 6115580 := by
    unfold C
    simp [show (15925248 * k + 12231160) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6115580) = 3981312 * k + 3057790 := by
    unfold C
    simp [show (7962624 * k + 6115580) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3057790) = 1990656 * k + 1528895 := by
    unfold C
    simp [show (3981312 * k + 3057790) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1528895) = 5971968 * k + 4586686 := by
    unfold C
    simp [show (1990656 * k + 1528895) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4586686) = 2985984 * k + 2293343 := by
    unfold C
    simp [show (5971968 * k + 4586686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2293343) = 8957952 * k + 6880030 := by
    unfold C
    simp [show (2985984 * k + 2293343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 6880030) = 4478976 * k + 3440015 := by
    unfold C
    simp [show (8957952 * k + 6880030) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3440015) = 13436928 * k + 10320046 := by
    unfold C
    simp [show (4478976 * k + 3440015) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10320046) = 6718464 * k + 5160023 := by
    unfold C
    simp [show (13436928 * k + 10320046) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5160023) = 20155392 * k + 15480070 := by
    unfold C
    simp [show (6718464 * k + 5160023) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 15480070) = 10077696 * k + 7740035 := by
    unfold C
    simp [show (20155392 * k + 15480070) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7740035) = 30233088 * k + 23220106 := by
    unfold C
    simp [show (10077696 * k + 7740035) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 23220106) = 15116544 * k + 11610053 := by
    unfold C
    simp [show (30233088 * k + 23220106) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 11610053) = 45349632 * k + 34830160 := by
    unfold C
    simp [show (15116544 * k + 11610053) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 34830160) = 22674816 * k + 17415080 := by
    unfold C
    simp [show (45349632 * k + 34830160) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 17415080) = 11337408 * k + 8707540 := by
    unfold C
    simp [show (22674816 * k + 17415080) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 8707540) = 5668704 * k + 4353770 := by
    unfold C
    simp [show (11337408 * k + 8707540) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4353770) = 2834352 * k + 2176885 := by
    unfold C
    simp [show (5668704 * k + 4353770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2176885) = 8503056 * k + 6530656 := by
    unfold C
    simp [show (2834352 * k + 2176885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6530656) = 4251528 * k + 3265328 := by
    unfold C
    simp [show (8503056 * k + 6530656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3265328) = 2125764 * k + 1632664 := by
    unfold C
    simp [show (4251528 * k + 3265328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1632664) = 1062882 * k + 816332 := by
    unfold C
    simp [show (2125764 * k + 1632664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 816332) = 531441 * k + 408166 := by
    unfold C
    simp [show (1062882 * k + 816332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 805343) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 805343)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_805503 : ∀ k : Nat,
    iterate (1048576 * k + 805503) 32 = 531441 * k + 408247 ∧
      531441 * k + 408247 < 1048576 * k + 805503 := by
  intro k
  have h1 : C (1048576 * k + 805503) = 3145728 * k + 2416510 := by
    unfold C
    simp [show (1048576 * k + 805503) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2416510) = 1572864 * k + 1208255 := by
    unfold C
    simp [show (3145728 * k + 2416510) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1208255) = 4718592 * k + 3624766 := by
    unfold C
    simp [show (1572864 * k + 1208255) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3624766) = 2359296 * k + 1812383 := by
    unfold C
    simp [show (4718592 * k + 3624766) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1812383) = 7077888 * k + 5437150 := by
    unfold C
    simp [show (2359296 * k + 1812383) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5437150) = 3538944 * k + 2718575 := by
    unfold C
    simp [show (7077888 * k + 5437150) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2718575) = 10616832 * k + 8155726 := by
    unfold C
    simp [show (3538944 * k + 2718575) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8155726) = 5308416 * k + 4077863 := by
    unfold C
    simp [show (10616832 * k + 8155726) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4077863) = 15925248 * k + 12233590 := by
    unfold C
    simp [show (5308416 * k + 4077863) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12233590) = 7962624 * k + 6116795 := by
    unfold C
    simp [show (15925248 * k + 12233590) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6116795) = 23887872 * k + 18350386 := by
    unfold C
    simp [show (7962624 * k + 6116795) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18350386) = 11943936 * k + 9175193 := by
    unfold C
    simp [show (23887872 * k + 18350386) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9175193) = 35831808 * k + 27525580 := by
    unfold C
    simp [show (11943936 * k + 9175193) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 27525580) = 17915904 * k + 13762790 := by
    unfold C
    simp [show (35831808 * k + 27525580) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 13762790) = 8957952 * k + 6881395 := by
    unfold C
    simp [show (17915904 * k + 13762790) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 6881395) = 26873856 * k + 20644186 := by
    unfold C
    simp [show (8957952 * k + 6881395) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 20644186) = 13436928 * k + 10322093 := by
    unfold C
    simp [show (26873856 * k + 20644186) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10322093) = 40310784 * k + 30966280 := by
    unfold C
    simp [show (13436928 * k + 10322093) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 30966280) = 20155392 * k + 15483140 := by
    unfold C
    simp [show (40310784 * k + 30966280) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 15483140) = 10077696 * k + 7741570 := by
    unfold C
    simp [show (20155392 * k + 15483140) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 7741570) = 5038848 * k + 3870785 := by
    unfold C
    simp [show (10077696 * k + 7741570) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3870785) = 15116544 * k + 11612356 := by
    unfold C
    simp [show (5038848 * k + 3870785) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 11612356) = 7558272 * k + 5806178 := by
    unfold C
    simp [show (15116544 * k + 11612356) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 5806178) = 3779136 * k + 2903089 := by
    unfold C
    simp [show (7558272 * k + 5806178) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2903089) = 11337408 * k + 8709268 := by
    unfold C
    simp [show (3779136 * k + 2903089) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 8709268) = 5668704 * k + 4354634 := by
    unfold C
    simp [show (11337408 * k + 8709268) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4354634) = 2834352 * k + 2177317 := by
    unfold C
    simp [show (5668704 * k + 4354634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2177317) = 8503056 * k + 6531952 := by
    unfold C
    simp [show (2834352 * k + 2177317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6531952) = 4251528 * k + 3265976 := by
    unfold C
    simp [show (8503056 * k + 6531952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3265976) = 2125764 * k + 1632988 := by
    unfold C
    simp [show (4251528 * k + 3265976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1632988) = 1062882 * k + 816494 := by
    unfold C
    simp [show (2125764 * k + 1632988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 816494) = 531441 * k + 408247 := by
    unfold C
    simp [show (1062882 * k + 816494) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 805503) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 805503)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard102
