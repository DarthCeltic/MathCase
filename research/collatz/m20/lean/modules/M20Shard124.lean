import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard124

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_975071 : ∀ k : Nat,
    iterate (1048576 * k + 975071) 32 = 531441 * k + 494188 ∧
      531441 * k + 494188 < 1048576 * k + 975071 := by
  intro k
  have h1 : C (1048576 * k + 975071) = 3145728 * k + 2925214 := by
    unfold C
    simp [show (1048576 * k + 975071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2925214) = 1572864 * k + 1462607 := by
    unfold C
    simp [show (3145728 * k + 2925214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1462607) = 4718592 * k + 4387822 := by
    unfold C
    simp [show (1572864 * k + 1462607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4387822) = 2359296 * k + 2193911 := by
    unfold C
    simp [show (4718592 * k + 4387822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2193911) = 7077888 * k + 6581734 := by
    unfold C
    simp [show (2359296 * k + 2193911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6581734) = 3538944 * k + 3290867 := by
    unfold C
    simp [show (7077888 * k + 6581734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3290867) = 10616832 * k + 9872602 := by
    unfold C
    simp [show (3538944 * k + 3290867) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9872602) = 5308416 * k + 4936301 := by
    unfold C
    simp [show (10616832 * k + 9872602) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4936301) = 15925248 * k + 14808904 := by
    unfold C
    simp [show (5308416 * k + 4936301) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14808904) = 7962624 * k + 7404452 := by
    unfold C
    simp [show (15925248 * k + 14808904) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7404452) = 3981312 * k + 3702226 := by
    unfold C
    simp [show (7962624 * k + 7404452) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3702226) = 1990656 * k + 1851113 := by
    unfold C
    simp [show (3981312 * k + 3702226) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1851113) = 5971968 * k + 5553340 := by
    unfold C
    simp [show (1990656 * k + 1851113) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5553340) = 2985984 * k + 2776670 := by
    unfold C
    simp [show (5971968 * k + 5553340) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2776670) = 1492992 * k + 1388335 := by
    unfold C
    simp [show (2985984 * k + 2776670) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1388335) = 4478976 * k + 4165006 := by
    unfold C
    simp [show (1492992 * k + 1388335) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4165006) = 2239488 * k + 2082503 := by
    unfold C
    simp [show (4478976 * k + 4165006) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2082503) = 6718464 * k + 6247510 := by
    unfold C
    simp [show (2239488 * k + 2082503) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6247510) = 3359232 * k + 3123755 := by
    unfold C
    simp [show (6718464 * k + 6247510) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3123755) = 10077696 * k + 9371266 := by
    unfold C
    simp [show (3359232 * k + 3123755) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9371266) = 5038848 * k + 4685633 := by
    unfold C
    simp [show (10077696 * k + 9371266) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4685633) = 15116544 * k + 14056900 := by
    unfold C
    simp [show (5038848 * k + 4685633) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14056900) = 7558272 * k + 7028450 := by
    unfold C
    simp [show (15116544 * k + 14056900) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7028450) = 3779136 * k + 3514225 := by
    unfold C
    simp [show (7558272 * k + 7028450) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3514225) = 11337408 * k + 10542676 := by
    unfold C
    simp [show (3779136 * k + 3514225) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10542676) = 5668704 * k + 5271338 := by
    unfold C
    simp [show (11337408 * k + 10542676) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5271338) = 2834352 * k + 2635669 := by
    unfold C
    simp [show (5668704 * k + 5271338) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2635669) = 8503056 * k + 7907008 := by
    unfold C
    simp [show (2834352 * k + 2635669) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7907008) = 4251528 * k + 3953504 := by
    unfold C
    simp [show (8503056 * k + 7907008) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3953504) = 2125764 * k + 1976752 := by
    unfold C
    simp [show (4251528 * k + 3953504) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1976752) = 1062882 * k + 988376 := by
    unfold C
    simp [show (2125764 * k + 1976752) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 988376) = 531441 * k + 494188 := by
    unfold C
    simp [show (1062882 * k + 988376) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 975071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 975071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_975515 : ∀ k : Nat,
    iterate (1048576 * k + 975515) 32 = 531441 * k + 494413 ∧
      531441 * k + 494413 < 1048576 * k + 975515 := by
  intro k
  have h1 : C (1048576 * k + 975515) = 3145728 * k + 2926546 := by
    unfold C
    simp [show (1048576 * k + 975515) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2926546) = 1572864 * k + 1463273 := by
    unfold C
    simp [show (3145728 * k + 2926546) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1463273) = 4718592 * k + 4389820 := by
    unfold C
    simp [show (1572864 * k + 1463273) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4389820) = 2359296 * k + 2194910 := by
    unfold C
    simp [show (4718592 * k + 4389820) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2194910) = 1179648 * k + 1097455 := by
    unfold C
    simp [show (2359296 * k + 2194910) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1097455) = 3538944 * k + 3292366 := by
    unfold C
    simp [show (1179648 * k + 1097455) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3292366) = 1769472 * k + 1646183 := by
    unfold C
    simp [show (3538944 * k + 3292366) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1646183) = 5308416 * k + 4938550 := by
    unfold C
    simp [show (1769472 * k + 1646183) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4938550) = 2654208 * k + 2469275 := by
    unfold C
    simp [show (5308416 * k + 4938550) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2469275) = 7962624 * k + 7407826 := by
    unfold C
    simp [show (2654208 * k + 2469275) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7407826) = 3981312 * k + 3703913 := by
    unfold C
    simp [show (7962624 * k + 7407826) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3703913) = 11943936 * k + 11111740 := by
    unfold C
    simp [show (3981312 * k + 3703913) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11111740) = 5971968 * k + 5555870 := by
    unfold C
    simp [show (11943936 * k + 11111740) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5555870) = 2985984 * k + 2777935 := by
    unfold C
    simp [show (5971968 * k + 5555870) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2777935) = 8957952 * k + 8333806 := by
    unfold C
    simp [show (2985984 * k + 2777935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8333806) = 4478976 * k + 4166903 := by
    unfold C
    simp [show (8957952 * k + 8333806) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4166903) = 13436928 * k + 12500710 := by
    unfold C
    simp [show (4478976 * k + 4166903) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12500710) = 6718464 * k + 6250355 := by
    unfold C
    simp [show (13436928 * k + 12500710) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6250355) = 20155392 * k + 18751066 := by
    unfold C
    simp [show (6718464 * k + 6250355) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18751066) = 10077696 * k + 9375533 := by
    unfold C
    simp [show (20155392 * k + 18751066) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9375533) = 30233088 * k + 28126600 := by
    unfold C
    simp [show (10077696 * k + 9375533) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28126600) = 15116544 * k + 14063300 := by
    unfold C
    simp [show (30233088 * k + 28126600) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14063300) = 7558272 * k + 7031650 := by
    unfold C
    simp [show (15116544 * k + 14063300) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7031650) = 3779136 * k + 3515825 := by
    unfold C
    simp [show (7558272 * k + 7031650) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3515825) = 11337408 * k + 10547476 := by
    unfold C
    simp [show (3779136 * k + 3515825) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10547476) = 5668704 * k + 5273738 := by
    unfold C
    simp [show (11337408 * k + 10547476) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5273738) = 2834352 * k + 2636869 := by
    unfold C
    simp [show (5668704 * k + 5273738) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2636869) = 8503056 * k + 7910608 := by
    unfold C
    simp [show (2834352 * k + 2636869) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7910608) = 4251528 * k + 3955304 := by
    unfold C
    simp [show (8503056 * k + 7910608) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3955304) = 2125764 * k + 1977652 := by
    unfold C
    simp [show (4251528 * k + 3955304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1977652) = 1062882 * k + 988826 := by
    unfold C
    simp [show (2125764 * k + 1977652) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 988826) = 531441 * k + 494413 := by
    unfold C
    simp [show (1062882 * k + 988826) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 975515) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 975515)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_975551 : ∀ k : Nat,
    iterate (1048576 * k + 975551) 32 = 531441 * k + 494431 ∧
      531441 * k + 494431 < 1048576 * k + 975551 := by
  intro k
  have h1 : C (1048576 * k + 975551) = 3145728 * k + 2926654 := by
    unfold C
    simp [show (1048576 * k + 975551) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2926654) = 1572864 * k + 1463327 := by
    unfold C
    simp [show (3145728 * k + 2926654) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1463327) = 4718592 * k + 4389982 := by
    unfold C
    simp [show (1572864 * k + 1463327) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4389982) = 2359296 * k + 2194991 := by
    unfold C
    simp [show (4718592 * k + 4389982) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2194991) = 7077888 * k + 6584974 := by
    unfold C
    simp [show (2359296 * k + 2194991) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6584974) = 3538944 * k + 3292487 := by
    unfold C
    simp [show (7077888 * k + 6584974) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3292487) = 10616832 * k + 9877462 := by
    unfold C
    simp [show (3538944 * k + 3292487) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9877462) = 5308416 * k + 4938731 := by
    unfold C
    simp [show (10616832 * k + 9877462) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4938731) = 15925248 * k + 14816194 := by
    unfold C
    simp [show (5308416 * k + 4938731) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14816194) = 7962624 * k + 7408097 := by
    unfold C
    simp [show (15925248 * k + 14816194) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7408097) = 23887872 * k + 22224292 := by
    unfold C
    simp [show (7962624 * k + 7408097) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22224292) = 11943936 * k + 11112146 := by
    unfold C
    simp [show (23887872 * k + 22224292) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11112146) = 5971968 * k + 5556073 := by
    unfold C
    simp [show (11943936 * k + 11112146) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5556073) = 17915904 * k + 16668220 := by
    unfold C
    simp [show (5971968 * k + 5556073) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16668220) = 8957952 * k + 8334110 := by
    unfold C
    simp [show (17915904 * k + 16668220) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8334110) = 4478976 * k + 4167055 := by
    unfold C
    simp [show (8957952 * k + 8334110) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4167055) = 13436928 * k + 12501166 := by
    unfold C
    simp [show (4478976 * k + 4167055) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12501166) = 6718464 * k + 6250583 := by
    unfold C
    simp [show (13436928 * k + 12501166) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6250583) = 20155392 * k + 18751750 := by
    unfold C
    simp [show (6718464 * k + 6250583) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18751750) = 10077696 * k + 9375875 := by
    unfold C
    simp [show (20155392 * k + 18751750) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9375875) = 30233088 * k + 28127626 := by
    unfold C
    simp [show (10077696 * k + 9375875) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28127626) = 15116544 * k + 14063813 := by
    unfold C
    simp [show (30233088 * k + 28127626) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14063813) = 45349632 * k + 42191440 := by
    unfold C
    simp [show (15116544 * k + 14063813) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 42191440) = 22674816 * k + 21095720 := by
    unfold C
    simp [show (45349632 * k + 42191440) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21095720) = 11337408 * k + 10547860 := by
    unfold C
    simp [show (22674816 * k + 21095720) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10547860) = 5668704 * k + 5273930 := by
    unfold C
    simp [show (11337408 * k + 10547860) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5273930) = 2834352 * k + 2636965 := by
    unfold C
    simp [show (5668704 * k + 5273930) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2636965) = 8503056 * k + 7910896 := by
    unfold C
    simp [show (2834352 * k + 2636965) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7910896) = 4251528 * k + 3955448 := by
    unfold C
    simp [show (8503056 * k + 7910896) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3955448) = 2125764 * k + 1977724 := by
    unfold C
    simp [show (4251528 * k + 3955448) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1977724) = 1062882 * k + 988862 := by
    unfold C
    simp [show (2125764 * k + 1977724) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 988862) = 531441 * k + 494431 := by
    unfold C
    simp [show (1062882 * k + 988862) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 975551) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 975551)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_975611 : ∀ k : Nat,
    iterate (1048576 * k + 975611) 32 = 531441 * k + 494462 ∧
      531441 * k + 494462 < 1048576 * k + 975611 := by
  intro k
  have h1 : C (1048576 * k + 975611) = 3145728 * k + 2926834 := by
    unfold C
    simp [show (1048576 * k + 975611) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2926834) = 1572864 * k + 1463417 := by
    unfold C
    simp [show (3145728 * k + 2926834) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1463417) = 4718592 * k + 4390252 := by
    unfold C
    simp [show (1572864 * k + 1463417) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4390252) = 2359296 * k + 2195126 := by
    unfold C
    simp [show (4718592 * k + 4390252) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2195126) = 1179648 * k + 1097563 := by
    unfold C
    simp [show (2359296 * k + 2195126) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1097563) = 3538944 * k + 3292690 := by
    unfold C
    simp [show (1179648 * k + 1097563) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3292690) = 1769472 * k + 1646345 := by
    unfold C
    simp [show (3538944 * k + 3292690) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1646345) = 5308416 * k + 4939036 := by
    unfold C
    simp [show (1769472 * k + 1646345) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4939036) = 2654208 * k + 2469518 := by
    unfold C
    simp [show (5308416 * k + 4939036) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2469518) = 1327104 * k + 1234759 := by
    unfold C
    simp [show (2654208 * k + 2469518) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1234759) = 3981312 * k + 3704278 := by
    unfold C
    simp [show (1327104 * k + 1234759) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3704278) = 1990656 * k + 1852139 := by
    unfold C
    simp [show (3981312 * k + 3704278) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1852139) = 5971968 * k + 5556418 := by
    unfold C
    simp [show (1990656 * k + 1852139) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5556418) = 2985984 * k + 2778209 := by
    unfold C
    simp [show (5971968 * k + 5556418) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2778209) = 8957952 * k + 8334628 := by
    unfold C
    simp [show (2985984 * k + 2778209) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8334628) = 4478976 * k + 4167314 := by
    unfold C
    simp [show (8957952 * k + 8334628) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4167314) = 2239488 * k + 2083657 := by
    unfold C
    simp [show (4478976 * k + 4167314) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2083657) = 6718464 * k + 6250972 := by
    unfold C
    simp [show (2239488 * k + 2083657) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6250972) = 3359232 * k + 3125486 := by
    unfold C
    simp [show (6718464 * k + 6250972) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3125486) = 1679616 * k + 1562743 := by
    unfold C
    simp [show (3359232 * k + 3125486) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1562743) = 5038848 * k + 4688230 := by
    unfold C
    simp [show (1679616 * k + 1562743) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4688230) = 2519424 * k + 2344115 := by
    unfold C
    simp [show (5038848 * k + 4688230) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2344115) = 7558272 * k + 7032346 := by
    unfold C
    simp [show (2519424 * k + 2344115) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7032346) = 3779136 * k + 3516173 := by
    unfold C
    simp [show (7558272 * k + 7032346) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3516173) = 11337408 * k + 10548520 := by
    unfold C
    simp [show (3779136 * k + 3516173) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10548520) = 5668704 * k + 5274260 := by
    unfold C
    simp [show (11337408 * k + 10548520) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5274260) = 2834352 * k + 2637130 := by
    unfold C
    simp [show (5668704 * k + 5274260) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2637130) = 1417176 * k + 1318565 := by
    unfold C
    simp [show (2834352 * k + 2637130) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1318565) = 4251528 * k + 3955696 := by
    unfold C
    simp [show (1417176 * k + 1318565) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3955696) = 2125764 * k + 1977848 := by
    unfold C
    simp [show (4251528 * k + 3955696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1977848) = 1062882 * k + 988924 := by
    unfold C
    simp [show (2125764 * k + 1977848) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 988924) = 531441 * k + 494462 := by
    unfold C
    simp [show (1062882 * k + 988924) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 975611) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 975611)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_976127 : ∀ k : Nat,
    iterate (1048576 * k + 976127) 32 = 531441 * k + 494723 ∧
      531441 * k + 494723 < 1048576 * k + 976127 := by
  intro k
  have h1 : C (1048576 * k + 976127) = 3145728 * k + 2928382 := by
    unfold C
    simp [show (1048576 * k + 976127) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2928382) = 1572864 * k + 1464191 := by
    unfold C
    simp [show (3145728 * k + 2928382) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1464191) = 4718592 * k + 4392574 := by
    unfold C
    simp [show (1572864 * k + 1464191) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4392574) = 2359296 * k + 2196287 := by
    unfold C
    simp [show (4718592 * k + 4392574) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2196287) = 7077888 * k + 6588862 := by
    unfold C
    simp [show (2359296 * k + 2196287) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6588862) = 3538944 * k + 3294431 := by
    unfold C
    simp [show (7077888 * k + 6588862) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3294431) = 10616832 * k + 9883294 := by
    unfold C
    simp [show (3538944 * k + 3294431) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9883294) = 5308416 * k + 4941647 := by
    unfold C
    simp [show (10616832 * k + 9883294) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4941647) = 15925248 * k + 14824942 := by
    unfold C
    simp [show (5308416 * k + 4941647) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14824942) = 7962624 * k + 7412471 := by
    unfold C
    simp [show (15925248 * k + 14824942) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7412471) = 23887872 * k + 22237414 := by
    unfold C
    simp [show (7962624 * k + 7412471) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22237414) = 11943936 * k + 11118707 := by
    unfold C
    simp [show (23887872 * k + 22237414) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11118707) = 35831808 * k + 33356122 := by
    unfold C
    simp [show (11943936 * k + 11118707) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33356122) = 17915904 * k + 16678061 := by
    unfold C
    simp [show (35831808 * k + 33356122) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16678061) = 53747712 * k + 50034184 := by
    unfold C
    simp [show (17915904 * k + 16678061) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 50034184) = 26873856 * k + 25017092 := by
    unfold C
    simp [show (53747712 * k + 50034184) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25017092) = 13436928 * k + 12508546 := by
    unfold C
    simp [show (26873856 * k + 25017092) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12508546) = 6718464 * k + 6254273 := by
    unfold C
    simp [show (13436928 * k + 12508546) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6254273) = 20155392 * k + 18762820 := by
    unfold C
    simp [show (6718464 * k + 6254273) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18762820) = 10077696 * k + 9381410 := by
    unfold C
    simp [show (20155392 * k + 18762820) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9381410) = 5038848 * k + 4690705 := by
    unfold C
    simp [show (10077696 * k + 9381410) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4690705) = 15116544 * k + 14072116 := by
    unfold C
    simp [show (5038848 * k + 4690705) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14072116) = 7558272 * k + 7036058 := by
    unfold C
    simp [show (15116544 * k + 14072116) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7036058) = 3779136 * k + 3518029 := by
    unfold C
    simp [show (7558272 * k + 7036058) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3518029) = 11337408 * k + 10554088 := by
    unfold C
    simp [show (3779136 * k + 3518029) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10554088) = 5668704 * k + 5277044 := by
    unfold C
    simp [show (11337408 * k + 10554088) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5277044) = 2834352 * k + 2638522 := by
    unfold C
    simp [show (5668704 * k + 5277044) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2638522) = 1417176 * k + 1319261 := by
    unfold C
    simp [show (2834352 * k + 2638522) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1319261) = 4251528 * k + 3957784 := by
    unfold C
    simp [show (1417176 * k + 1319261) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3957784) = 2125764 * k + 1978892 := by
    unfold C
    simp [show (4251528 * k + 3957784) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1978892) = 1062882 * k + 989446 := by
    unfold C
    simp [show (2125764 * k + 1978892) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 989446) = 531441 * k + 494723 := by
    unfold C
    simp [show (1062882 * k + 989446) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 976127) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 976127)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_977007 : ∀ k : Nat,
    iterate (1048576 * k + 977007) 32 = 531441 * k + 495169 ∧
      531441 * k + 495169 < 1048576 * k + 977007 := by
  intro k
  have h1 : C (1048576 * k + 977007) = 3145728 * k + 2931022 := by
    unfold C
    simp [show (1048576 * k + 977007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2931022) = 1572864 * k + 1465511 := by
    unfold C
    simp [show (3145728 * k + 2931022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1465511) = 4718592 * k + 4396534 := by
    unfold C
    simp [show (1572864 * k + 1465511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4396534) = 2359296 * k + 2198267 := by
    unfold C
    simp [show (4718592 * k + 4396534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2198267) = 7077888 * k + 6594802 := by
    unfold C
    simp [show (2359296 * k + 2198267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6594802) = 3538944 * k + 3297401 := by
    unfold C
    simp [show (7077888 * k + 6594802) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3297401) = 10616832 * k + 9892204 := by
    unfold C
    simp [show (3538944 * k + 3297401) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9892204) = 5308416 * k + 4946102 := by
    unfold C
    simp [show (10616832 * k + 9892204) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4946102) = 2654208 * k + 2473051 := by
    unfold C
    simp [show (5308416 * k + 4946102) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2473051) = 7962624 * k + 7419154 := by
    unfold C
    simp [show (2654208 * k + 2473051) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7419154) = 3981312 * k + 3709577 := by
    unfold C
    simp [show (7962624 * k + 7419154) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3709577) = 11943936 * k + 11128732 := by
    unfold C
    simp [show (3981312 * k + 3709577) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11128732) = 5971968 * k + 5564366 := by
    unfold C
    simp [show (11943936 * k + 11128732) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5564366) = 2985984 * k + 2782183 := by
    unfold C
    simp [show (5971968 * k + 5564366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2782183) = 8957952 * k + 8346550 := by
    unfold C
    simp [show (2985984 * k + 2782183) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8346550) = 4478976 * k + 4173275 := by
    unfold C
    simp [show (8957952 * k + 8346550) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4173275) = 13436928 * k + 12519826 := by
    unfold C
    simp [show (4478976 * k + 4173275) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12519826) = 6718464 * k + 6259913 := by
    unfold C
    simp [show (13436928 * k + 12519826) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6259913) = 20155392 * k + 18779740 := by
    unfold C
    simp [show (6718464 * k + 6259913) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18779740) = 10077696 * k + 9389870 := by
    unfold C
    simp [show (20155392 * k + 18779740) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9389870) = 5038848 * k + 4694935 := by
    unfold C
    simp [show (10077696 * k + 9389870) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4694935) = 15116544 * k + 14084806 := by
    unfold C
    simp [show (5038848 * k + 4694935) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14084806) = 7558272 * k + 7042403 := by
    unfold C
    simp [show (15116544 * k + 14084806) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7042403) = 22674816 * k + 21127210 := by
    unfold C
    simp [show (7558272 * k + 7042403) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21127210) = 11337408 * k + 10563605 := by
    unfold C
    simp [show (22674816 * k + 21127210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10563605) = 34012224 * k + 31690816 := by
    unfold C
    simp [show (11337408 * k + 10563605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 31690816) = 17006112 * k + 15845408 := by
    unfold C
    simp [show (34012224 * k + 31690816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15845408) = 8503056 * k + 7922704 := by
    unfold C
    simp [show (17006112 * k + 15845408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7922704) = 4251528 * k + 3961352 := by
    unfold C
    simp [show (8503056 * k + 7922704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3961352) = 2125764 * k + 1980676 := by
    unfold C
    simp [show (4251528 * k + 3961352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1980676) = 1062882 * k + 990338 := by
    unfold C
    simp [show (2125764 * k + 1980676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 990338) = 531441 * k + 495169 := by
    unfold C
    simp [show (1062882 * k + 990338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 977007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 977007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_977103 : ∀ k : Nat,
    iterate (1048576 * k + 977103) 32 = 531441 * k + 495218 ∧
      531441 * k + 495218 < 1048576 * k + 977103 := by
  intro k
  have h1 : C (1048576 * k + 977103) = 3145728 * k + 2931310 := by
    unfold C
    simp [show (1048576 * k + 977103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2931310) = 1572864 * k + 1465655 := by
    unfold C
    simp [show (3145728 * k + 2931310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1465655) = 4718592 * k + 4396966 := by
    unfold C
    simp [show (1572864 * k + 1465655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4396966) = 2359296 * k + 2198483 := by
    unfold C
    simp [show (4718592 * k + 4396966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2198483) = 7077888 * k + 6595450 := by
    unfold C
    simp [show (2359296 * k + 2198483) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6595450) = 3538944 * k + 3297725 := by
    unfold C
    simp [show (7077888 * k + 6595450) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3297725) = 10616832 * k + 9893176 := by
    unfold C
    simp [show (3538944 * k + 3297725) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9893176) = 5308416 * k + 4946588 := by
    unfold C
    simp [show (10616832 * k + 9893176) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4946588) = 2654208 * k + 2473294 := by
    unfold C
    simp [show (5308416 * k + 4946588) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2473294) = 1327104 * k + 1236647 := by
    unfold C
    simp [show (2654208 * k + 2473294) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1236647) = 3981312 * k + 3709942 := by
    unfold C
    simp [show (1327104 * k + 1236647) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3709942) = 1990656 * k + 1854971 := by
    unfold C
    simp [show (3981312 * k + 3709942) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1854971) = 5971968 * k + 5564914 := by
    unfold C
    simp [show (1990656 * k + 1854971) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5564914) = 2985984 * k + 2782457 := by
    unfold C
    simp [show (5971968 * k + 5564914) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2782457) = 8957952 * k + 8347372 := by
    unfold C
    simp [show (2985984 * k + 2782457) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8347372) = 4478976 * k + 4173686 := by
    unfold C
    simp [show (8957952 * k + 8347372) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4173686) = 2239488 * k + 2086843 := by
    unfold C
    simp [show (4478976 * k + 4173686) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2086843) = 6718464 * k + 6260530 := by
    unfold C
    simp [show (2239488 * k + 2086843) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6260530) = 3359232 * k + 3130265 := by
    unfold C
    simp [show (6718464 * k + 6260530) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3130265) = 10077696 * k + 9390796 := by
    unfold C
    simp [show (3359232 * k + 3130265) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9390796) = 5038848 * k + 4695398 := by
    unfold C
    simp [show (10077696 * k + 9390796) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4695398) = 2519424 * k + 2347699 := by
    unfold C
    simp [show (5038848 * k + 4695398) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2347699) = 7558272 * k + 7043098 := by
    unfold C
    simp [show (2519424 * k + 2347699) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7043098) = 3779136 * k + 3521549 := by
    unfold C
    simp [show (7558272 * k + 7043098) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3521549) = 11337408 * k + 10564648 := by
    unfold C
    simp [show (3779136 * k + 3521549) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10564648) = 5668704 * k + 5282324 := by
    unfold C
    simp [show (11337408 * k + 10564648) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5282324) = 2834352 * k + 2641162 := by
    unfold C
    simp [show (5668704 * k + 5282324) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2641162) = 1417176 * k + 1320581 := by
    unfold C
    simp [show (2834352 * k + 2641162) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1320581) = 4251528 * k + 3961744 := by
    unfold C
    simp [show (1417176 * k + 1320581) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3961744) = 2125764 * k + 1980872 := by
    unfold C
    simp [show (4251528 * k + 3961744) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1980872) = 1062882 * k + 990436 := by
    unfold C
    simp [show (2125764 * k + 1980872) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 990436) = 531441 * k + 495218 := by
    unfold C
    simp [show (1062882 * k + 990436) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 977103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 977103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_977599 : ∀ k : Nat,
    iterate (1048576 * k + 977599) 32 = 531441 * k + 495469 ∧
      531441 * k + 495469 < 1048576 * k + 977599 := by
  intro k
  have h1 : C (1048576 * k + 977599) = 3145728 * k + 2932798 := by
    unfold C
    simp [show (1048576 * k + 977599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2932798) = 1572864 * k + 1466399 := by
    unfold C
    simp [show (3145728 * k + 2932798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1466399) = 4718592 * k + 4399198 := by
    unfold C
    simp [show (1572864 * k + 1466399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4399198) = 2359296 * k + 2199599 := by
    unfold C
    simp [show (4718592 * k + 4399198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2199599) = 7077888 * k + 6598798 := by
    unfold C
    simp [show (2359296 * k + 2199599) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6598798) = 3538944 * k + 3299399 := by
    unfold C
    simp [show (7077888 * k + 6598798) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3299399) = 10616832 * k + 9898198 := by
    unfold C
    simp [show (3538944 * k + 3299399) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9898198) = 5308416 * k + 4949099 := by
    unfold C
    simp [show (10616832 * k + 9898198) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4949099) = 15925248 * k + 14847298 := by
    unfold C
    simp [show (5308416 * k + 4949099) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14847298) = 7962624 * k + 7423649 := by
    unfold C
    simp [show (15925248 * k + 14847298) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7423649) = 23887872 * k + 22270948 := by
    unfold C
    simp [show (7962624 * k + 7423649) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22270948) = 11943936 * k + 11135474 := by
    unfold C
    simp [show (23887872 * k + 22270948) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11135474) = 5971968 * k + 5567737 := by
    unfold C
    simp [show (11943936 * k + 11135474) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5567737) = 17915904 * k + 16703212 := by
    unfold C
    simp [show (5971968 * k + 5567737) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16703212) = 8957952 * k + 8351606 := by
    unfold C
    simp [show (17915904 * k + 16703212) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8351606) = 4478976 * k + 4175803 := by
    unfold C
    simp [show (8957952 * k + 8351606) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4175803) = 13436928 * k + 12527410 := by
    unfold C
    simp [show (4478976 * k + 4175803) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12527410) = 6718464 * k + 6263705 := by
    unfold C
    simp [show (13436928 * k + 12527410) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6263705) = 20155392 * k + 18791116 := by
    unfold C
    simp [show (6718464 * k + 6263705) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18791116) = 10077696 * k + 9395558 := by
    unfold C
    simp [show (20155392 * k + 18791116) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9395558) = 5038848 * k + 4697779 := by
    unfold C
    simp [show (10077696 * k + 9395558) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4697779) = 15116544 * k + 14093338 := by
    unfold C
    simp [show (5038848 * k + 4697779) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14093338) = 7558272 * k + 7046669 := by
    unfold C
    simp [show (15116544 * k + 14093338) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7046669) = 22674816 * k + 21140008 := by
    unfold C
    simp [show (7558272 * k + 7046669) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21140008) = 11337408 * k + 10570004 := by
    unfold C
    simp [show (22674816 * k + 21140008) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10570004) = 5668704 * k + 5285002 := by
    unfold C
    simp [show (11337408 * k + 10570004) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5285002) = 2834352 * k + 2642501 := by
    unfold C
    simp [show (5668704 * k + 5285002) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2642501) = 8503056 * k + 7927504 := by
    unfold C
    simp [show (2834352 * k + 2642501) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7927504) = 4251528 * k + 3963752 := by
    unfold C
    simp [show (8503056 * k + 7927504) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3963752) = 2125764 * k + 1981876 := by
    unfold C
    simp [show (4251528 * k + 3963752) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1981876) = 1062882 * k + 990938 := by
    unfold C
    simp [show (2125764 * k + 1981876) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 990938) = 531441 * k + 495469 := by
    unfold C
    simp [show (1062882 * k + 990938) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 977599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 977599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_977695 : ∀ k : Nat,
    iterate (1048576 * k + 977695) 32 = 531441 * k + 495518 ∧
      531441 * k + 495518 < 1048576 * k + 977695 := by
  intro k
  have h1 : C (1048576 * k + 977695) = 3145728 * k + 2933086 := by
    unfold C
    simp [show (1048576 * k + 977695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2933086) = 1572864 * k + 1466543 := by
    unfold C
    simp [show (3145728 * k + 2933086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1466543) = 4718592 * k + 4399630 := by
    unfold C
    simp [show (1572864 * k + 1466543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4399630) = 2359296 * k + 2199815 := by
    unfold C
    simp [show (4718592 * k + 4399630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2199815) = 7077888 * k + 6599446 := by
    unfold C
    simp [show (2359296 * k + 2199815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6599446) = 3538944 * k + 3299723 := by
    unfold C
    simp [show (7077888 * k + 6599446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3299723) = 10616832 * k + 9899170 := by
    unfold C
    simp [show (3538944 * k + 3299723) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9899170) = 5308416 * k + 4949585 := by
    unfold C
    simp [show (10616832 * k + 9899170) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4949585) = 15925248 * k + 14848756 := by
    unfold C
    simp [show (5308416 * k + 4949585) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14848756) = 7962624 * k + 7424378 := by
    unfold C
    simp [show (15925248 * k + 14848756) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7424378) = 3981312 * k + 3712189 := by
    unfold C
    simp [show (7962624 * k + 7424378) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3712189) = 11943936 * k + 11136568 := by
    unfold C
    simp [show (3981312 * k + 3712189) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11136568) = 5971968 * k + 5568284 := by
    unfold C
    simp [show (11943936 * k + 11136568) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5568284) = 2985984 * k + 2784142 := by
    unfold C
    simp [show (5971968 * k + 5568284) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2784142) = 1492992 * k + 1392071 := by
    unfold C
    simp [show (2985984 * k + 2784142) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1392071) = 4478976 * k + 4176214 := by
    unfold C
    simp [show (1492992 * k + 1392071) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4176214) = 2239488 * k + 2088107 := by
    unfold C
    simp [show (4478976 * k + 4176214) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2088107) = 6718464 * k + 6264322 := by
    unfold C
    simp [show (2239488 * k + 2088107) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6264322) = 3359232 * k + 3132161 := by
    unfold C
    simp [show (6718464 * k + 6264322) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3132161) = 10077696 * k + 9396484 := by
    unfold C
    simp [show (3359232 * k + 3132161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9396484) = 5038848 * k + 4698242 := by
    unfold C
    simp [show (10077696 * k + 9396484) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4698242) = 2519424 * k + 2349121 := by
    unfold C
    simp [show (5038848 * k + 4698242) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2349121) = 7558272 * k + 7047364 := by
    unfold C
    simp [show (2519424 * k + 2349121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7047364) = 3779136 * k + 3523682 := by
    unfold C
    simp [show (7558272 * k + 7047364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3523682) = 1889568 * k + 1761841 := by
    unfold C
    simp [show (3779136 * k + 3523682) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1761841) = 5668704 * k + 5285524 := by
    unfold C
    simp [show (1889568 * k + 1761841) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5285524) = 2834352 * k + 2642762 := by
    unfold C
    simp [show (5668704 * k + 5285524) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2642762) = 1417176 * k + 1321381 := by
    unfold C
    simp [show (2834352 * k + 2642762) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1321381) = 4251528 * k + 3964144 := by
    unfold C
    simp [show (1417176 * k + 1321381) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3964144) = 2125764 * k + 1982072 := by
    unfold C
    simp [show (4251528 * k + 3964144) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1982072) = 1062882 * k + 991036 := by
    unfold C
    simp [show (2125764 * k + 1982072) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 991036) = 531441 * k + 495518 := by
    unfold C
    simp [show (1062882 * k + 991036) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 977695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 977695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_978175 : ∀ k : Nat,
    iterate (1048576 * k + 978175) 32 = 531441 * k + 495761 ∧
      531441 * k + 495761 < 1048576 * k + 978175 := by
  intro k
  have h1 : C (1048576 * k + 978175) = 3145728 * k + 2934526 := by
    unfold C
    simp [show (1048576 * k + 978175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2934526) = 1572864 * k + 1467263 := by
    unfold C
    simp [show (3145728 * k + 2934526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1467263) = 4718592 * k + 4401790 := by
    unfold C
    simp [show (1572864 * k + 1467263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4401790) = 2359296 * k + 2200895 := by
    unfold C
    simp [show (4718592 * k + 4401790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2200895) = 7077888 * k + 6602686 := by
    unfold C
    simp [show (2359296 * k + 2200895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6602686) = 3538944 * k + 3301343 := by
    unfold C
    simp [show (7077888 * k + 6602686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3301343) = 10616832 * k + 9904030 := by
    unfold C
    simp [show (3538944 * k + 3301343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9904030) = 5308416 * k + 4952015 := by
    unfold C
    simp [show (10616832 * k + 9904030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4952015) = 15925248 * k + 14856046 := by
    unfold C
    simp [show (5308416 * k + 4952015) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14856046) = 7962624 * k + 7428023 := by
    unfold C
    simp [show (15925248 * k + 14856046) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7428023) = 23887872 * k + 22284070 := by
    unfold C
    simp [show (7962624 * k + 7428023) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22284070) = 11943936 * k + 11142035 := by
    unfold C
    simp [show (23887872 * k + 22284070) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11142035) = 35831808 * k + 33426106 := by
    unfold C
    simp [show (11943936 * k + 11142035) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33426106) = 17915904 * k + 16713053 := by
    unfold C
    simp [show (35831808 * k + 33426106) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16713053) = 53747712 * k + 50139160 := by
    unfold C
    simp [show (17915904 * k + 16713053) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 50139160) = 26873856 * k + 25069580 := by
    unfold C
    simp [show (53747712 * k + 50139160) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25069580) = 13436928 * k + 12534790 := by
    unfold C
    simp [show (26873856 * k + 25069580) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12534790) = 6718464 * k + 6267395 := by
    unfold C
    simp [show (13436928 * k + 12534790) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6267395) = 20155392 * k + 18802186 := by
    unfold C
    simp [show (6718464 * k + 6267395) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18802186) = 10077696 * k + 9401093 := by
    unfold C
    simp [show (20155392 * k + 18802186) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9401093) = 30233088 * k + 28203280 := by
    unfold C
    simp [show (10077696 * k + 9401093) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28203280) = 15116544 * k + 14101640 := by
    unfold C
    simp [show (30233088 * k + 28203280) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14101640) = 7558272 * k + 7050820 := by
    unfold C
    simp [show (15116544 * k + 14101640) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7050820) = 3779136 * k + 3525410 := by
    unfold C
    simp [show (7558272 * k + 7050820) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3525410) = 1889568 * k + 1762705 := by
    unfold C
    simp [show (3779136 * k + 3525410) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1762705) = 5668704 * k + 5288116 := by
    unfold C
    simp [show (1889568 * k + 1762705) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5288116) = 2834352 * k + 2644058 := by
    unfold C
    simp [show (5668704 * k + 5288116) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2644058) = 1417176 * k + 1322029 := by
    unfold C
    simp [show (2834352 * k + 2644058) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1322029) = 4251528 * k + 3966088 := by
    unfold C
    simp [show (1417176 * k + 1322029) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3966088) = 2125764 * k + 1983044 := by
    unfold C
    simp [show (4251528 * k + 3966088) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1983044) = 1062882 * k + 991522 := by
    unfold C
    simp [show (2125764 * k + 1983044) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 991522) = 531441 * k + 495761 := by
    unfold C
    simp [show (1062882 * k + 991522) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 978175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 978175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_978587 : ∀ k : Nat,
    iterate (1048576 * k + 978587) 32 = 531441 * k + 495970 ∧
      531441 * k + 495970 < 1048576 * k + 978587 := by
  intro k
  have h1 : C (1048576 * k + 978587) = 3145728 * k + 2935762 := by
    unfold C
    simp [show (1048576 * k + 978587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2935762) = 1572864 * k + 1467881 := by
    unfold C
    simp [show (3145728 * k + 2935762) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1467881) = 4718592 * k + 4403644 := by
    unfold C
    simp [show (1572864 * k + 1467881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4403644) = 2359296 * k + 2201822 := by
    unfold C
    simp [show (4718592 * k + 4403644) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2201822) = 1179648 * k + 1100911 := by
    unfold C
    simp [show (2359296 * k + 2201822) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1100911) = 3538944 * k + 3302734 := by
    unfold C
    simp [show (1179648 * k + 1100911) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3302734) = 1769472 * k + 1651367 := by
    unfold C
    simp [show (3538944 * k + 3302734) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1651367) = 5308416 * k + 4954102 := by
    unfold C
    simp [show (1769472 * k + 1651367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4954102) = 2654208 * k + 2477051 := by
    unfold C
    simp [show (5308416 * k + 4954102) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2477051) = 7962624 * k + 7431154 := by
    unfold C
    simp [show (2654208 * k + 2477051) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7431154) = 3981312 * k + 3715577 := by
    unfold C
    simp [show (7962624 * k + 7431154) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3715577) = 11943936 * k + 11146732 := by
    unfold C
    simp [show (3981312 * k + 3715577) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11146732) = 5971968 * k + 5573366 := by
    unfold C
    simp [show (11943936 * k + 11146732) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5573366) = 2985984 * k + 2786683 := by
    unfold C
    simp [show (5971968 * k + 5573366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2786683) = 8957952 * k + 8360050 := by
    unfold C
    simp [show (2985984 * k + 2786683) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8360050) = 4478976 * k + 4180025 := by
    unfold C
    simp [show (8957952 * k + 8360050) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4180025) = 13436928 * k + 12540076 := by
    unfold C
    simp [show (4478976 * k + 4180025) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12540076) = 6718464 * k + 6270038 := by
    unfold C
    simp [show (13436928 * k + 12540076) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6270038) = 3359232 * k + 3135019 := by
    unfold C
    simp [show (6718464 * k + 6270038) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3135019) = 10077696 * k + 9405058 := by
    unfold C
    simp [show (3359232 * k + 3135019) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9405058) = 5038848 * k + 4702529 := by
    unfold C
    simp [show (10077696 * k + 9405058) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4702529) = 15116544 * k + 14107588 := by
    unfold C
    simp [show (5038848 * k + 4702529) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14107588) = 7558272 * k + 7053794 := by
    unfold C
    simp [show (15116544 * k + 14107588) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7053794) = 3779136 * k + 3526897 := by
    unfold C
    simp [show (7558272 * k + 7053794) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3526897) = 11337408 * k + 10580692 := by
    unfold C
    simp [show (3779136 * k + 3526897) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10580692) = 5668704 * k + 5290346 := by
    unfold C
    simp [show (11337408 * k + 10580692) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5290346) = 2834352 * k + 2645173 := by
    unfold C
    simp [show (5668704 * k + 5290346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2645173) = 8503056 * k + 7935520 := by
    unfold C
    simp [show (2834352 * k + 2645173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7935520) = 4251528 * k + 3967760 := by
    unfold C
    simp [show (8503056 * k + 7935520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3967760) = 2125764 * k + 1983880 := by
    unfold C
    simp [show (4251528 * k + 3967760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1983880) = 1062882 * k + 991940 := by
    unfold C
    simp [show (2125764 * k + 1983880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 991940) = 531441 * k + 495970 := by
    unfold C
    simp [show (1062882 * k + 991940) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 978587) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 978587)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_979015 : ∀ k : Nat,
    iterate (1048576 * k + 979015) 32 = 531441 * k + 496187 ∧
      531441 * k + 496187 < 1048576 * k + 979015 := by
  intro k
  have h1 : C (1048576 * k + 979015) = 3145728 * k + 2937046 := by
    unfold C
    simp [show (1048576 * k + 979015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2937046) = 1572864 * k + 1468523 := by
    unfold C
    simp [show (3145728 * k + 2937046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1468523) = 4718592 * k + 4405570 := by
    unfold C
    simp [show (1572864 * k + 1468523) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4405570) = 2359296 * k + 2202785 := by
    unfold C
    simp [show (4718592 * k + 4405570) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2202785) = 7077888 * k + 6608356 := by
    unfold C
    simp [show (2359296 * k + 2202785) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6608356) = 3538944 * k + 3304178 := by
    unfold C
    simp [show (7077888 * k + 6608356) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3304178) = 1769472 * k + 1652089 := by
    unfold C
    simp [show (3538944 * k + 3304178) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1652089) = 5308416 * k + 4956268 := by
    unfold C
    simp [show (1769472 * k + 1652089) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4956268) = 2654208 * k + 2478134 := by
    unfold C
    simp [show (5308416 * k + 4956268) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2478134) = 1327104 * k + 1239067 := by
    unfold C
    simp [show (2654208 * k + 2478134) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1239067) = 3981312 * k + 3717202 := by
    unfold C
    simp [show (1327104 * k + 1239067) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3717202) = 1990656 * k + 1858601 := by
    unfold C
    simp [show (3981312 * k + 3717202) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1858601) = 5971968 * k + 5575804 := by
    unfold C
    simp [show (1990656 * k + 1858601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5575804) = 2985984 * k + 2787902 := by
    unfold C
    simp [show (5971968 * k + 5575804) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2787902) = 1492992 * k + 1393951 := by
    unfold C
    simp [show (2985984 * k + 2787902) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1393951) = 4478976 * k + 4181854 := by
    unfold C
    simp [show (1492992 * k + 1393951) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4181854) = 2239488 * k + 2090927 := by
    unfold C
    simp [show (4478976 * k + 4181854) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2090927) = 6718464 * k + 6272782 := by
    unfold C
    simp [show (2239488 * k + 2090927) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6272782) = 3359232 * k + 3136391 := by
    unfold C
    simp [show (6718464 * k + 6272782) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3136391) = 10077696 * k + 9409174 := by
    unfold C
    simp [show (3359232 * k + 3136391) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9409174) = 5038848 * k + 4704587 := by
    unfold C
    simp [show (10077696 * k + 9409174) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4704587) = 15116544 * k + 14113762 := by
    unfold C
    simp [show (5038848 * k + 4704587) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14113762) = 7558272 * k + 7056881 := by
    unfold C
    simp [show (15116544 * k + 14113762) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7056881) = 22674816 * k + 21170644 := by
    unfold C
    simp [show (7558272 * k + 7056881) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21170644) = 11337408 * k + 10585322 := by
    unfold C
    simp [show (22674816 * k + 21170644) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10585322) = 5668704 * k + 5292661 := by
    unfold C
    simp [show (11337408 * k + 10585322) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5292661) = 17006112 * k + 15877984 := by
    unfold C
    simp [show (5668704 * k + 5292661) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15877984) = 8503056 * k + 7938992 := by
    unfold C
    simp [show (17006112 * k + 15877984) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7938992) = 4251528 * k + 3969496 := by
    unfold C
    simp [show (8503056 * k + 7938992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3969496) = 2125764 * k + 1984748 := by
    unfold C
    simp [show (4251528 * k + 3969496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1984748) = 1062882 * k + 992374 := by
    unfold C
    simp [show (2125764 * k + 1984748) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 992374) = 531441 * k + 496187 := by
    unfold C
    simp [show (1062882 * k + 992374) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 979015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 979015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_979055 : ∀ k : Nat,
    iterate (1048576 * k + 979055) 32 = 531441 * k + 496207 ∧
      531441 * k + 496207 < 1048576 * k + 979055 := by
  intro k
  have h1 : C (1048576 * k + 979055) = 3145728 * k + 2937166 := by
    unfold C
    simp [show (1048576 * k + 979055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2937166) = 1572864 * k + 1468583 := by
    unfold C
    simp [show (3145728 * k + 2937166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1468583) = 4718592 * k + 4405750 := by
    unfold C
    simp [show (1572864 * k + 1468583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4405750) = 2359296 * k + 2202875 := by
    unfold C
    simp [show (4718592 * k + 4405750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2202875) = 7077888 * k + 6608626 := by
    unfold C
    simp [show (2359296 * k + 2202875) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6608626) = 3538944 * k + 3304313 := by
    unfold C
    simp [show (7077888 * k + 6608626) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3304313) = 10616832 * k + 9912940 := by
    unfold C
    simp [show (3538944 * k + 3304313) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9912940) = 5308416 * k + 4956470 := by
    unfold C
    simp [show (10616832 * k + 9912940) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4956470) = 2654208 * k + 2478235 := by
    unfold C
    simp [show (5308416 * k + 4956470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2478235) = 7962624 * k + 7434706 := by
    unfold C
    simp [show (2654208 * k + 2478235) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7434706) = 3981312 * k + 3717353 := by
    unfold C
    simp [show (7962624 * k + 7434706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3717353) = 11943936 * k + 11152060 := by
    unfold C
    simp [show (3981312 * k + 3717353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11152060) = 5971968 * k + 5576030 := by
    unfold C
    simp [show (11943936 * k + 11152060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5576030) = 2985984 * k + 2788015 := by
    unfold C
    simp [show (5971968 * k + 5576030) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2788015) = 8957952 * k + 8364046 := by
    unfold C
    simp [show (2985984 * k + 2788015) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8364046) = 4478976 * k + 4182023 := by
    unfold C
    simp [show (8957952 * k + 8364046) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4182023) = 13436928 * k + 12546070 := by
    unfold C
    simp [show (4478976 * k + 4182023) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12546070) = 6718464 * k + 6273035 := by
    unfold C
    simp [show (13436928 * k + 12546070) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6273035) = 20155392 * k + 18819106 := by
    unfold C
    simp [show (6718464 * k + 6273035) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18819106) = 10077696 * k + 9409553 := by
    unfold C
    simp [show (20155392 * k + 18819106) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9409553) = 30233088 * k + 28228660 := by
    unfold C
    simp [show (10077696 * k + 9409553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28228660) = 15116544 * k + 14114330 := by
    unfold C
    simp [show (30233088 * k + 28228660) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14114330) = 7558272 * k + 7057165 := by
    unfold C
    simp [show (15116544 * k + 14114330) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7057165) = 22674816 * k + 21171496 := by
    unfold C
    simp [show (7558272 * k + 7057165) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21171496) = 11337408 * k + 10585748 := by
    unfold C
    simp [show (22674816 * k + 21171496) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10585748) = 5668704 * k + 5292874 := by
    unfold C
    simp [show (11337408 * k + 10585748) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5292874) = 2834352 * k + 2646437 := by
    unfold C
    simp [show (5668704 * k + 5292874) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2646437) = 8503056 * k + 7939312 := by
    unfold C
    simp [show (2834352 * k + 2646437) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7939312) = 4251528 * k + 3969656 := by
    unfold C
    simp [show (8503056 * k + 7939312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3969656) = 2125764 * k + 1984828 := by
    unfold C
    simp [show (4251528 * k + 3969656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1984828) = 1062882 * k + 992414 := by
    unfold C
    simp [show (2125764 * k + 1984828) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 992414) = 531441 * k + 496207 := by
    unfold C
    simp [show (1062882 * k + 992414) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 979055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 979055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_979967 : ∀ k : Nat,
    iterate (1048576 * k + 979967) 32 = 531441 * k + 496669 ∧
      531441 * k + 496669 < 1048576 * k + 979967 := by
  intro k
  have h1 : C (1048576 * k + 979967) = 3145728 * k + 2939902 := by
    unfold C
    simp [show (1048576 * k + 979967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2939902) = 1572864 * k + 1469951 := by
    unfold C
    simp [show (3145728 * k + 2939902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1469951) = 4718592 * k + 4409854 := by
    unfold C
    simp [show (1572864 * k + 1469951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4409854) = 2359296 * k + 2204927 := by
    unfold C
    simp [show (4718592 * k + 4409854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2204927) = 7077888 * k + 6614782 := by
    unfold C
    simp [show (2359296 * k + 2204927) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6614782) = 3538944 * k + 3307391 := by
    unfold C
    simp [show (7077888 * k + 6614782) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3307391) = 10616832 * k + 9922174 := by
    unfold C
    simp [show (3538944 * k + 3307391) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9922174) = 5308416 * k + 4961087 := by
    unfold C
    simp [show (10616832 * k + 9922174) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4961087) = 15925248 * k + 14883262 := by
    unfold C
    simp [show (5308416 * k + 4961087) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14883262) = 7962624 * k + 7441631 := by
    unfold C
    simp [show (15925248 * k + 14883262) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7441631) = 23887872 * k + 22324894 := by
    unfold C
    simp [show (7962624 * k + 7441631) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22324894) = 11943936 * k + 11162447 := by
    unfold C
    simp [show (23887872 * k + 22324894) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11162447) = 35831808 * k + 33487342 := by
    unfold C
    simp [show (11943936 * k + 11162447) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33487342) = 17915904 * k + 16743671 := by
    unfold C
    simp [show (35831808 * k + 33487342) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16743671) = 53747712 * k + 50231014 := by
    unfold C
    simp [show (17915904 * k + 16743671) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 50231014) = 26873856 * k + 25115507 := by
    unfold C
    simp [show (53747712 * k + 50231014) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25115507) = 80621568 * k + 75346522 := by
    unfold C
    simp [show (26873856 * k + 25115507) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 75346522) = 40310784 * k + 37673261 := by
    unfold C
    simp [show (80621568 * k + 75346522) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 37673261) = 120932352 * k + 113019784 := by
    unfold C
    simp [show (40310784 * k + 37673261) % 2 ≠ 0 by omega]
    omega
  have h20 : C (120932352 * k + 113019784) = 60466176 * k + 56509892 := by
    unfold C
    simp [show (120932352 * k + 113019784) % 2 = 0 by omega]
    omega
  have h21 : C (60466176 * k + 56509892) = 30233088 * k + 28254946 := by
    unfold C
    simp [show (60466176 * k + 56509892) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28254946) = 15116544 * k + 14127473 := by
    unfold C
    simp [show (30233088 * k + 28254946) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14127473) = 45349632 * k + 42382420 := by
    unfold C
    simp [show (15116544 * k + 14127473) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 42382420) = 22674816 * k + 21191210 := by
    unfold C
    simp [show (45349632 * k + 42382420) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21191210) = 11337408 * k + 10595605 := by
    unfold C
    simp [show (22674816 * k + 21191210) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10595605) = 34012224 * k + 31786816 := by
    unfold C
    simp [show (11337408 * k + 10595605) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 31786816) = 17006112 * k + 15893408 := by
    unfold C
    simp [show (34012224 * k + 31786816) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 15893408) = 8503056 * k + 7946704 := by
    unfold C
    simp [show (17006112 * k + 15893408) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7946704) = 4251528 * k + 3973352 := by
    unfold C
    simp [show (8503056 * k + 7946704) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3973352) = 2125764 * k + 1986676 := by
    unfold C
    simp [show (4251528 * k + 3973352) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1986676) = 1062882 * k + 993338 := by
    unfold C
    simp [show (2125764 * k + 1986676) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 993338) = 531441 * k + 496669 := by
    unfold C
    simp [show (1062882 * k + 993338) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 979967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 979967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_980199 : ∀ k : Nat,
    iterate (1048576 * k + 980199) 32 = 531441 * k + 496787 ∧
      531441 * k + 496787 < 1048576 * k + 980199 := by
  intro k
  have h1 : C (1048576 * k + 980199) = 3145728 * k + 2940598 := by
    unfold C
    simp [show (1048576 * k + 980199) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2940598) = 1572864 * k + 1470299 := by
    unfold C
    simp [show (3145728 * k + 2940598) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1470299) = 4718592 * k + 4410898 := by
    unfold C
    simp [show (1572864 * k + 1470299) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4410898) = 2359296 * k + 2205449 := by
    unfold C
    simp [show (4718592 * k + 4410898) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2205449) = 7077888 * k + 6616348 := by
    unfold C
    simp [show (2359296 * k + 2205449) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6616348) = 3538944 * k + 3308174 := by
    unfold C
    simp [show (7077888 * k + 6616348) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3308174) = 1769472 * k + 1654087 := by
    unfold C
    simp [show (3538944 * k + 3308174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1654087) = 5308416 * k + 4962262 := by
    unfold C
    simp [show (1769472 * k + 1654087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4962262) = 2654208 * k + 2481131 := by
    unfold C
    simp [show (5308416 * k + 4962262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2481131) = 7962624 * k + 7443394 := by
    unfold C
    simp [show (2654208 * k + 2481131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7443394) = 3981312 * k + 3721697 := by
    unfold C
    simp [show (7962624 * k + 7443394) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3721697) = 11943936 * k + 11165092 := by
    unfold C
    simp [show (3981312 * k + 3721697) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11165092) = 5971968 * k + 5582546 := by
    unfold C
    simp [show (11943936 * k + 11165092) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5582546) = 2985984 * k + 2791273 := by
    unfold C
    simp [show (5971968 * k + 5582546) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2791273) = 8957952 * k + 8373820 := by
    unfold C
    simp [show (2985984 * k + 2791273) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8373820) = 4478976 * k + 4186910 := by
    unfold C
    simp [show (8957952 * k + 8373820) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4186910) = 2239488 * k + 2093455 := by
    unfold C
    simp [show (4478976 * k + 4186910) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2093455) = 6718464 * k + 6280366 := by
    unfold C
    simp [show (2239488 * k + 2093455) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6280366) = 3359232 * k + 3140183 := by
    unfold C
    simp [show (6718464 * k + 6280366) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3140183) = 10077696 * k + 9420550 := by
    unfold C
    simp [show (3359232 * k + 3140183) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9420550) = 5038848 * k + 4710275 := by
    unfold C
    simp [show (10077696 * k + 9420550) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4710275) = 15116544 * k + 14130826 := by
    unfold C
    simp [show (5038848 * k + 4710275) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14130826) = 7558272 * k + 7065413 := by
    unfold C
    simp [show (15116544 * k + 14130826) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7065413) = 22674816 * k + 21196240 := by
    unfold C
    simp [show (7558272 * k + 7065413) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21196240) = 11337408 * k + 10598120 := by
    unfold C
    simp [show (22674816 * k + 21196240) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10598120) = 5668704 * k + 5299060 := by
    unfold C
    simp [show (11337408 * k + 10598120) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5299060) = 2834352 * k + 2649530 := by
    unfold C
    simp [show (5668704 * k + 5299060) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2649530) = 1417176 * k + 1324765 := by
    unfold C
    simp [show (2834352 * k + 2649530) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1324765) = 4251528 * k + 3974296 := by
    unfold C
    simp [show (1417176 * k + 1324765) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3974296) = 2125764 * k + 1987148 := by
    unfold C
    simp [show (4251528 * k + 3974296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1987148) = 1062882 * k + 993574 := by
    unfold C
    simp [show (2125764 * k + 1987148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 993574) = 531441 * k + 496787 := by
    unfold C
    simp [show (1062882 * k + 993574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 980199) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 980199)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_980351 : ∀ k : Nat,
    iterate (1048576 * k + 980351) 32 = 531441 * k + 496864 ∧
      531441 * k + 496864 < 1048576 * k + 980351 := by
  intro k
  have h1 : C (1048576 * k + 980351) = 3145728 * k + 2941054 := by
    unfold C
    simp [show (1048576 * k + 980351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2941054) = 1572864 * k + 1470527 := by
    unfold C
    simp [show (3145728 * k + 2941054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1470527) = 4718592 * k + 4411582 := by
    unfold C
    simp [show (1572864 * k + 1470527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4411582) = 2359296 * k + 2205791 := by
    unfold C
    simp [show (4718592 * k + 4411582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2205791) = 7077888 * k + 6617374 := by
    unfold C
    simp [show (2359296 * k + 2205791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6617374) = 3538944 * k + 3308687 := by
    unfold C
    simp [show (7077888 * k + 6617374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3308687) = 10616832 * k + 9926062 := by
    unfold C
    simp [show (3538944 * k + 3308687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9926062) = 5308416 * k + 4963031 := by
    unfold C
    simp [show (10616832 * k + 9926062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4963031) = 15925248 * k + 14889094 := by
    unfold C
    simp [show (5308416 * k + 4963031) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14889094) = 7962624 * k + 7444547 := by
    unfold C
    simp [show (15925248 * k + 14889094) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7444547) = 23887872 * k + 22333642 := by
    unfold C
    simp [show (7962624 * k + 7444547) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22333642) = 11943936 * k + 11166821 := by
    unfold C
    simp [show (23887872 * k + 22333642) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11166821) = 35831808 * k + 33500464 := by
    unfold C
    simp [show (11943936 * k + 11166821) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33500464) = 17915904 * k + 16750232 := by
    unfold C
    simp [show (35831808 * k + 33500464) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16750232) = 8957952 * k + 8375116 := by
    unfold C
    simp [show (17915904 * k + 16750232) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8375116) = 4478976 * k + 4187558 := by
    unfold C
    simp [show (8957952 * k + 8375116) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4187558) = 2239488 * k + 2093779 := by
    unfold C
    simp [show (4478976 * k + 4187558) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2093779) = 6718464 * k + 6281338 := by
    unfold C
    simp [show (2239488 * k + 2093779) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6281338) = 3359232 * k + 3140669 := by
    unfold C
    simp [show (6718464 * k + 6281338) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3140669) = 10077696 * k + 9422008 := by
    unfold C
    simp [show (3359232 * k + 3140669) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9422008) = 5038848 * k + 4711004 := by
    unfold C
    simp [show (10077696 * k + 9422008) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4711004) = 2519424 * k + 2355502 := by
    unfold C
    simp [show (5038848 * k + 4711004) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2355502) = 1259712 * k + 1177751 := by
    unfold C
    simp [show (2519424 * k + 2355502) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1177751) = 3779136 * k + 3533254 := by
    unfold C
    simp [show (1259712 * k + 1177751) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3533254) = 1889568 * k + 1766627 := by
    unfold C
    simp [show (3779136 * k + 3533254) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1766627) = 5668704 * k + 5299882 := by
    unfold C
    simp [show (1889568 * k + 1766627) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5299882) = 2834352 * k + 2649941 := by
    unfold C
    simp [show (5668704 * k + 5299882) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2649941) = 8503056 * k + 7949824 := by
    unfold C
    simp [show (2834352 * k + 2649941) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7949824) = 4251528 * k + 3974912 := by
    unfold C
    simp [show (8503056 * k + 7949824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3974912) = 2125764 * k + 1987456 := by
    unfold C
    simp [show (4251528 * k + 3974912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1987456) = 1062882 * k + 993728 := by
    unfold C
    simp [show (2125764 * k + 1987456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 993728) = 531441 * k + 496864 := by
    unfold C
    simp [show (1062882 * k + 993728) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 980351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 980351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_980927 : ∀ k : Nat,
    iterate (1048576 * k + 980927) 32 = 531441 * k + 497156 ∧
      531441 * k + 497156 < 1048576 * k + 980927 := by
  intro k
  have h1 : C (1048576 * k + 980927) = 3145728 * k + 2942782 := by
    unfold C
    simp [show (1048576 * k + 980927) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2942782) = 1572864 * k + 1471391 := by
    unfold C
    simp [show (3145728 * k + 2942782) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1471391) = 4718592 * k + 4414174 := by
    unfold C
    simp [show (1572864 * k + 1471391) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4414174) = 2359296 * k + 2207087 := by
    unfold C
    simp [show (4718592 * k + 4414174) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2207087) = 7077888 * k + 6621262 := by
    unfold C
    simp [show (2359296 * k + 2207087) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6621262) = 3538944 * k + 3310631 := by
    unfold C
    simp [show (7077888 * k + 6621262) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3310631) = 10616832 * k + 9931894 := by
    unfold C
    simp [show (3538944 * k + 3310631) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9931894) = 5308416 * k + 4965947 := by
    unfold C
    simp [show (10616832 * k + 9931894) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4965947) = 15925248 * k + 14897842 := by
    unfold C
    simp [show (5308416 * k + 4965947) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14897842) = 7962624 * k + 7448921 := by
    unfold C
    simp [show (15925248 * k + 14897842) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7448921) = 23887872 * k + 22346764 := by
    unfold C
    simp [show (7962624 * k + 7448921) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22346764) = 11943936 * k + 11173382 := by
    unfold C
    simp [show (23887872 * k + 22346764) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11173382) = 5971968 * k + 5586691 := by
    unfold C
    simp [show (11943936 * k + 11173382) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5586691) = 17915904 * k + 16760074 := by
    unfold C
    simp [show (5971968 * k + 5586691) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16760074) = 8957952 * k + 8380037 := by
    unfold C
    simp [show (17915904 * k + 16760074) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8380037) = 26873856 * k + 25140112 := by
    unfold C
    simp [show (8957952 * k + 8380037) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25140112) = 13436928 * k + 12570056 := by
    unfold C
    simp [show (26873856 * k + 25140112) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12570056) = 6718464 * k + 6285028 := by
    unfold C
    simp [show (13436928 * k + 12570056) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6285028) = 3359232 * k + 3142514 := by
    unfold C
    simp [show (6718464 * k + 6285028) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3142514) = 1679616 * k + 1571257 := by
    unfold C
    simp [show (3359232 * k + 3142514) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1571257) = 5038848 * k + 4713772 := by
    unfold C
    simp [show (1679616 * k + 1571257) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4713772) = 2519424 * k + 2356886 := by
    unfold C
    simp [show (5038848 * k + 4713772) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2356886) = 1259712 * k + 1178443 := by
    unfold C
    simp [show (2519424 * k + 2356886) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1178443) = 3779136 * k + 3535330 := by
    unfold C
    simp [show (1259712 * k + 1178443) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3535330) = 1889568 * k + 1767665 := by
    unfold C
    simp [show (3779136 * k + 3535330) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1767665) = 5668704 * k + 5302996 := by
    unfold C
    simp [show (1889568 * k + 1767665) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5302996) = 2834352 * k + 2651498 := by
    unfold C
    simp [show (5668704 * k + 5302996) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2651498) = 1417176 * k + 1325749 := by
    unfold C
    simp [show (2834352 * k + 2651498) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1325749) = 4251528 * k + 3977248 := by
    unfold C
    simp [show (1417176 * k + 1325749) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3977248) = 2125764 * k + 1988624 := by
    unfold C
    simp [show (4251528 * k + 3977248) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1988624) = 1062882 * k + 994312 := by
    unfold C
    simp [show (2125764 * k + 1988624) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 994312) = 531441 * k + 497156 := by
    unfold C
    simp [show (1062882 * k + 994312) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 980927) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 980927)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_981215 : ∀ k : Nat,
    iterate (1048576 * k + 981215) 32 = 531441 * k + 497302 ∧
      531441 * k + 497302 < 1048576 * k + 981215 := by
  intro k
  have h1 : C (1048576 * k + 981215) = 3145728 * k + 2943646 := by
    unfold C
    simp [show (1048576 * k + 981215) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2943646) = 1572864 * k + 1471823 := by
    unfold C
    simp [show (3145728 * k + 2943646) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1471823) = 4718592 * k + 4415470 := by
    unfold C
    simp [show (1572864 * k + 1471823) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4415470) = 2359296 * k + 2207735 := by
    unfold C
    simp [show (4718592 * k + 4415470) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2207735) = 7077888 * k + 6623206 := by
    unfold C
    simp [show (2359296 * k + 2207735) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6623206) = 3538944 * k + 3311603 := by
    unfold C
    simp [show (7077888 * k + 6623206) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3311603) = 10616832 * k + 9934810 := by
    unfold C
    simp [show (3538944 * k + 3311603) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9934810) = 5308416 * k + 4967405 := by
    unfold C
    simp [show (10616832 * k + 9934810) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4967405) = 15925248 * k + 14902216 := by
    unfold C
    simp [show (5308416 * k + 4967405) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14902216) = 7962624 * k + 7451108 := by
    unfold C
    simp [show (15925248 * k + 14902216) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7451108) = 3981312 * k + 3725554 := by
    unfold C
    simp [show (7962624 * k + 7451108) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3725554) = 1990656 * k + 1862777 := by
    unfold C
    simp [show (3981312 * k + 3725554) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1862777) = 5971968 * k + 5588332 := by
    unfold C
    simp [show (1990656 * k + 1862777) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5588332) = 2985984 * k + 2794166 := by
    unfold C
    simp [show (5971968 * k + 5588332) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2794166) = 1492992 * k + 1397083 := by
    unfold C
    simp [show (2985984 * k + 2794166) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1397083) = 4478976 * k + 4191250 := by
    unfold C
    simp [show (1492992 * k + 1397083) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4191250) = 2239488 * k + 2095625 := by
    unfold C
    simp [show (4478976 * k + 4191250) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2095625) = 6718464 * k + 6286876 := by
    unfold C
    simp [show (2239488 * k + 2095625) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6286876) = 3359232 * k + 3143438 := by
    unfold C
    simp [show (6718464 * k + 6286876) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3143438) = 1679616 * k + 1571719 := by
    unfold C
    simp [show (3359232 * k + 3143438) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1571719) = 5038848 * k + 4715158 := by
    unfold C
    simp [show (1679616 * k + 1571719) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4715158) = 2519424 * k + 2357579 := by
    unfold C
    simp [show (5038848 * k + 4715158) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2357579) = 7558272 * k + 7072738 := by
    unfold C
    simp [show (2519424 * k + 2357579) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7072738) = 3779136 * k + 3536369 := by
    unfold C
    simp [show (7558272 * k + 7072738) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3536369) = 11337408 * k + 10609108 := by
    unfold C
    simp [show (3779136 * k + 3536369) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10609108) = 5668704 * k + 5304554 := by
    unfold C
    simp [show (11337408 * k + 10609108) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5304554) = 2834352 * k + 2652277 := by
    unfold C
    simp [show (5668704 * k + 5304554) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2652277) = 8503056 * k + 7956832 := by
    unfold C
    simp [show (2834352 * k + 2652277) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7956832) = 4251528 * k + 3978416 := by
    unfold C
    simp [show (8503056 * k + 7956832) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3978416) = 2125764 * k + 1989208 := by
    unfold C
    simp [show (4251528 * k + 3978416) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1989208) = 1062882 * k + 994604 := by
    unfold C
    simp [show (2125764 * k + 1989208) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 994604) = 531441 * k + 497302 := by
    unfold C
    simp [show (1062882 * k + 994604) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 981215) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 981215)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_981247 : ∀ k : Nat,
    iterate (1048576 * k + 981247) 32 = 531441 * k + 497318 ∧
      531441 * k + 497318 < 1048576 * k + 981247 := by
  intro k
  have h1 : C (1048576 * k + 981247) = 3145728 * k + 2943742 := by
    unfold C
    simp [show (1048576 * k + 981247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2943742) = 1572864 * k + 1471871 := by
    unfold C
    simp [show (3145728 * k + 2943742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1471871) = 4718592 * k + 4415614 := by
    unfold C
    simp [show (1572864 * k + 1471871) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4415614) = 2359296 * k + 2207807 := by
    unfold C
    simp [show (4718592 * k + 4415614) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2207807) = 7077888 * k + 6623422 := by
    unfold C
    simp [show (2359296 * k + 2207807) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6623422) = 3538944 * k + 3311711 := by
    unfold C
    simp [show (7077888 * k + 6623422) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3311711) = 10616832 * k + 9935134 := by
    unfold C
    simp [show (3538944 * k + 3311711) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9935134) = 5308416 * k + 4967567 := by
    unfold C
    simp [show (10616832 * k + 9935134) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4967567) = 15925248 * k + 14902702 := by
    unfold C
    simp [show (5308416 * k + 4967567) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14902702) = 7962624 * k + 7451351 := by
    unfold C
    simp [show (15925248 * k + 14902702) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7451351) = 23887872 * k + 22354054 := by
    unfold C
    simp [show (7962624 * k + 7451351) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22354054) = 11943936 * k + 11177027 := by
    unfold C
    simp [show (23887872 * k + 22354054) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11177027) = 35831808 * k + 33531082 := by
    unfold C
    simp [show (11943936 * k + 11177027) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33531082) = 17915904 * k + 16765541 := by
    unfold C
    simp [show (35831808 * k + 33531082) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16765541) = 53747712 * k + 50296624 := by
    unfold C
    simp [show (17915904 * k + 16765541) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 50296624) = 26873856 * k + 25148312 := by
    unfold C
    simp [show (53747712 * k + 50296624) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 25148312) = 13436928 * k + 12574156 := by
    unfold C
    simp [show (26873856 * k + 25148312) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12574156) = 6718464 * k + 6287078 := by
    unfold C
    simp [show (13436928 * k + 12574156) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6287078) = 3359232 * k + 3143539 := by
    unfold C
    simp [show (6718464 * k + 6287078) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3143539) = 10077696 * k + 9430618 := by
    unfold C
    simp [show (3359232 * k + 3143539) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9430618) = 5038848 * k + 4715309 := by
    unfold C
    simp [show (10077696 * k + 9430618) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4715309) = 15116544 * k + 14145928 := by
    unfold C
    simp [show (5038848 * k + 4715309) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14145928) = 7558272 * k + 7072964 := by
    unfold C
    simp [show (15116544 * k + 14145928) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7072964) = 3779136 * k + 3536482 := by
    unfold C
    simp [show (7558272 * k + 7072964) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3536482) = 1889568 * k + 1768241 := by
    unfold C
    simp [show (3779136 * k + 3536482) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1768241) = 5668704 * k + 5304724 := by
    unfold C
    simp [show (1889568 * k + 1768241) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5304724) = 2834352 * k + 2652362 := by
    unfold C
    simp [show (5668704 * k + 5304724) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2652362) = 1417176 * k + 1326181 := by
    unfold C
    simp [show (2834352 * k + 2652362) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1326181) = 4251528 * k + 3978544 := by
    unfold C
    simp [show (1417176 * k + 1326181) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3978544) = 2125764 * k + 1989272 := by
    unfold C
    simp [show (4251528 * k + 3978544) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1989272) = 1062882 * k + 994636 := by
    unfold C
    simp [show (2125764 * k + 1989272) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 994636) = 531441 * k + 497318 := by
    unfold C
    simp [show (1062882 * k + 994636) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 981247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 981247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_981375 : ∀ k : Nat,
    iterate (1048576 * k + 981375) 32 = 531441 * k + 497383 ∧
      531441 * k + 497383 < 1048576 * k + 981375 := by
  intro k
  have h1 : C (1048576 * k + 981375) = 3145728 * k + 2944126 := by
    unfold C
    simp [show (1048576 * k + 981375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2944126) = 1572864 * k + 1472063 := by
    unfold C
    simp [show (3145728 * k + 2944126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1472063) = 4718592 * k + 4416190 := by
    unfold C
    simp [show (1572864 * k + 1472063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4416190) = 2359296 * k + 2208095 := by
    unfold C
    simp [show (4718592 * k + 4416190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2208095) = 7077888 * k + 6624286 := by
    unfold C
    simp [show (2359296 * k + 2208095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6624286) = 3538944 * k + 3312143 := by
    unfold C
    simp [show (7077888 * k + 6624286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3312143) = 10616832 * k + 9936430 := by
    unfold C
    simp [show (3538944 * k + 3312143) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9936430) = 5308416 * k + 4968215 := by
    unfold C
    simp [show (10616832 * k + 9936430) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4968215) = 15925248 * k + 14904646 := by
    unfold C
    simp [show (5308416 * k + 4968215) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14904646) = 7962624 * k + 7452323 := by
    unfold C
    simp [show (15925248 * k + 14904646) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7452323) = 23887872 * k + 22356970 := by
    unfold C
    simp [show (7962624 * k + 7452323) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22356970) = 11943936 * k + 11178485 := by
    unfold C
    simp [show (23887872 * k + 22356970) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11178485) = 35831808 * k + 33535456 := by
    unfold C
    simp [show (11943936 * k + 11178485) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33535456) = 17915904 * k + 16767728 := by
    unfold C
    simp [show (35831808 * k + 33535456) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16767728) = 8957952 * k + 8383864 := by
    unfold C
    simp [show (17915904 * k + 16767728) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8383864) = 4478976 * k + 4191932 := by
    unfold C
    simp [show (8957952 * k + 8383864) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4191932) = 2239488 * k + 2095966 := by
    unfold C
    simp [show (4478976 * k + 4191932) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2095966) = 1119744 * k + 1047983 := by
    unfold C
    simp [show (2239488 * k + 2095966) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1047983) = 3359232 * k + 3143950 := by
    unfold C
    simp [show (1119744 * k + 1047983) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3143950) = 1679616 * k + 1571975 := by
    unfold C
    simp [show (3359232 * k + 3143950) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1571975) = 5038848 * k + 4715926 := by
    unfold C
    simp [show (1679616 * k + 1571975) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4715926) = 2519424 * k + 2357963 := by
    unfold C
    simp [show (5038848 * k + 4715926) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2357963) = 7558272 * k + 7073890 := by
    unfold C
    simp [show (2519424 * k + 2357963) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7073890) = 3779136 * k + 3536945 := by
    unfold C
    simp [show (7558272 * k + 7073890) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3536945) = 11337408 * k + 10610836 := by
    unfold C
    simp [show (3779136 * k + 3536945) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10610836) = 5668704 * k + 5305418 := by
    unfold C
    simp [show (11337408 * k + 10610836) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5305418) = 2834352 * k + 2652709 := by
    unfold C
    simp [show (5668704 * k + 5305418) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2652709) = 8503056 * k + 7958128 := by
    unfold C
    simp [show (2834352 * k + 2652709) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7958128) = 4251528 * k + 3979064 := by
    unfold C
    simp [show (8503056 * k + 7958128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3979064) = 2125764 * k + 1989532 := by
    unfold C
    simp [show (4251528 * k + 3979064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1989532) = 1062882 * k + 994766 := by
    unfold C
    simp [show (2125764 * k + 1989532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 994766) = 531441 * k + 497383 := by
    unfold C
    simp [show (1062882 * k + 994766) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 981375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 981375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard124
