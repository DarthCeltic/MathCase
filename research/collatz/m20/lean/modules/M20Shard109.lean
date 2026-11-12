import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard109

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_852059 : ∀ k : Nat,
    iterate (1048576 * k + 852059) 32 = 531441 * k + 431843 ∧
      531441 * k + 431843 < 1048576 * k + 852059 := by
  intro k
  have h1 : C (1048576 * k + 852059) = 3145728 * k + 2556178 := by
    unfold C
    simp [show (1048576 * k + 852059) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2556178) = 1572864 * k + 1278089 := by
    unfold C
    simp [show (3145728 * k + 2556178) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1278089) = 4718592 * k + 3834268 := by
    unfold C
    simp [show (1572864 * k + 1278089) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3834268) = 2359296 * k + 1917134 := by
    unfold C
    simp [show (4718592 * k + 3834268) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1917134) = 1179648 * k + 958567 := by
    unfold C
    simp [show (2359296 * k + 1917134) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 958567) = 3538944 * k + 2875702 := by
    unfold C
    simp [show (1179648 * k + 958567) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2875702) = 1769472 * k + 1437851 := by
    unfold C
    simp [show (3538944 * k + 2875702) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1437851) = 5308416 * k + 4313554 := by
    unfold C
    simp [show (1769472 * k + 1437851) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4313554) = 2654208 * k + 2156777 := by
    unfold C
    simp [show (5308416 * k + 4313554) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2156777) = 7962624 * k + 6470332 := by
    unfold C
    simp [show (2654208 * k + 2156777) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6470332) = 3981312 * k + 3235166 := by
    unfold C
    simp [show (7962624 * k + 6470332) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3235166) = 1990656 * k + 1617583 := by
    unfold C
    simp [show (3981312 * k + 3235166) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1617583) = 5971968 * k + 4852750 := by
    unfold C
    simp [show (1990656 * k + 1617583) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4852750) = 2985984 * k + 2426375 := by
    unfold C
    simp [show (5971968 * k + 4852750) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2426375) = 8957952 * k + 7279126 := by
    unfold C
    simp [show (2985984 * k + 2426375) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7279126) = 4478976 * k + 3639563 := by
    unfold C
    simp [show (8957952 * k + 7279126) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3639563) = 13436928 * k + 10918690 := by
    unfold C
    simp [show (4478976 * k + 3639563) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10918690) = 6718464 * k + 5459345 := by
    unfold C
    simp [show (13436928 * k + 10918690) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5459345) = 20155392 * k + 16378036 := by
    unfold C
    simp [show (6718464 * k + 5459345) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16378036) = 10077696 * k + 8189018 := by
    unfold C
    simp [show (20155392 * k + 16378036) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8189018) = 5038848 * k + 4094509 := by
    unfold C
    simp [show (10077696 * k + 8189018) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4094509) = 15116544 * k + 12283528 := by
    unfold C
    simp [show (5038848 * k + 4094509) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12283528) = 7558272 * k + 6141764 := by
    unfold C
    simp [show (15116544 * k + 12283528) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6141764) = 3779136 * k + 3070882 := by
    unfold C
    simp [show (7558272 * k + 6141764) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3070882) = 1889568 * k + 1535441 := by
    unfold C
    simp [show (3779136 * k + 3070882) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1535441) = 5668704 * k + 4606324 := by
    unfold C
    simp [show (1889568 * k + 1535441) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4606324) = 2834352 * k + 2303162 := by
    unfold C
    simp [show (5668704 * k + 4606324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2303162) = 1417176 * k + 1151581 := by
    unfold C
    simp [show (2834352 * k + 2303162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1151581) = 4251528 * k + 3454744 := by
    unfold C
    simp [show (1417176 * k + 1151581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3454744) = 2125764 * k + 1727372 := by
    unfold C
    simp [show (4251528 * k + 3454744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1727372) = 1062882 * k + 863686 := by
    unfold C
    simp [show (2125764 * k + 1727372) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 863686) = 531441 * k + 431843 := by
    unfold C
    simp [show (1062882 * k + 863686) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 852059) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 852059)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_852071 : ∀ k : Nat,
    iterate (1048576 * k + 852071) 32 = 531441 * k + 431849 ∧
      531441 * k + 431849 < 1048576 * k + 852071 := by
  intro k
  have h1 : C (1048576 * k + 852071) = 3145728 * k + 2556214 := by
    unfold C
    simp [show (1048576 * k + 852071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2556214) = 1572864 * k + 1278107 := by
    unfold C
    simp [show (3145728 * k + 2556214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1278107) = 4718592 * k + 3834322 := by
    unfold C
    simp [show (1572864 * k + 1278107) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3834322) = 2359296 * k + 1917161 := by
    unfold C
    simp [show (4718592 * k + 3834322) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1917161) = 7077888 * k + 5751484 := by
    unfold C
    simp [show (2359296 * k + 1917161) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5751484) = 3538944 * k + 2875742 := by
    unfold C
    simp [show (7077888 * k + 5751484) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2875742) = 1769472 * k + 1437871 := by
    unfold C
    simp [show (3538944 * k + 2875742) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1437871) = 5308416 * k + 4313614 := by
    unfold C
    simp [show (1769472 * k + 1437871) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4313614) = 2654208 * k + 2156807 := by
    unfold C
    simp [show (5308416 * k + 4313614) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2156807) = 7962624 * k + 6470422 := by
    unfold C
    simp [show (2654208 * k + 2156807) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6470422) = 3981312 * k + 3235211 := by
    unfold C
    simp [show (7962624 * k + 6470422) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3235211) = 11943936 * k + 9705634 := by
    unfold C
    simp [show (3981312 * k + 3235211) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9705634) = 5971968 * k + 4852817 := by
    unfold C
    simp [show (11943936 * k + 9705634) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4852817) = 17915904 * k + 14558452 := by
    unfold C
    simp [show (5971968 * k + 4852817) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14558452) = 8957952 * k + 7279226 := by
    unfold C
    simp [show (17915904 * k + 14558452) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7279226) = 4478976 * k + 3639613 := by
    unfold C
    simp [show (8957952 * k + 7279226) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3639613) = 13436928 * k + 10918840 := by
    unfold C
    simp [show (4478976 * k + 3639613) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10918840) = 6718464 * k + 5459420 := by
    unfold C
    simp [show (13436928 * k + 10918840) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5459420) = 3359232 * k + 2729710 := by
    unfold C
    simp [show (6718464 * k + 5459420) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2729710) = 1679616 * k + 1364855 := by
    unfold C
    simp [show (3359232 * k + 2729710) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1364855) = 5038848 * k + 4094566 := by
    unfold C
    simp [show (1679616 * k + 1364855) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4094566) = 2519424 * k + 2047283 := by
    unfold C
    simp [show (5038848 * k + 4094566) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2047283) = 7558272 * k + 6141850 := by
    unfold C
    simp [show (2519424 * k + 2047283) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6141850) = 3779136 * k + 3070925 := by
    unfold C
    simp [show (7558272 * k + 6141850) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3070925) = 11337408 * k + 9212776 := by
    unfold C
    simp [show (3779136 * k + 3070925) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9212776) = 5668704 * k + 4606388 := by
    unfold C
    simp [show (11337408 * k + 9212776) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4606388) = 2834352 * k + 2303194 := by
    unfold C
    simp [show (5668704 * k + 4606388) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2303194) = 1417176 * k + 1151597 := by
    unfold C
    simp [show (2834352 * k + 2303194) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1151597) = 4251528 * k + 3454792 := by
    unfold C
    simp [show (1417176 * k + 1151597) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3454792) = 2125764 * k + 1727396 := by
    unfold C
    simp [show (4251528 * k + 3454792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1727396) = 1062882 * k + 863698 := by
    unfold C
    simp [show (2125764 * k + 1727396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 863698) = 531441 * k + 431849 := by
    unfold C
    simp [show (1062882 * k + 863698) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 852071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 852071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_852219 : ∀ k : Nat,
    iterate (1048576 * k + 852219) 32 = 531441 * k + 431924 ∧
      531441 * k + 431924 < 1048576 * k + 852219 := by
  intro k
  have h1 : C (1048576 * k + 852219) = 3145728 * k + 2556658 := by
    unfold C
    simp [show (1048576 * k + 852219) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2556658) = 1572864 * k + 1278329 := by
    unfold C
    simp [show (3145728 * k + 2556658) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1278329) = 4718592 * k + 3834988 := by
    unfold C
    simp [show (1572864 * k + 1278329) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3834988) = 2359296 * k + 1917494 := by
    unfold C
    simp [show (4718592 * k + 3834988) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1917494) = 1179648 * k + 958747 := by
    unfold C
    simp [show (2359296 * k + 1917494) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 958747) = 3538944 * k + 2876242 := by
    unfold C
    simp [show (1179648 * k + 958747) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2876242) = 1769472 * k + 1438121 := by
    unfold C
    simp [show (3538944 * k + 2876242) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1438121) = 5308416 * k + 4314364 := by
    unfold C
    simp [show (1769472 * k + 1438121) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4314364) = 2654208 * k + 2157182 := by
    unfold C
    simp [show (5308416 * k + 4314364) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2157182) = 1327104 * k + 1078591 := by
    unfold C
    simp [show (2654208 * k + 2157182) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1078591) = 3981312 * k + 3235774 := by
    unfold C
    simp [show (1327104 * k + 1078591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3235774) = 1990656 * k + 1617887 := by
    unfold C
    simp [show (3981312 * k + 3235774) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1617887) = 5971968 * k + 4853662 := by
    unfold C
    simp [show (1990656 * k + 1617887) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4853662) = 2985984 * k + 2426831 := by
    unfold C
    simp [show (5971968 * k + 4853662) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2426831) = 8957952 * k + 7280494 := by
    unfold C
    simp [show (2985984 * k + 2426831) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7280494) = 4478976 * k + 3640247 := by
    unfold C
    simp [show (8957952 * k + 7280494) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3640247) = 13436928 * k + 10920742 := by
    unfold C
    simp [show (4478976 * k + 3640247) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10920742) = 6718464 * k + 5460371 := by
    unfold C
    simp [show (13436928 * k + 10920742) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5460371) = 20155392 * k + 16381114 := by
    unfold C
    simp [show (6718464 * k + 5460371) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16381114) = 10077696 * k + 8190557 := by
    unfold C
    simp [show (20155392 * k + 16381114) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8190557) = 30233088 * k + 24571672 := by
    unfold C
    simp [show (10077696 * k + 8190557) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24571672) = 15116544 * k + 12285836 := by
    unfold C
    simp [show (30233088 * k + 24571672) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12285836) = 7558272 * k + 6142918 := by
    unfold C
    simp [show (15116544 * k + 12285836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6142918) = 3779136 * k + 3071459 := by
    unfold C
    simp [show (7558272 * k + 6142918) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3071459) = 11337408 * k + 9214378 := by
    unfold C
    simp [show (3779136 * k + 3071459) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9214378) = 5668704 * k + 4607189 := by
    unfold C
    simp [show (11337408 * k + 9214378) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4607189) = 17006112 * k + 13821568 := by
    unfold C
    simp [show (5668704 * k + 4607189) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13821568) = 8503056 * k + 6910784 := by
    unfold C
    simp [show (17006112 * k + 13821568) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6910784) = 4251528 * k + 3455392 := by
    unfold C
    simp [show (8503056 * k + 6910784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3455392) = 2125764 * k + 1727696 := by
    unfold C
    simp [show (4251528 * k + 3455392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1727696) = 1062882 * k + 863848 := by
    unfold C
    simp [show (2125764 * k + 1727696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 863848) = 531441 * k + 431924 := by
    unfold C
    simp [show (1062882 * k + 863848) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 852219) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 852219)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_852415 : ∀ k : Nat,
    iterate (1048576 * k + 852415) 32 = 531441 * k + 432023 ∧
      531441 * k + 432023 < 1048576 * k + 852415 := by
  intro k
  have h1 : C (1048576 * k + 852415) = 3145728 * k + 2557246 := by
    unfold C
    simp [show (1048576 * k + 852415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2557246) = 1572864 * k + 1278623 := by
    unfold C
    simp [show (3145728 * k + 2557246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1278623) = 4718592 * k + 3835870 := by
    unfold C
    simp [show (1572864 * k + 1278623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3835870) = 2359296 * k + 1917935 := by
    unfold C
    simp [show (4718592 * k + 3835870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1917935) = 7077888 * k + 5753806 := by
    unfold C
    simp [show (2359296 * k + 1917935) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5753806) = 3538944 * k + 2876903 := by
    unfold C
    simp [show (7077888 * k + 5753806) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2876903) = 10616832 * k + 8630710 := by
    unfold C
    simp [show (3538944 * k + 2876903) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8630710) = 5308416 * k + 4315355 := by
    unfold C
    simp [show (10616832 * k + 8630710) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4315355) = 15925248 * k + 12946066 := by
    unfold C
    simp [show (5308416 * k + 4315355) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12946066) = 7962624 * k + 6473033 := by
    unfold C
    simp [show (15925248 * k + 12946066) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6473033) = 23887872 * k + 19419100 := by
    unfold C
    simp [show (7962624 * k + 6473033) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19419100) = 11943936 * k + 9709550 := by
    unfold C
    simp [show (23887872 * k + 19419100) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9709550) = 5971968 * k + 4854775 := by
    unfold C
    simp [show (11943936 * k + 9709550) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4854775) = 17915904 * k + 14564326 := by
    unfold C
    simp [show (5971968 * k + 4854775) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14564326) = 8957952 * k + 7282163 := by
    unfold C
    simp [show (17915904 * k + 14564326) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7282163) = 26873856 * k + 21846490 := by
    unfold C
    simp [show (8957952 * k + 7282163) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21846490) = 13436928 * k + 10923245 := by
    unfold C
    simp [show (26873856 * k + 21846490) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10923245) = 40310784 * k + 32769736 := by
    unfold C
    simp [show (13436928 * k + 10923245) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32769736) = 20155392 * k + 16384868 := by
    unfold C
    simp [show (40310784 * k + 32769736) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16384868) = 10077696 * k + 8192434 := by
    unfold C
    simp [show (20155392 * k + 16384868) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8192434) = 5038848 * k + 4096217 := by
    unfold C
    simp [show (10077696 * k + 8192434) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4096217) = 15116544 * k + 12288652 := by
    unfold C
    simp [show (5038848 * k + 4096217) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12288652) = 7558272 * k + 6144326 := by
    unfold C
    simp [show (15116544 * k + 12288652) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6144326) = 3779136 * k + 3072163 := by
    unfold C
    simp [show (7558272 * k + 6144326) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3072163) = 11337408 * k + 9216490 := by
    unfold C
    simp [show (3779136 * k + 3072163) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9216490) = 5668704 * k + 4608245 := by
    unfold C
    simp [show (11337408 * k + 9216490) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4608245) = 17006112 * k + 13824736 := by
    unfold C
    simp [show (5668704 * k + 4608245) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13824736) = 8503056 * k + 6912368 := by
    unfold C
    simp [show (17006112 * k + 13824736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6912368) = 4251528 * k + 3456184 := by
    unfold C
    simp [show (8503056 * k + 6912368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3456184) = 2125764 * k + 1728092 := by
    unfold C
    simp [show (4251528 * k + 3456184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1728092) = 1062882 * k + 864046 := by
    unfold C
    simp [show (2125764 * k + 1728092) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 864046) = 531441 * k + 432023 := by
    unfold C
    simp [show (1062882 * k + 864046) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 852415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 852415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_852959 : ∀ k : Nat,
    iterate (1048576 * k + 852959) 32 = 531441 * k + 432299 ∧
      531441 * k + 432299 < 1048576 * k + 852959 := by
  intro k
  have h1 : C (1048576 * k + 852959) = 3145728 * k + 2558878 := by
    unfold C
    simp [show (1048576 * k + 852959) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2558878) = 1572864 * k + 1279439 := by
    unfold C
    simp [show (3145728 * k + 2558878) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1279439) = 4718592 * k + 3838318 := by
    unfold C
    simp [show (1572864 * k + 1279439) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3838318) = 2359296 * k + 1919159 := by
    unfold C
    simp [show (4718592 * k + 3838318) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1919159) = 7077888 * k + 5757478 := by
    unfold C
    simp [show (2359296 * k + 1919159) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5757478) = 3538944 * k + 2878739 := by
    unfold C
    simp [show (7077888 * k + 5757478) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2878739) = 10616832 * k + 8636218 := by
    unfold C
    simp [show (3538944 * k + 2878739) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8636218) = 5308416 * k + 4318109 := by
    unfold C
    simp [show (10616832 * k + 8636218) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4318109) = 15925248 * k + 12954328 := by
    unfold C
    simp [show (5308416 * k + 4318109) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12954328) = 7962624 * k + 6477164 := by
    unfold C
    simp [show (15925248 * k + 12954328) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6477164) = 3981312 * k + 3238582 := by
    unfold C
    simp [show (7962624 * k + 6477164) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3238582) = 1990656 * k + 1619291 := by
    unfold C
    simp [show (3981312 * k + 3238582) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1619291) = 5971968 * k + 4857874 := by
    unfold C
    simp [show (1990656 * k + 1619291) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4857874) = 2985984 * k + 2428937 := by
    unfold C
    simp [show (5971968 * k + 4857874) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2428937) = 8957952 * k + 7286812 := by
    unfold C
    simp [show (2985984 * k + 2428937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7286812) = 4478976 * k + 3643406 := by
    unfold C
    simp [show (8957952 * k + 7286812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3643406) = 2239488 * k + 1821703 := by
    unfold C
    simp [show (4478976 * k + 3643406) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1821703) = 6718464 * k + 5465110 := by
    unfold C
    simp [show (2239488 * k + 1821703) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5465110) = 3359232 * k + 2732555 := by
    unfold C
    simp [show (6718464 * k + 5465110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2732555) = 10077696 * k + 8197666 := by
    unfold C
    simp [show (3359232 * k + 2732555) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8197666) = 5038848 * k + 4098833 := by
    unfold C
    simp [show (10077696 * k + 8197666) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4098833) = 15116544 * k + 12296500 := by
    unfold C
    simp [show (5038848 * k + 4098833) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12296500) = 7558272 * k + 6148250 := by
    unfold C
    simp [show (15116544 * k + 12296500) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6148250) = 3779136 * k + 3074125 := by
    unfold C
    simp [show (7558272 * k + 6148250) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3074125) = 11337408 * k + 9222376 := by
    unfold C
    simp [show (3779136 * k + 3074125) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9222376) = 5668704 * k + 4611188 := by
    unfold C
    simp [show (11337408 * k + 9222376) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4611188) = 2834352 * k + 2305594 := by
    unfold C
    simp [show (5668704 * k + 4611188) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2305594) = 1417176 * k + 1152797 := by
    unfold C
    simp [show (2834352 * k + 2305594) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1152797) = 4251528 * k + 3458392 := by
    unfold C
    simp [show (1417176 * k + 1152797) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3458392) = 2125764 * k + 1729196 := by
    unfold C
    simp [show (4251528 * k + 3458392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1729196) = 1062882 * k + 864598 := by
    unfold C
    simp [show (2125764 * k + 1729196) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 864598) = 531441 * k + 432299 := by
    unfold C
    simp [show (1062882 * k + 864598) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 852959) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 852959)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_853083 : ∀ k : Nat,
    iterate (1048576 * k + 853083) 32 = 531441 * k + 432362 ∧
      531441 * k + 432362 < 1048576 * k + 853083 := by
  intro k
  have h1 : C (1048576 * k + 853083) = 3145728 * k + 2559250 := by
    unfold C
    simp [show (1048576 * k + 853083) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2559250) = 1572864 * k + 1279625 := by
    unfold C
    simp [show (3145728 * k + 2559250) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1279625) = 4718592 * k + 3838876 := by
    unfold C
    simp [show (1572864 * k + 1279625) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3838876) = 2359296 * k + 1919438 := by
    unfold C
    simp [show (4718592 * k + 3838876) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1919438) = 1179648 * k + 959719 := by
    unfold C
    simp [show (2359296 * k + 1919438) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 959719) = 3538944 * k + 2879158 := by
    unfold C
    simp [show (1179648 * k + 959719) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2879158) = 1769472 * k + 1439579 := by
    unfold C
    simp [show (3538944 * k + 2879158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1439579) = 5308416 * k + 4318738 := by
    unfold C
    simp [show (1769472 * k + 1439579) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4318738) = 2654208 * k + 2159369 := by
    unfold C
    simp [show (5308416 * k + 4318738) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2159369) = 7962624 * k + 6478108 := by
    unfold C
    simp [show (2654208 * k + 2159369) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6478108) = 3981312 * k + 3239054 := by
    unfold C
    simp [show (7962624 * k + 6478108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3239054) = 1990656 * k + 1619527 := by
    unfold C
    simp [show (3981312 * k + 3239054) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1619527) = 5971968 * k + 4858582 := by
    unfold C
    simp [show (1990656 * k + 1619527) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4858582) = 2985984 * k + 2429291 := by
    unfold C
    simp [show (5971968 * k + 4858582) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2429291) = 8957952 * k + 7287874 := by
    unfold C
    simp [show (2985984 * k + 2429291) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7287874) = 4478976 * k + 3643937 := by
    unfold C
    simp [show (8957952 * k + 7287874) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3643937) = 13436928 * k + 10931812 := by
    unfold C
    simp [show (4478976 * k + 3643937) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10931812) = 6718464 * k + 5465906 := by
    unfold C
    simp [show (13436928 * k + 10931812) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5465906) = 3359232 * k + 2732953 := by
    unfold C
    simp [show (6718464 * k + 5465906) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2732953) = 10077696 * k + 8198860 := by
    unfold C
    simp [show (3359232 * k + 2732953) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8198860) = 5038848 * k + 4099430 := by
    unfold C
    simp [show (10077696 * k + 8198860) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4099430) = 2519424 * k + 2049715 := by
    unfold C
    simp [show (5038848 * k + 4099430) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2049715) = 7558272 * k + 6149146 := by
    unfold C
    simp [show (2519424 * k + 2049715) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6149146) = 3779136 * k + 3074573 := by
    unfold C
    simp [show (7558272 * k + 6149146) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3074573) = 11337408 * k + 9223720 := by
    unfold C
    simp [show (3779136 * k + 3074573) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9223720) = 5668704 * k + 4611860 := by
    unfold C
    simp [show (11337408 * k + 9223720) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4611860) = 2834352 * k + 2305930 := by
    unfold C
    simp [show (5668704 * k + 4611860) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2305930) = 1417176 * k + 1152965 := by
    unfold C
    simp [show (2834352 * k + 2305930) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1152965) = 4251528 * k + 3458896 := by
    unfold C
    simp [show (1417176 * k + 1152965) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3458896) = 2125764 * k + 1729448 := by
    unfold C
    simp [show (4251528 * k + 3458896) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1729448) = 1062882 * k + 864724 := by
    unfold C
    simp [show (2125764 * k + 1729448) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 864724) = 531441 * k + 432362 := by
    unfold C
    simp [show (1062882 * k + 864724) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 853083) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 853083)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_854431 : ∀ k : Nat,
    iterate (1048576 * k + 854431) 32 = 531441 * k + 433045 ∧
      531441 * k + 433045 < 1048576 * k + 854431 := by
  intro k
  have h1 : C (1048576 * k + 854431) = 3145728 * k + 2563294 := by
    unfold C
    simp [show (1048576 * k + 854431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2563294) = 1572864 * k + 1281647 := by
    unfold C
    simp [show (3145728 * k + 2563294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1281647) = 4718592 * k + 3844942 := by
    unfold C
    simp [show (1572864 * k + 1281647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3844942) = 2359296 * k + 1922471 := by
    unfold C
    simp [show (4718592 * k + 3844942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1922471) = 7077888 * k + 5767414 := by
    unfold C
    simp [show (2359296 * k + 1922471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5767414) = 3538944 * k + 2883707 := by
    unfold C
    simp [show (7077888 * k + 5767414) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2883707) = 10616832 * k + 8651122 := by
    unfold C
    simp [show (3538944 * k + 2883707) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8651122) = 5308416 * k + 4325561 := by
    unfold C
    simp [show (10616832 * k + 8651122) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4325561) = 15925248 * k + 12976684 := by
    unfold C
    simp [show (5308416 * k + 4325561) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12976684) = 7962624 * k + 6488342 := by
    unfold C
    simp [show (15925248 * k + 12976684) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6488342) = 3981312 * k + 3244171 := by
    unfold C
    simp [show (7962624 * k + 6488342) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3244171) = 11943936 * k + 9732514 := by
    unfold C
    simp [show (3981312 * k + 3244171) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9732514) = 5971968 * k + 4866257 := by
    unfold C
    simp [show (11943936 * k + 9732514) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4866257) = 17915904 * k + 14598772 := by
    unfold C
    simp [show (5971968 * k + 4866257) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14598772) = 8957952 * k + 7299386 := by
    unfold C
    simp [show (17915904 * k + 14598772) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7299386) = 4478976 * k + 3649693 := by
    unfold C
    simp [show (8957952 * k + 7299386) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3649693) = 13436928 * k + 10949080 := by
    unfold C
    simp [show (4478976 * k + 3649693) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10949080) = 6718464 * k + 5474540 := by
    unfold C
    simp [show (13436928 * k + 10949080) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5474540) = 3359232 * k + 2737270 := by
    unfold C
    simp [show (6718464 * k + 5474540) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2737270) = 1679616 * k + 1368635 := by
    unfold C
    simp [show (3359232 * k + 2737270) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1368635) = 5038848 * k + 4105906 := by
    unfold C
    simp [show (1679616 * k + 1368635) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4105906) = 2519424 * k + 2052953 := by
    unfold C
    simp [show (5038848 * k + 4105906) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2052953) = 7558272 * k + 6158860 := by
    unfold C
    simp [show (2519424 * k + 2052953) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6158860) = 3779136 * k + 3079430 := by
    unfold C
    simp [show (7558272 * k + 6158860) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3079430) = 1889568 * k + 1539715 := by
    unfold C
    simp [show (3779136 * k + 3079430) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1539715) = 5668704 * k + 4619146 := by
    unfold C
    simp [show (1889568 * k + 1539715) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4619146) = 2834352 * k + 2309573 := by
    unfold C
    simp [show (5668704 * k + 4619146) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2309573) = 8503056 * k + 6928720 := by
    unfold C
    simp [show (2834352 * k + 2309573) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6928720) = 4251528 * k + 3464360 := by
    unfold C
    simp [show (8503056 * k + 6928720) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3464360) = 2125764 * k + 1732180 := by
    unfold C
    simp [show (4251528 * k + 3464360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1732180) = 1062882 * k + 866090 := by
    unfold C
    simp [show (2125764 * k + 1732180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 866090) = 531441 * k + 433045 := by
    unfold C
    simp [show (1062882 * k + 866090) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 854431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 854431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_854887 : ∀ k : Nat,
    iterate (1048576 * k + 854887) 32 = 531441 * k + 433276 ∧
      531441 * k + 433276 < 1048576 * k + 854887 := by
  intro k
  have h1 : C (1048576 * k + 854887) = 3145728 * k + 2564662 := by
    unfold C
    simp [show (1048576 * k + 854887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2564662) = 1572864 * k + 1282331 := by
    unfold C
    simp [show (3145728 * k + 2564662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1282331) = 4718592 * k + 3846994 := by
    unfold C
    simp [show (1572864 * k + 1282331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3846994) = 2359296 * k + 1923497 := by
    unfold C
    simp [show (4718592 * k + 3846994) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1923497) = 7077888 * k + 5770492 := by
    unfold C
    simp [show (2359296 * k + 1923497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5770492) = 3538944 * k + 2885246 := by
    unfold C
    simp [show (7077888 * k + 5770492) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2885246) = 1769472 * k + 1442623 := by
    unfold C
    simp [show (3538944 * k + 2885246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1442623) = 5308416 * k + 4327870 := by
    unfold C
    simp [show (1769472 * k + 1442623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4327870) = 2654208 * k + 2163935 := by
    unfold C
    simp [show (5308416 * k + 4327870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2163935) = 7962624 * k + 6491806 := by
    unfold C
    simp [show (2654208 * k + 2163935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6491806) = 3981312 * k + 3245903 := by
    unfold C
    simp [show (7962624 * k + 6491806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3245903) = 11943936 * k + 9737710 := by
    unfold C
    simp [show (3981312 * k + 3245903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9737710) = 5971968 * k + 4868855 := by
    unfold C
    simp [show (11943936 * k + 9737710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4868855) = 17915904 * k + 14606566 := by
    unfold C
    simp [show (5971968 * k + 4868855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14606566) = 8957952 * k + 7303283 := by
    unfold C
    simp [show (17915904 * k + 14606566) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7303283) = 26873856 * k + 21909850 := by
    unfold C
    simp [show (8957952 * k + 7303283) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21909850) = 13436928 * k + 10954925 := by
    unfold C
    simp [show (26873856 * k + 21909850) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10954925) = 40310784 * k + 32864776 := by
    unfold C
    simp [show (13436928 * k + 10954925) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32864776) = 20155392 * k + 16432388 := by
    unfold C
    simp [show (40310784 * k + 32864776) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16432388) = 10077696 * k + 8216194 := by
    unfold C
    simp [show (20155392 * k + 16432388) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8216194) = 5038848 * k + 4108097 := by
    unfold C
    simp [show (10077696 * k + 8216194) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4108097) = 15116544 * k + 12324292 := by
    unfold C
    simp [show (5038848 * k + 4108097) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12324292) = 7558272 * k + 6162146 := by
    unfold C
    simp [show (15116544 * k + 12324292) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6162146) = 3779136 * k + 3081073 := by
    unfold C
    simp [show (7558272 * k + 6162146) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3081073) = 11337408 * k + 9243220 := by
    unfold C
    simp [show (3779136 * k + 3081073) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9243220) = 5668704 * k + 4621610 := by
    unfold C
    simp [show (11337408 * k + 9243220) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4621610) = 2834352 * k + 2310805 := by
    unfold C
    simp [show (5668704 * k + 4621610) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2310805) = 8503056 * k + 6932416 := by
    unfold C
    simp [show (2834352 * k + 2310805) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6932416) = 4251528 * k + 3466208 := by
    unfold C
    simp [show (8503056 * k + 6932416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3466208) = 2125764 * k + 1733104 := by
    unfold C
    simp [show (4251528 * k + 3466208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1733104) = 1062882 * k + 866552 := by
    unfold C
    simp [show (2125764 * k + 1733104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 866552) = 531441 * k + 433276 := by
    unfold C
    simp [show (1062882 * k + 866552) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 854887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 854887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_855291 : ∀ k : Nat,
    iterate (1048576 * k + 855291) 32 = 531441 * k + 433481 ∧
      531441 * k + 433481 < 1048576 * k + 855291 := by
  intro k
  have h1 : C (1048576 * k + 855291) = 3145728 * k + 2565874 := by
    unfold C
    simp [show (1048576 * k + 855291) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2565874) = 1572864 * k + 1282937 := by
    unfold C
    simp [show (3145728 * k + 2565874) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1282937) = 4718592 * k + 3848812 := by
    unfold C
    simp [show (1572864 * k + 1282937) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3848812) = 2359296 * k + 1924406 := by
    unfold C
    simp [show (4718592 * k + 3848812) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1924406) = 1179648 * k + 962203 := by
    unfold C
    simp [show (2359296 * k + 1924406) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 962203) = 3538944 * k + 2886610 := by
    unfold C
    simp [show (1179648 * k + 962203) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2886610) = 1769472 * k + 1443305 := by
    unfold C
    simp [show (3538944 * k + 2886610) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1443305) = 5308416 * k + 4329916 := by
    unfold C
    simp [show (1769472 * k + 1443305) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4329916) = 2654208 * k + 2164958 := by
    unfold C
    simp [show (5308416 * k + 4329916) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2164958) = 1327104 * k + 1082479 := by
    unfold C
    simp [show (2654208 * k + 2164958) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1082479) = 3981312 * k + 3247438 := by
    unfold C
    simp [show (1327104 * k + 1082479) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3247438) = 1990656 * k + 1623719 := by
    unfold C
    simp [show (3981312 * k + 3247438) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1623719) = 5971968 * k + 4871158 := by
    unfold C
    simp [show (1990656 * k + 1623719) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4871158) = 2985984 * k + 2435579 := by
    unfold C
    simp [show (5971968 * k + 4871158) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2435579) = 8957952 * k + 7306738 := by
    unfold C
    simp [show (2985984 * k + 2435579) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7306738) = 4478976 * k + 3653369 := by
    unfold C
    simp [show (8957952 * k + 7306738) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3653369) = 13436928 * k + 10960108 := by
    unfold C
    simp [show (4478976 * k + 3653369) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10960108) = 6718464 * k + 5480054 := by
    unfold C
    simp [show (13436928 * k + 10960108) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5480054) = 3359232 * k + 2740027 := by
    unfold C
    simp [show (6718464 * k + 5480054) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2740027) = 10077696 * k + 8220082 := by
    unfold C
    simp [show (3359232 * k + 2740027) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8220082) = 5038848 * k + 4110041 := by
    unfold C
    simp [show (10077696 * k + 8220082) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4110041) = 15116544 * k + 12330124 := by
    unfold C
    simp [show (5038848 * k + 4110041) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12330124) = 7558272 * k + 6165062 := by
    unfold C
    simp [show (15116544 * k + 12330124) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6165062) = 3779136 * k + 3082531 := by
    unfold C
    simp [show (7558272 * k + 6165062) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3082531) = 11337408 * k + 9247594 := by
    unfold C
    simp [show (3779136 * k + 3082531) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9247594) = 5668704 * k + 4623797 := by
    unfold C
    simp [show (11337408 * k + 9247594) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4623797) = 17006112 * k + 13871392 := by
    unfold C
    simp [show (5668704 * k + 4623797) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13871392) = 8503056 * k + 6935696 := by
    unfold C
    simp [show (17006112 * k + 13871392) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6935696) = 4251528 * k + 3467848 := by
    unfold C
    simp [show (8503056 * k + 6935696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3467848) = 2125764 * k + 1733924 := by
    unfold C
    simp [show (4251528 * k + 3467848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1733924) = 1062882 * k + 866962 := by
    unfold C
    simp [show (2125764 * k + 1733924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 866962) = 531441 * k + 433481 := by
    unfold C
    simp [show (1062882 * k + 866962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 855291) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 855291)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_855487 : ∀ k : Nat,
    iterate (1048576 * k + 855487) 32 = 531441 * k + 433580 ∧
      531441 * k + 433580 < 1048576 * k + 855487 := by
  intro k
  have h1 : C (1048576 * k + 855487) = 3145728 * k + 2566462 := by
    unfold C
    simp [show (1048576 * k + 855487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2566462) = 1572864 * k + 1283231 := by
    unfold C
    simp [show (3145728 * k + 2566462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1283231) = 4718592 * k + 3849694 := by
    unfold C
    simp [show (1572864 * k + 1283231) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3849694) = 2359296 * k + 1924847 := by
    unfold C
    simp [show (4718592 * k + 3849694) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1924847) = 7077888 * k + 5774542 := by
    unfold C
    simp [show (2359296 * k + 1924847) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5774542) = 3538944 * k + 2887271 := by
    unfold C
    simp [show (7077888 * k + 5774542) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2887271) = 10616832 * k + 8661814 := by
    unfold C
    simp [show (3538944 * k + 2887271) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8661814) = 5308416 * k + 4330907 := by
    unfold C
    simp [show (10616832 * k + 8661814) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4330907) = 15925248 * k + 12992722 := by
    unfold C
    simp [show (5308416 * k + 4330907) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12992722) = 7962624 * k + 6496361 := by
    unfold C
    simp [show (15925248 * k + 12992722) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6496361) = 23887872 * k + 19489084 := by
    unfold C
    simp [show (7962624 * k + 6496361) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19489084) = 11943936 * k + 9744542 := by
    unfold C
    simp [show (23887872 * k + 19489084) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9744542) = 5971968 * k + 4872271 := by
    unfold C
    simp [show (11943936 * k + 9744542) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4872271) = 17915904 * k + 14616814 := by
    unfold C
    simp [show (5971968 * k + 4872271) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14616814) = 8957952 * k + 7308407 := by
    unfold C
    simp [show (17915904 * k + 14616814) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7308407) = 26873856 * k + 21925222 := by
    unfold C
    simp [show (8957952 * k + 7308407) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21925222) = 13436928 * k + 10962611 := by
    unfold C
    simp [show (26873856 * k + 21925222) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10962611) = 40310784 * k + 32887834 := by
    unfold C
    simp [show (13436928 * k + 10962611) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32887834) = 20155392 * k + 16443917 := by
    unfold C
    simp [show (40310784 * k + 32887834) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16443917) = 60466176 * k + 49331752 := by
    unfold C
    simp [show (20155392 * k + 16443917) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 49331752) = 30233088 * k + 24665876 := by
    unfold C
    simp [show (60466176 * k + 49331752) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 24665876) = 15116544 * k + 12332938 := by
    unfold C
    simp [show (30233088 * k + 24665876) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12332938) = 7558272 * k + 6166469 := by
    unfold C
    simp [show (15116544 * k + 12332938) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6166469) = 22674816 * k + 18499408 := by
    unfold C
    simp [show (7558272 * k + 6166469) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18499408) = 11337408 * k + 9249704 := by
    unfold C
    simp [show (22674816 * k + 18499408) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9249704) = 5668704 * k + 4624852 := by
    unfold C
    simp [show (11337408 * k + 9249704) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4624852) = 2834352 * k + 2312426 := by
    unfold C
    simp [show (5668704 * k + 4624852) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2312426) = 1417176 * k + 1156213 := by
    unfold C
    simp [show (2834352 * k + 2312426) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1156213) = 4251528 * k + 3468640 := by
    unfold C
    simp [show (1417176 * k + 1156213) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3468640) = 2125764 * k + 1734320 := by
    unfold C
    simp [show (4251528 * k + 3468640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1734320) = 1062882 * k + 867160 := by
    unfold C
    simp [show (2125764 * k + 1734320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 867160) = 531441 * k + 433580 := by
    unfold C
    simp [show (1062882 * k + 867160) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 855487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 855487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_855759 : ∀ k : Nat,
    iterate (1048576 * k + 855759) 32 = 531441 * k + 433718 ∧
      531441 * k + 433718 < 1048576 * k + 855759 := by
  intro k
  have h1 : C (1048576 * k + 855759) = 3145728 * k + 2567278 := by
    unfold C
    simp [show (1048576 * k + 855759) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2567278) = 1572864 * k + 1283639 := by
    unfold C
    simp [show (3145728 * k + 2567278) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1283639) = 4718592 * k + 3850918 := by
    unfold C
    simp [show (1572864 * k + 1283639) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3850918) = 2359296 * k + 1925459 := by
    unfold C
    simp [show (4718592 * k + 3850918) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1925459) = 7077888 * k + 5776378 := by
    unfold C
    simp [show (2359296 * k + 1925459) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5776378) = 3538944 * k + 2888189 := by
    unfold C
    simp [show (7077888 * k + 5776378) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2888189) = 10616832 * k + 8664568 := by
    unfold C
    simp [show (3538944 * k + 2888189) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8664568) = 5308416 * k + 4332284 := by
    unfold C
    simp [show (10616832 * k + 8664568) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4332284) = 2654208 * k + 2166142 := by
    unfold C
    simp [show (5308416 * k + 4332284) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2166142) = 1327104 * k + 1083071 := by
    unfold C
    simp [show (2654208 * k + 2166142) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1083071) = 3981312 * k + 3249214 := by
    unfold C
    simp [show (1327104 * k + 1083071) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3249214) = 1990656 * k + 1624607 := by
    unfold C
    simp [show (3981312 * k + 3249214) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1624607) = 5971968 * k + 4873822 := by
    unfold C
    simp [show (1990656 * k + 1624607) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4873822) = 2985984 * k + 2436911 := by
    unfold C
    simp [show (5971968 * k + 4873822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2436911) = 8957952 * k + 7310734 := by
    unfold C
    simp [show (2985984 * k + 2436911) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7310734) = 4478976 * k + 3655367 := by
    unfold C
    simp [show (8957952 * k + 7310734) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3655367) = 13436928 * k + 10966102 := by
    unfold C
    simp [show (4478976 * k + 3655367) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10966102) = 6718464 * k + 5483051 := by
    unfold C
    simp [show (13436928 * k + 10966102) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5483051) = 20155392 * k + 16449154 := by
    unfold C
    simp [show (6718464 * k + 5483051) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16449154) = 10077696 * k + 8224577 := by
    unfold C
    simp [show (20155392 * k + 16449154) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8224577) = 30233088 * k + 24673732 := by
    unfold C
    simp [show (10077696 * k + 8224577) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24673732) = 15116544 * k + 12336866 := by
    unfold C
    simp [show (30233088 * k + 24673732) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12336866) = 7558272 * k + 6168433 := by
    unfold C
    simp [show (15116544 * k + 12336866) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6168433) = 22674816 * k + 18505300 := by
    unfold C
    simp [show (7558272 * k + 6168433) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18505300) = 11337408 * k + 9252650 := by
    unfold C
    simp [show (22674816 * k + 18505300) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9252650) = 5668704 * k + 4626325 := by
    unfold C
    simp [show (11337408 * k + 9252650) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4626325) = 17006112 * k + 13878976 := by
    unfold C
    simp [show (5668704 * k + 4626325) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13878976) = 8503056 * k + 6939488 := by
    unfold C
    simp [show (17006112 * k + 13878976) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6939488) = 4251528 * k + 3469744 := by
    unfold C
    simp [show (8503056 * k + 6939488) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3469744) = 2125764 * k + 1734872 := by
    unfold C
    simp [show (4251528 * k + 3469744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1734872) = 1062882 * k + 867436 := by
    unfold C
    simp [show (2125764 * k + 1734872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 867436) = 531441 * k + 433718 := by
    unfold C
    simp [show (1062882 * k + 867436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 855759) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 855759)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_856315 : ∀ k : Nat,
    iterate (1048576 * k + 856315) 32 = 531441 * k + 434000 ∧
      531441 * k + 434000 < 1048576 * k + 856315 := by
  intro k
  have h1 : C (1048576 * k + 856315) = 3145728 * k + 2568946 := by
    unfold C
    simp [show (1048576 * k + 856315) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2568946) = 1572864 * k + 1284473 := by
    unfold C
    simp [show (3145728 * k + 2568946) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1284473) = 4718592 * k + 3853420 := by
    unfold C
    simp [show (1572864 * k + 1284473) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3853420) = 2359296 * k + 1926710 := by
    unfold C
    simp [show (4718592 * k + 3853420) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1926710) = 1179648 * k + 963355 := by
    unfold C
    simp [show (2359296 * k + 1926710) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 963355) = 3538944 * k + 2890066 := by
    unfold C
    simp [show (1179648 * k + 963355) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2890066) = 1769472 * k + 1445033 := by
    unfold C
    simp [show (3538944 * k + 2890066) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1445033) = 5308416 * k + 4335100 := by
    unfold C
    simp [show (1769472 * k + 1445033) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4335100) = 2654208 * k + 2167550 := by
    unfold C
    simp [show (5308416 * k + 4335100) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2167550) = 1327104 * k + 1083775 := by
    unfold C
    simp [show (2654208 * k + 2167550) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1083775) = 3981312 * k + 3251326 := by
    unfold C
    simp [show (1327104 * k + 1083775) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3251326) = 1990656 * k + 1625663 := by
    unfold C
    simp [show (3981312 * k + 3251326) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1625663) = 5971968 * k + 4876990 := by
    unfold C
    simp [show (1990656 * k + 1625663) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4876990) = 2985984 * k + 2438495 := by
    unfold C
    simp [show (5971968 * k + 4876990) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2438495) = 8957952 * k + 7315486 := by
    unfold C
    simp [show (2985984 * k + 2438495) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7315486) = 4478976 * k + 3657743 := by
    unfold C
    simp [show (8957952 * k + 7315486) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3657743) = 13436928 * k + 10973230 := by
    unfold C
    simp [show (4478976 * k + 3657743) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10973230) = 6718464 * k + 5486615 := by
    unfold C
    simp [show (13436928 * k + 10973230) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5486615) = 20155392 * k + 16459846 := by
    unfold C
    simp [show (6718464 * k + 5486615) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16459846) = 10077696 * k + 8229923 := by
    unfold C
    simp [show (20155392 * k + 16459846) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8229923) = 30233088 * k + 24689770 := by
    unfold C
    simp [show (10077696 * k + 8229923) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24689770) = 15116544 * k + 12344885 := by
    unfold C
    simp [show (30233088 * k + 24689770) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12344885) = 45349632 * k + 37034656 := by
    unfold C
    simp [show (15116544 * k + 12344885) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 37034656) = 22674816 * k + 18517328 := by
    unfold C
    simp [show (45349632 * k + 37034656) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18517328) = 11337408 * k + 9258664 := by
    unfold C
    simp [show (22674816 * k + 18517328) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9258664) = 5668704 * k + 4629332 := by
    unfold C
    simp [show (11337408 * k + 9258664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4629332) = 2834352 * k + 2314666 := by
    unfold C
    simp [show (5668704 * k + 4629332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2314666) = 1417176 * k + 1157333 := by
    unfold C
    simp [show (2834352 * k + 2314666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1157333) = 4251528 * k + 3472000 := by
    unfold C
    simp [show (1417176 * k + 1157333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3472000) = 2125764 * k + 1736000 := by
    unfold C
    simp [show (4251528 * k + 3472000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1736000) = 1062882 * k + 868000 := by
    unfold C
    simp [show (2125764 * k + 1736000) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 868000) = 531441 * k + 434000 := by
    unfold C
    simp [show (1062882 * k + 868000) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 856315) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 856315)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_856935 : ∀ k : Nat,
    iterate (1048576 * k + 856935) 32 = 531441 * k + 434314 ∧
      531441 * k + 434314 < 1048576 * k + 856935 := by
  intro k
  have h1 : C (1048576 * k + 856935) = 3145728 * k + 2570806 := by
    unfold C
    simp [show (1048576 * k + 856935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2570806) = 1572864 * k + 1285403 := by
    unfold C
    simp [show (3145728 * k + 2570806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1285403) = 4718592 * k + 3856210 := by
    unfold C
    simp [show (1572864 * k + 1285403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3856210) = 2359296 * k + 1928105 := by
    unfold C
    simp [show (4718592 * k + 3856210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1928105) = 7077888 * k + 5784316 := by
    unfold C
    simp [show (2359296 * k + 1928105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5784316) = 3538944 * k + 2892158 := by
    unfold C
    simp [show (7077888 * k + 5784316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2892158) = 1769472 * k + 1446079 := by
    unfold C
    simp [show (3538944 * k + 2892158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1446079) = 5308416 * k + 4338238 := by
    unfold C
    simp [show (1769472 * k + 1446079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4338238) = 2654208 * k + 2169119 := by
    unfold C
    simp [show (5308416 * k + 4338238) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2169119) = 7962624 * k + 6507358 := by
    unfold C
    simp [show (2654208 * k + 2169119) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6507358) = 3981312 * k + 3253679 := by
    unfold C
    simp [show (7962624 * k + 6507358) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3253679) = 11943936 * k + 9761038 := by
    unfold C
    simp [show (3981312 * k + 3253679) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9761038) = 5971968 * k + 4880519 := by
    unfold C
    simp [show (11943936 * k + 9761038) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4880519) = 17915904 * k + 14641558 := by
    unfold C
    simp [show (5971968 * k + 4880519) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14641558) = 8957952 * k + 7320779 := by
    unfold C
    simp [show (17915904 * k + 14641558) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7320779) = 26873856 * k + 21962338 := by
    unfold C
    simp [show (8957952 * k + 7320779) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21962338) = 13436928 * k + 10981169 := by
    unfold C
    simp [show (26873856 * k + 21962338) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10981169) = 40310784 * k + 32943508 := by
    unfold C
    simp [show (13436928 * k + 10981169) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32943508) = 20155392 * k + 16471754 := by
    unfold C
    simp [show (40310784 * k + 32943508) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16471754) = 10077696 * k + 8235877 := by
    unfold C
    simp [show (20155392 * k + 16471754) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8235877) = 30233088 * k + 24707632 := by
    unfold C
    simp [show (10077696 * k + 8235877) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24707632) = 15116544 * k + 12353816 := by
    unfold C
    simp [show (30233088 * k + 24707632) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12353816) = 7558272 * k + 6176908 := by
    unfold C
    simp [show (15116544 * k + 12353816) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6176908) = 3779136 * k + 3088454 := by
    unfold C
    simp [show (7558272 * k + 6176908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3088454) = 1889568 * k + 1544227 := by
    unfold C
    simp [show (3779136 * k + 3088454) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1544227) = 5668704 * k + 4632682 := by
    unfold C
    simp [show (1889568 * k + 1544227) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4632682) = 2834352 * k + 2316341 := by
    unfold C
    simp [show (5668704 * k + 4632682) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2316341) = 8503056 * k + 6949024 := by
    unfold C
    simp [show (2834352 * k + 2316341) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6949024) = 4251528 * k + 3474512 := by
    unfold C
    simp [show (8503056 * k + 6949024) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3474512) = 2125764 * k + 1737256 := by
    unfold C
    simp [show (4251528 * k + 3474512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1737256) = 1062882 * k + 868628 := by
    unfold C
    simp [show (2125764 * k + 1737256) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 868628) = 531441 * k + 434314 := by
    unfold C
    simp [show (1062882 * k + 868628) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 856935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 856935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_857627 : ∀ k : Nat,
    iterate (1048576 * k + 857627) 32 = 531441 * k + 434665 ∧
      531441 * k + 434665 < 1048576 * k + 857627 := by
  intro k
  have h1 : C (1048576 * k + 857627) = 3145728 * k + 2572882 := by
    unfold C
    simp [show (1048576 * k + 857627) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2572882) = 1572864 * k + 1286441 := by
    unfold C
    simp [show (3145728 * k + 2572882) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1286441) = 4718592 * k + 3859324 := by
    unfold C
    simp [show (1572864 * k + 1286441) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3859324) = 2359296 * k + 1929662 := by
    unfold C
    simp [show (4718592 * k + 3859324) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1929662) = 1179648 * k + 964831 := by
    unfold C
    simp [show (2359296 * k + 1929662) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 964831) = 3538944 * k + 2894494 := by
    unfold C
    simp [show (1179648 * k + 964831) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2894494) = 1769472 * k + 1447247 := by
    unfold C
    simp [show (3538944 * k + 2894494) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1447247) = 5308416 * k + 4341742 := by
    unfold C
    simp [show (1769472 * k + 1447247) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4341742) = 2654208 * k + 2170871 := by
    unfold C
    simp [show (5308416 * k + 4341742) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2170871) = 7962624 * k + 6512614 := by
    unfold C
    simp [show (2654208 * k + 2170871) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6512614) = 3981312 * k + 3256307 := by
    unfold C
    simp [show (7962624 * k + 6512614) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3256307) = 11943936 * k + 9768922 := by
    unfold C
    simp [show (3981312 * k + 3256307) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9768922) = 5971968 * k + 4884461 := by
    unfold C
    simp [show (11943936 * k + 9768922) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4884461) = 17915904 * k + 14653384 := by
    unfold C
    simp [show (5971968 * k + 4884461) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14653384) = 8957952 * k + 7326692 := by
    unfold C
    simp [show (17915904 * k + 14653384) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7326692) = 4478976 * k + 3663346 := by
    unfold C
    simp [show (8957952 * k + 7326692) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3663346) = 2239488 * k + 1831673 := by
    unfold C
    simp [show (4478976 * k + 3663346) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1831673) = 6718464 * k + 5495020 := by
    unfold C
    simp [show (2239488 * k + 1831673) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5495020) = 3359232 * k + 2747510 := by
    unfold C
    simp [show (6718464 * k + 5495020) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2747510) = 1679616 * k + 1373755 := by
    unfold C
    simp [show (3359232 * k + 2747510) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1373755) = 5038848 * k + 4121266 := by
    unfold C
    simp [show (1679616 * k + 1373755) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4121266) = 2519424 * k + 2060633 := by
    unfold C
    simp [show (5038848 * k + 4121266) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2060633) = 7558272 * k + 6181900 := by
    unfold C
    simp [show (2519424 * k + 2060633) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6181900) = 3779136 * k + 3090950 := by
    unfold C
    simp [show (7558272 * k + 6181900) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3090950) = 1889568 * k + 1545475 := by
    unfold C
    simp [show (3779136 * k + 3090950) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1545475) = 5668704 * k + 4636426 := by
    unfold C
    simp [show (1889568 * k + 1545475) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4636426) = 2834352 * k + 2318213 := by
    unfold C
    simp [show (5668704 * k + 4636426) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2318213) = 8503056 * k + 6954640 := by
    unfold C
    simp [show (2834352 * k + 2318213) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6954640) = 4251528 * k + 3477320 := by
    unfold C
    simp [show (8503056 * k + 6954640) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3477320) = 2125764 * k + 1738660 := by
    unfold C
    simp [show (4251528 * k + 3477320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1738660) = 1062882 * k + 869330 := by
    unfold C
    simp [show (2125764 * k + 1738660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 869330) = 531441 * k + 434665 := by
    unfold C
    simp [show (1062882 * k + 869330) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 857627) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 857627)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_857855 : ∀ k : Nat,
    iterate (1048576 * k + 857855) 32 = 531441 * k + 434780 ∧
      531441 * k + 434780 < 1048576 * k + 857855 := by
  intro k
  have h1 : C (1048576 * k + 857855) = 3145728 * k + 2573566 := by
    unfold C
    simp [show (1048576 * k + 857855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2573566) = 1572864 * k + 1286783 := by
    unfold C
    simp [show (3145728 * k + 2573566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1286783) = 4718592 * k + 3860350 := by
    unfold C
    simp [show (1572864 * k + 1286783) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3860350) = 2359296 * k + 1930175 := by
    unfold C
    simp [show (4718592 * k + 3860350) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1930175) = 7077888 * k + 5790526 := by
    unfold C
    simp [show (2359296 * k + 1930175) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5790526) = 3538944 * k + 2895263 := by
    unfold C
    simp [show (7077888 * k + 5790526) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2895263) = 10616832 * k + 8685790 := by
    unfold C
    simp [show (3538944 * k + 2895263) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8685790) = 5308416 * k + 4342895 := by
    unfold C
    simp [show (10616832 * k + 8685790) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4342895) = 15925248 * k + 13028686 := by
    unfold C
    simp [show (5308416 * k + 4342895) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13028686) = 7962624 * k + 6514343 := by
    unfold C
    simp [show (15925248 * k + 13028686) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6514343) = 23887872 * k + 19543030 := by
    unfold C
    simp [show (7962624 * k + 6514343) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19543030) = 11943936 * k + 9771515 := by
    unfold C
    simp [show (23887872 * k + 19543030) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9771515) = 35831808 * k + 29314546 := by
    unfold C
    simp [show (11943936 * k + 9771515) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29314546) = 17915904 * k + 14657273 := by
    unfold C
    simp [show (35831808 * k + 29314546) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14657273) = 53747712 * k + 43971820 := by
    unfold C
    simp [show (17915904 * k + 14657273) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 43971820) = 26873856 * k + 21985910 := by
    unfold C
    simp [show (53747712 * k + 43971820) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 21985910) = 13436928 * k + 10992955 := by
    unfold C
    simp [show (26873856 * k + 21985910) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10992955) = 40310784 * k + 32978866 := by
    unfold C
    simp [show (13436928 * k + 10992955) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32978866) = 20155392 * k + 16489433 := by
    unfold C
    simp [show (40310784 * k + 32978866) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16489433) = 60466176 * k + 49468300 := by
    unfold C
    simp [show (20155392 * k + 16489433) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 49468300) = 30233088 * k + 24734150 := by
    unfold C
    simp [show (60466176 * k + 49468300) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 24734150) = 15116544 * k + 12367075 := by
    unfold C
    simp [show (30233088 * k + 24734150) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12367075) = 45349632 * k + 37101226 := by
    unfold C
    simp [show (15116544 * k + 12367075) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 37101226) = 22674816 * k + 18550613 := by
    unfold C
    simp [show (45349632 * k + 37101226) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 18550613) = 68024448 * k + 55651840 := by
    unfold C
    simp [show (22674816 * k + 18550613) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 55651840) = 34012224 * k + 27825920 := by
    unfold C
    simp [show (68024448 * k + 55651840) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 27825920) = 17006112 * k + 13912960 := by
    unfold C
    simp [show (34012224 * k + 27825920) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13912960) = 8503056 * k + 6956480 := by
    unfold C
    simp [show (17006112 * k + 13912960) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6956480) = 4251528 * k + 3478240 := by
    unfold C
    simp [show (8503056 * k + 6956480) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3478240) = 2125764 * k + 1739120 := by
    unfold C
    simp [show (4251528 * k + 3478240) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1739120) = 1062882 * k + 869560 := by
    unfold C
    simp [show (2125764 * k + 1739120) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 869560) = 531441 * k + 434780 := by
    unfold C
    simp [show (1062882 * k + 869560) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 857855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 857855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_858079 : ∀ k : Nat,
    iterate (1048576 * k + 858079) 32 = 531441 * k + 434894 ∧
      531441 * k + 434894 < 1048576 * k + 858079 := by
  intro k
  have h1 : C (1048576 * k + 858079) = 3145728 * k + 2574238 := by
    unfold C
    simp [show (1048576 * k + 858079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2574238) = 1572864 * k + 1287119 := by
    unfold C
    simp [show (3145728 * k + 2574238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1287119) = 4718592 * k + 3861358 := by
    unfold C
    simp [show (1572864 * k + 1287119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3861358) = 2359296 * k + 1930679 := by
    unfold C
    simp [show (4718592 * k + 3861358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1930679) = 7077888 * k + 5792038 := by
    unfold C
    simp [show (2359296 * k + 1930679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5792038) = 3538944 * k + 2896019 := by
    unfold C
    simp [show (7077888 * k + 5792038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2896019) = 10616832 * k + 8688058 := by
    unfold C
    simp [show (3538944 * k + 2896019) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8688058) = 5308416 * k + 4344029 := by
    unfold C
    simp [show (10616832 * k + 8688058) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4344029) = 15925248 * k + 13032088 := by
    unfold C
    simp [show (5308416 * k + 4344029) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13032088) = 7962624 * k + 6516044 := by
    unfold C
    simp [show (15925248 * k + 13032088) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6516044) = 3981312 * k + 3258022 := by
    unfold C
    simp [show (7962624 * k + 6516044) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3258022) = 1990656 * k + 1629011 := by
    unfold C
    simp [show (3981312 * k + 3258022) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1629011) = 5971968 * k + 4887034 := by
    unfold C
    simp [show (1990656 * k + 1629011) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4887034) = 2985984 * k + 2443517 := by
    unfold C
    simp [show (5971968 * k + 4887034) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2443517) = 8957952 * k + 7330552 := by
    unfold C
    simp [show (2985984 * k + 2443517) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7330552) = 4478976 * k + 3665276 := by
    unfold C
    simp [show (8957952 * k + 7330552) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3665276) = 2239488 * k + 1832638 := by
    unfold C
    simp [show (4478976 * k + 3665276) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1832638) = 1119744 * k + 916319 := by
    unfold C
    simp [show (2239488 * k + 1832638) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 916319) = 3359232 * k + 2748958 := by
    unfold C
    simp [show (1119744 * k + 916319) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2748958) = 1679616 * k + 1374479 := by
    unfold C
    simp [show (3359232 * k + 2748958) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1374479) = 5038848 * k + 4123438 := by
    unfold C
    simp [show (1679616 * k + 1374479) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4123438) = 2519424 * k + 2061719 := by
    unfold C
    simp [show (5038848 * k + 4123438) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2061719) = 7558272 * k + 6185158 := by
    unfold C
    simp [show (2519424 * k + 2061719) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6185158) = 3779136 * k + 3092579 := by
    unfold C
    simp [show (7558272 * k + 6185158) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3092579) = 11337408 * k + 9277738 := by
    unfold C
    simp [show (3779136 * k + 3092579) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9277738) = 5668704 * k + 4638869 := by
    unfold C
    simp [show (11337408 * k + 9277738) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4638869) = 17006112 * k + 13916608 := by
    unfold C
    simp [show (5668704 * k + 4638869) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13916608) = 8503056 * k + 6958304 := by
    unfold C
    simp [show (17006112 * k + 13916608) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6958304) = 4251528 * k + 3479152 := by
    unfold C
    simp [show (8503056 * k + 6958304) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3479152) = 2125764 * k + 1739576 := by
    unfold C
    simp [show (4251528 * k + 3479152) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1739576) = 1062882 * k + 869788 := by
    unfold C
    simp [show (2125764 * k + 1739576) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 869788) = 531441 * k + 434894 := by
    unfold C
    simp [show (1062882 * k + 869788) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 858079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 858079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_858239 : ∀ k : Nat,
    iterate (1048576 * k + 858239) 32 = 531441 * k + 434975 ∧
      531441 * k + 434975 < 1048576 * k + 858239 := by
  intro k
  have h1 : C (1048576 * k + 858239) = 3145728 * k + 2574718 := by
    unfold C
    simp [show (1048576 * k + 858239) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2574718) = 1572864 * k + 1287359 := by
    unfold C
    simp [show (3145728 * k + 2574718) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1287359) = 4718592 * k + 3862078 := by
    unfold C
    simp [show (1572864 * k + 1287359) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3862078) = 2359296 * k + 1931039 := by
    unfold C
    simp [show (4718592 * k + 3862078) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1931039) = 7077888 * k + 5793118 := by
    unfold C
    simp [show (2359296 * k + 1931039) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5793118) = 3538944 * k + 2896559 := by
    unfold C
    simp [show (7077888 * k + 5793118) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2896559) = 10616832 * k + 8689678 := by
    unfold C
    simp [show (3538944 * k + 2896559) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8689678) = 5308416 * k + 4344839 := by
    unfold C
    simp [show (10616832 * k + 8689678) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4344839) = 15925248 * k + 13034518 := by
    unfold C
    simp [show (5308416 * k + 4344839) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13034518) = 7962624 * k + 6517259 := by
    unfold C
    simp [show (15925248 * k + 13034518) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6517259) = 23887872 * k + 19551778 := by
    unfold C
    simp [show (7962624 * k + 6517259) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19551778) = 11943936 * k + 9775889 := by
    unfold C
    simp [show (23887872 * k + 19551778) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9775889) = 35831808 * k + 29327668 := by
    unfold C
    simp [show (11943936 * k + 9775889) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29327668) = 17915904 * k + 14663834 := by
    unfold C
    simp [show (35831808 * k + 29327668) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14663834) = 8957952 * k + 7331917 := by
    unfold C
    simp [show (17915904 * k + 14663834) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7331917) = 26873856 * k + 21995752 := by
    unfold C
    simp [show (8957952 * k + 7331917) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21995752) = 13436928 * k + 10997876 := by
    unfold C
    simp [show (26873856 * k + 21995752) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10997876) = 6718464 * k + 5498938 := by
    unfold C
    simp [show (13436928 * k + 10997876) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5498938) = 3359232 * k + 2749469 := by
    unfold C
    simp [show (6718464 * k + 5498938) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2749469) = 10077696 * k + 8248408 := by
    unfold C
    simp [show (3359232 * k + 2749469) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8248408) = 5038848 * k + 4124204 := by
    unfold C
    simp [show (10077696 * k + 8248408) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4124204) = 2519424 * k + 2062102 := by
    unfold C
    simp [show (5038848 * k + 4124204) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2062102) = 1259712 * k + 1031051 := by
    unfold C
    simp [show (2519424 * k + 2062102) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1031051) = 3779136 * k + 3093154 := by
    unfold C
    simp [show (1259712 * k + 1031051) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3093154) = 1889568 * k + 1546577 := by
    unfold C
    simp [show (3779136 * k + 3093154) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1546577) = 5668704 * k + 4639732 := by
    unfold C
    simp [show (1889568 * k + 1546577) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4639732) = 2834352 * k + 2319866 := by
    unfold C
    simp [show (5668704 * k + 4639732) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2319866) = 1417176 * k + 1159933 := by
    unfold C
    simp [show (2834352 * k + 2319866) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1159933) = 4251528 * k + 3479800 := by
    unfold C
    simp [show (1417176 * k + 1159933) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3479800) = 2125764 * k + 1739900 := by
    unfold C
    simp [show (4251528 * k + 3479800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1739900) = 1062882 * k + 869950 := by
    unfold C
    simp [show (2125764 * k + 1739900) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 869950) = 531441 * k + 434975 := by
    unfold C
    simp [show (1062882 * k + 869950) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 858239) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 858239)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_858363 : ∀ k : Nat,
    iterate (1048576 * k + 858363) 32 = 531441 * k + 435038 ∧
      531441 * k + 435038 < 1048576 * k + 858363 := by
  intro k
  have h1 : C (1048576 * k + 858363) = 3145728 * k + 2575090 := by
    unfold C
    simp [show (1048576 * k + 858363) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2575090) = 1572864 * k + 1287545 := by
    unfold C
    simp [show (3145728 * k + 2575090) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1287545) = 4718592 * k + 3862636 := by
    unfold C
    simp [show (1572864 * k + 1287545) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3862636) = 2359296 * k + 1931318 := by
    unfold C
    simp [show (4718592 * k + 3862636) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1931318) = 1179648 * k + 965659 := by
    unfold C
    simp [show (2359296 * k + 1931318) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 965659) = 3538944 * k + 2896978 := by
    unfold C
    simp [show (1179648 * k + 965659) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2896978) = 1769472 * k + 1448489 := by
    unfold C
    simp [show (3538944 * k + 2896978) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1448489) = 5308416 * k + 4345468 := by
    unfold C
    simp [show (1769472 * k + 1448489) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4345468) = 2654208 * k + 2172734 := by
    unfold C
    simp [show (5308416 * k + 4345468) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2172734) = 1327104 * k + 1086367 := by
    unfold C
    simp [show (2654208 * k + 2172734) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1086367) = 3981312 * k + 3259102 := by
    unfold C
    simp [show (1327104 * k + 1086367) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3259102) = 1990656 * k + 1629551 := by
    unfold C
    simp [show (3981312 * k + 3259102) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1629551) = 5971968 * k + 4888654 := by
    unfold C
    simp [show (1990656 * k + 1629551) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4888654) = 2985984 * k + 2444327 := by
    unfold C
    simp [show (5971968 * k + 4888654) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2444327) = 8957952 * k + 7332982 := by
    unfold C
    simp [show (2985984 * k + 2444327) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7332982) = 4478976 * k + 3666491 := by
    unfold C
    simp [show (8957952 * k + 7332982) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3666491) = 13436928 * k + 10999474 := by
    unfold C
    simp [show (4478976 * k + 3666491) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10999474) = 6718464 * k + 5499737 := by
    unfold C
    simp [show (13436928 * k + 10999474) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5499737) = 20155392 * k + 16499212 := by
    unfold C
    simp [show (6718464 * k + 5499737) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16499212) = 10077696 * k + 8249606 := by
    unfold C
    simp [show (20155392 * k + 16499212) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8249606) = 5038848 * k + 4124803 := by
    unfold C
    simp [show (10077696 * k + 8249606) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4124803) = 15116544 * k + 12374410 := by
    unfold C
    simp [show (5038848 * k + 4124803) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12374410) = 7558272 * k + 6187205 := by
    unfold C
    simp [show (15116544 * k + 12374410) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6187205) = 22674816 * k + 18561616 := by
    unfold C
    simp [show (7558272 * k + 6187205) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18561616) = 11337408 * k + 9280808 := by
    unfold C
    simp [show (22674816 * k + 18561616) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9280808) = 5668704 * k + 4640404 := by
    unfold C
    simp [show (11337408 * k + 9280808) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4640404) = 2834352 * k + 2320202 := by
    unfold C
    simp [show (5668704 * k + 4640404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2320202) = 1417176 * k + 1160101 := by
    unfold C
    simp [show (2834352 * k + 2320202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1160101) = 4251528 * k + 3480304 := by
    unfold C
    simp [show (1417176 * k + 1160101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3480304) = 2125764 * k + 1740152 := by
    unfold C
    simp [show (4251528 * k + 3480304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1740152) = 1062882 * k + 870076 := by
    unfold C
    simp [show (2125764 * k + 1740152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 870076) = 531441 * k + 435038 := by
    unfold C
    simp [show (1062882 * k + 870076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 858363) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 858363)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_858831 : ∀ k : Nat,
    iterate (1048576 * k + 858831) 32 = 531441 * k + 435275 ∧
      531441 * k + 435275 < 1048576 * k + 858831 := by
  intro k
  have h1 : C (1048576 * k + 858831) = 3145728 * k + 2576494 := by
    unfold C
    simp [show (1048576 * k + 858831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2576494) = 1572864 * k + 1288247 := by
    unfold C
    simp [show (3145728 * k + 2576494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1288247) = 4718592 * k + 3864742 := by
    unfold C
    simp [show (1572864 * k + 1288247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3864742) = 2359296 * k + 1932371 := by
    unfold C
    simp [show (4718592 * k + 3864742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1932371) = 7077888 * k + 5797114 := by
    unfold C
    simp [show (2359296 * k + 1932371) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5797114) = 3538944 * k + 2898557 := by
    unfold C
    simp [show (7077888 * k + 5797114) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2898557) = 10616832 * k + 8695672 := by
    unfold C
    simp [show (3538944 * k + 2898557) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8695672) = 5308416 * k + 4347836 := by
    unfold C
    simp [show (10616832 * k + 8695672) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4347836) = 2654208 * k + 2173918 := by
    unfold C
    simp [show (5308416 * k + 4347836) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2173918) = 1327104 * k + 1086959 := by
    unfold C
    simp [show (2654208 * k + 2173918) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1086959) = 3981312 * k + 3260878 := by
    unfold C
    simp [show (1327104 * k + 1086959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3260878) = 1990656 * k + 1630439 := by
    unfold C
    simp [show (3981312 * k + 3260878) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1630439) = 5971968 * k + 4891318 := by
    unfold C
    simp [show (1990656 * k + 1630439) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4891318) = 2985984 * k + 2445659 := by
    unfold C
    simp [show (5971968 * k + 4891318) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2445659) = 8957952 * k + 7336978 := by
    unfold C
    simp [show (2985984 * k + 2445659) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7336978) = 4478976 * k + 3668489 := by
    unfold C
    simp [show (8957952 * k + 7336978) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3668489) = 13436928 * k + 11005468 := by
    unfold C
    simp [show (4478976 * k + 3668489) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11005468) = 6718464 * k + 5502734 := by
    unfold C
    simp [show (13436928 * k + 11005468) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5502734) = 3359232 * k + 2751367 := by
    unfold C
    simp [show (6718464 * k + 5502734) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2751367) = 10077696 * k + 8254102 := by
    unfold C
    simp [show (3359232 * k + 2751367) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8254102) = 5038848 * k + 4127051 := by
    unfold C
    simp [show (10077696 * k + 8254102) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4127051) = 15116544 * k + 12381154 := by
    unfold C
    simp [show (5038848 * k + 4127051) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12381154) = 7558272 * k + 6190577 := by
    unfold C
    simp [show (15116544 * k + 12381154) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6190577) = 22674816 * k + 18571732 := by
    unfold C
    simp [show (7558272 * k + 6190577) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18571732) = 11337408 * k + 9285866 := by
    unfold C
    simp [show (22674816 * k + 18571732) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9285866) = 5668704 * k + 4642933 := by
    unfold C
    simp [show (11337408 * k + 9285866) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4642933) = 17006112 * k + 13928800 := by
    unfold C
    simp [show (5668704 * k + 4642933) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13928800) = 8503056 * k + 6964400 := by
    unfold C
    simp [show (17006112 * k + 13928800) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6964400) = 4251528 * k + 3482200 := by
    unfold C
    simp [show (8503056 * k + 6964400) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3482200) = 2125764 * k + 1741100 := by
    unfold C
    simp [show (4251528 * k + 3482200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1741100) = 1062882 * k + 870550 := by
    unfold C
    simp [show (2125764 * k + 1741100) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 870550) = 531441 * k + 435275 := by
    unfold C
    simp [show (1062882 * k + 870550) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 858831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 858831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_859007 : ∀ k : Nat,
    iterate (1048576 * k + 859007) 32 = 531441 * k + 435364 ∧
      531441 * k + 435364 < 1048576 * k + 859007 := by
  intro k
  have h1 : C (1048576 * k + 859007) = 3145728 * k + 2577022 := by
    unfold C
    simp [show (1048576 * k + 859007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2577022) = 1572864 * k + 1288511 := by
    unfold C
    simp [show (3145728 * k + 2577022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1288511) = 4718592 * k + 3865534 := by
    unfold C
    simp [show (1572864 * k + 1288511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3865534) = 2359296 * k + 1932767 := by
    unfold C
    simp [show (4718592 * k + 3865534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1932767) = 7077888 * k + 5798302 := by
    unfold C
    simp [show (2359296 * k + 1932767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5798302) = 3538944 * k + 2899151 := by
    unfold C
    simp [show (7077888 * k + 5798302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2899151) = 10616832 * k + 8697454 := by
    unfold C
    simp [show (3538944 * k + 2899151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8697454) = 5308416 * k + 4348727 := by
    unfold C
    simp [show (10616832 * k + 8697454) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4348727) = 15925248 * k + 13046182 := by
    unfold C
    simp [show (5308416 * k + 4348727) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 13046182) = 7962624 * k + 6523091 := by
    unfold C
    simp [show (15925248 * k + 13046182) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6523091) = 23887872 * k + 19569274 := by
    unfold C
    simp [show (7962624 * k + 6523091) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19569274) = 11943936 * k + 9784637 := by
    unfold C
    simp [show (23887872 * k + 19569274) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9784637) = 35831808 * k + 29353912 := by
    unfold C
    simp [show (11943936 * k + 9784637) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 29353912) = 17915904 * k + 14676956 := by
    unfold C
    simp [show (35831808 * k + 29353912) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14676956) = 8957952 * k + 7338478 := by
    unfold C
    simp [show (17915904 * k + 14676956) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7338478) = 4478976 * k + 3669239 := by
    unfold C
    simp [show (8957952 * k + 7338478) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3669239) = 13436928 * k + 11007718 := by
    unfold C
    simp [show (4478976 * k + 3669239) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11007718) = 6718464 * k + 5503859 := by
    unfold C
    simp [show (13436928 * k + 11007718) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5503859) = 20155392 * k + 16511578 := by
    unfold C
    simp [show (6718464 * k + 5503859) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16511578) = 10077696 * k + 8255789 := by
    unfold C
    simp [show (20155392 * k + 16511578) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8255789) = 30233088 * k + 24767368 := by
    unfold C
    simp [show (10077696 * k + 8255789) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24767368) = 15116544 * k + 12383684 := by
    unfold C
    simp [show (30233088 * k + 24767368) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12383684) = 7558272 * k + 6191842 := by
    unfold C
    simp [show (15116544 * k + 12383684) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6191842) = 3779136 * k + 3095921 := by
    unfold C
    simp [show (7558272 * k + 6191842) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3095921) = 11337408 * k + 9287764 := by
    unfold C
    simp [show (3779136 * k + 3095921) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9287764) = 5668704 * k + 4643882 := by
    unfold C
    simp [show (11337408 * k + 9287764) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4643882) = 2834352 * k + 2321941 := by
    unfold C
    simp [show (5668704 * k + 4643882) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2321941) = 8503056 * k + 6965824 := by
    unfold C
    simp [show (2834352 * k + 2321941) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6965824) = 4251528 * k + 3482912 := by
    unfold C
    simp [show (8503056 * k + 6965824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3482912) = 2125764 * k + 1741456 := by
    unfold C
    simp [show (4251528 * k + 3482912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1741456) = 1062882 * k + 870728 := by
    unfold C
    simp [show (2125764 * k + 1741456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 870728) = 531441 * k + 435364 := by
    unfold C
    simp [show (1062882 * k + 870728) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 859007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 859007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard109
