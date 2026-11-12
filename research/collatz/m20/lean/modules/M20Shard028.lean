import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard028

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_199935 : ∀ k : Nat,
    iterate (1048576 * k + 199935) 32 = 531441 * k + 101332 ∧
      531441 * k + 101332 < 1048576 * k + 199935 := by
  intro k
  have h1 : C (1048576 * k + 199935) = 3145728 * k + 599806 := by
    unfold C
    simp [show (1048576 * k + 199935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 599806) = 1572864 * k + 299903 := by
    unfold C
    simp [show (3145728 * k + 599806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 299903) = 4718592 * k + 899710 := by
    unfold C
    simp [show (1572864 * k + 299903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 899710) = 2359296 * k + 449855 := by
    unfold C
    simp [show (4718592 * k + 899710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 449855) = 7077888 * k + 1349566 := by
    unfold C
    simp [show (2359296 * k + 449855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1349566) = 3538944 * k + 674783 := by
    unfold C
    simp [show (7077888 * k + 1349566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 674783) = 10616832 * k + 2024350 := by
    unfold C
    simp [show (3538944 * k + 674783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2024350) = 5308416 * k + 1012175 := by
    unfold C
    simp [show (10616832 * k + 2024350) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1012175) = 15925248 * k + 3036526 := by
    unfold C
    simp [show (5308416 * k + 1012175) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3036526) = 7962624 * k + 1518263 := by
    unfold C
    simp [show (15925248 * k + 3036526) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1518263) = 23887872 * k + 4554790 := by
    unfold C
    simp [show (7962624 * k + 1518263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4554790) = 11943936 * k + 2277395 := by
    unfold C
    simp [show (23887872 * k + 4554790) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2277395) = 35831808 * k + 6832186 := by
    unfold C
    simp [show (11943936 * k + 2277395) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6832186) = 17915904 * k + 3416093 := by
    unfold C
    simp [show (35831808 * k + 6832186) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3416093) = 53747712 * k + 10248280 := by
    unfold C
    simp [show (17915904 * k + 3416093) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 10248280) = 26873856 * k + 5124140 := by
    unfold C
    simp [show (53747712 * k + 10248280) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5124140) = 13436928 * k + 2562070 := by
    unfold C
    simp [show (26873856 * k + 5124140) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2562070) = 6718464 * k + 1281035 := by
    unfold C
    simp [show (13436928 * k + 2562070) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1281035) = 20155392 * k + 3843106 := by
    unfold C
    simp [show (6718464 * k + 1281035) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3843106) = 10077696 * k + 1921553 := by
    unfold C
    simp [show (20155392 * k + 3843106) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1921553) = 30233088 * k + 5764660 := by
    unfold C
    simp [show (10077696 * k + 1921553) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5764660) = 15116544 * k + 2882330 := by
    unfold C
    simp [show (30233088 * k + 5764660) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2882330) = 7558272 * k + 1441165 := by
    unfold C
    simp [show (15116544 * k + 2882330) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1441165) = 22674816 * k + 4323496 := by
    unfold C
    simp [show (7558272 * k + 1441165) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4323496) = 11337408 * k + 2161748 := by
    unfold C
    simp [show (22674816 * k + 4323496) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2161748) = 5668704 * k + 1080874 := by
    unfold C
    simp [show (11337408 * k + 2161748) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1080874) = 2834352 * k + 540437 := by
    unfold C
    simp [show (5668704 * k + 1080874) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 540437) = 8503056 * k + 1621312 := by
    unfold C
    simp [show (2834352 * k + 540437) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1621312) = 4251528 * k + 810656 := by
    unfold C
    simp [show (8503056 * k + 1621312) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 810656) = 2125764 * k + 405328 := by
    unfold C
    simp [show (4251528 * k + 810656) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 405328) = 1062882 * k + 202664 := by
    unfold C
    simp [show (2125764 * k + 405328) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 202664) = 531441 * k + 101332 := by
    unfold C
    simp [show (1062882 * k + 202664) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 199935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 199935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_200007 : ∀ k : Nat,
    iterate (1048576 * k + 200007) 32 = 531441 * k + 101369 ∧
      531441 * k + 101369 < 1048576 * k + 200007 := by
  intro k
  have h1 : C (1048576 * k + 200007) = 3145728 * k + 600022 := by
    unfold C
    simp [show (1048576 * k + 200007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 600022) = 1572864 * k + 300011 := by
    unfold C
    simp [show (3145728 * k + 600022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 300011) = 4718592 * k + 900034 := by
    unfold C
    simp [show (1572864 * k + 300011) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 900034) = 2359296 * k + 450017 := by
    unfold C
    simp [show (4718592 * k + 900034) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 450017) = 7077888 * k + 1350052 := by
    unfold C
    simp [show (2359296 * k + 450017) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1350052) = 3538944 * k + 675026 := by
    unfold C
    simp [show (7077888 * k + 1350052) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 675026) = 1769472 * k + 337513 := by
    unfold C
    simp [show (3538944 * k + 675026) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 337513) = 5308416 * k + 1012540 := by
    unfold C
    simp [show (1769472 * k + 337513) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1012540) = 2654208 * k + 506270 := by
    unfold C
    simp [show (5308416 * k + 1012540) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 506270) = 1327104 * k + 253135 := by
    unfold C
    simp [show (2654208 * k + 506270) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 253135) = 3981312 * k + 759406 := by
    unfold C
    simp [show (1327104 * k + 253135) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 759406) = 1990656 * k + 379703 := by
    unfold C
    simp [show (3981312 * k + 759406) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 379703) = 5971968 * k + 1139110 := by
    unfold C
    simp [show (1990656 * k + 379703) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1139110) = 2985984 * k + 569555 := by
    unfold C
    simp [show (5971968 * k + 1139110) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 569555) = 8957952 * k + 1708666 := by
    unfold C
    simp [show (2985984 * k + 569555) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1708666) = 4478976 * k + 854333 := by
    unfold C
    simp [show (8957952 * k + 1708666) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 854333) = 13436928 * k + 2563000 := by
    unfold C
    simp [show (4478976 * k + 854333) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 2563000) = 6718464 * k + 1281500 := by
    unfold C
    simp [show (13436928 * k + 2563000) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1281500) = 3359232 * k + 640750 := by
    unfold C
    simp [show (6718464 * k + 1281500) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 640750) = 1679616 * k + 320375 := by
    unfold C
    simp [show (3359232 * k + 640750) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 320375) = 5038848 * k + 961126 := by
    unfold C
    simp [show (1679616 * k + 320375) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 961126) = 2519424 * k + 480563 := by
    unfold C
    simp [show (5038848 * k + 961126) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 480563) = 7558272 * k + 1441690 := by
    unfold C
    simp [show (2519424 * k + 480563) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1441690) = 3779136 * k + 720845 := by
    unfold C
    simp [show (7558272 * k + 1441690) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 720845) = 11337408 * k + 2162536 := by
    unfold C
    simp [show (3779136 * k + 720845) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2162536) = 5668704 * k + 1081268 := by
    unfold C
    simp [show (11337408 * k + 2162536) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1081268) = 2834352 * k + 540634 := by
    unfold C
    simp [show (5668704 * k + 1081268) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 540634) = 1417176 * k + 270317 := by
    unfold C
    simp [show (2834352 * k + 540634) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 270317) = 4251528 * k + 810952 := by
    unfold C
    simp [show (1417176 * k + 270317) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 810952) = 2125764 * k + 405476 := by
    unfold C
    simp [show (4251528 * k + 810952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 405476) = 1062882 * k + 202738 := by
    unfold C
    simp [show (2125764 * k + 405476) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 202738) = 531441 * k + 101369 := by
    unfold C
    simp [show (1062882 * k + 202738) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 200007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 200007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_200475 : ∀ k : Nat,
    iterate (1048576 * k + 200475) 32 = 531441 * k + 101606 ∧
      531441 * k + 101606 < 1048576 * k + 200475 := by
  intro k
  have h1 : C (1048576 * k + 200475) = 3145728 * k + 601426 := by
    unfold C
    simp [show (1048576 * k + 200475) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 601426) = 1572864 * k + 300713 := by
    unfold C
    simp [show (3145728 * k + 601426) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 300713) = 4718592 * k + 902140 := by
    unfold C
    simp [show (1572864 * k + 300713) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 902140) = 2359296 * k + 451070 := by
    unfold C
    simp [show (4718592 * k + 902140) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 451070) = 1179648 * k + 225535 := by
    unfold C
    simp [show (2359296 * k + 451070) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 225535) = 3538944 * k + 676606 := by
    unfold C
    simp [show (1179648 * k + 225535) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 676606) = 1769472 * k + 338303 := by
    unfold C
    simp [show (3538944 * k + 676606) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 338303) = 5308416 * k + 1014910 := by
    unfold C
    simp [show (1769472 * k + 338303) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1014910) = 2654208 * k + 507455 := by
    unfold C
    simp [show (5308416 * k + 1014910) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 507455) = 7962624 * k + 1522366 := by
    unfold C
    simp [show (2654208 * k + 507455) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1522366) = 3981312 * k + 761183 := by
    unfold C
    simp [show (7962624 * k + 1522366) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 761183) = 11943936 * k + 2283550 := by
    unfold C
    simp [show (3981312 * k + 761183) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2283550) = 5971968 * k + 1141775 := by
    unfold C
    simp [show (11943936 * k + 2283550) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1141775) = 17915904 * k + 3425326 := by
    unfold C
    simp [show (5971968 * k + 1141775) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3425326) = 8957952 * k + 1712663 := by
    unfold C
    simp [show (17915904 * k + 3425326) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1712663) = 26873856 * k + 5137990 := by
    unfold C
    simp [show (8957952 * k + 1712663) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5137990) = 13436928 * k + 2568995 := by
    unfold C
    simp [show (26873856 * k + 5137990) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2568995) = 40310784 * k + 7706986 := by
    unfold C
    simp [show (13436928 * k + 2568995) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7706986) = 20155392 * k + 3853493 := by
    unfold C
    simp [show (40310784 * k + 7706986) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3853493) = 60466176 * k + 11560480 := by
    unfold C
    simp [show (20155392 * k + 3853493) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 11560480) = 30233088 * k + 5780240 := by
    unfold C
    simp [show (60466176 * k + 11560480) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 5780240) = 15116544 * k + 2890120 := by
    unfold C
    simp [show (30233088 * k + 5780240) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2890120) = 7558272 * k + 1445060 := by
    unfold C
    simp [show (15116544 * k + 2890120) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1445060) = 3779136 * k + 722530 := by
    unfold C
    simp [show (7558272 * k + 1445060) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 722530) = 1889568 * k + 361265 := by
    unfold C
    simp [show (3779136 * k + 722530) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 361265) = 5668704 * k + 1083796 := by
    unfold C
    simp [show (1889568 * k + 361265) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1083796) = 2834352 * k + 541898 := by
    unfold C
    simp [show (5668704 * k + 1083796) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 541898) = 1417176 * k + 270949 := by
    unfold C
    simp [show (2834352 * k + 541898) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 270949) = 4251528 * k + 812848 := by
    unfold C
    simp [show (1417176 * k + 270949) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 812848) = 2125764 * k + 406424 := by
    unfold C
    simp [show (4251528 * k + 812848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 406424) = 1062882 * k + 203212 := by
    unfold C
    simp [show (2125764 * k + 406424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 203212) = 531441 * k + 101606 := by
    unfold C
    simp [show (1062882 * k + 203212) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 200475) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 200475)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_200751 : ∀ k : Nat,
    iterate (1048576 * k + 200751) 32 = 531441 * k + 101746 ∧
      531441 * k + 101746 < 1048576 * k + 200751 := by
  intro k
  have h1 : C (1048576 * k + 200751) = 3145728 * k + 602254 := by
    unfold C
    simp [show (1048576 * k + 200751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 602254) = 1572864 * k + 301127 := by
    unfold C
    simp [show (3145728 * k + 602254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 301127) = 4718592 * k + 903382 := by
    unfold C
    simp [show (1572864 * k + 301127) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 903382) = 2359296 * k + 451691 := by
    unfold C
    simp [show (4718592 * k + 903382) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 451691) = 7077888 * k + 1355074 := by
    unfold C
    simp [show (2359296 * k + 451691) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1355074) = 3538944 * k + 677537 := by
    unfold C
    simp [show (7077888 * k + 1355074) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 677537) = 10616832 * k + 2032612 := by
    unfold C
    simp [show (3538944 * k + 677537) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2032612) = 5308416 * k + 1016306 := by
    unfold C
    simp [show (10616832 * k + 2032612) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1016306) = 2654208 * k + 508153 := by
    unfold C
    simp [show (5308416 * k + 1016306) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 508153) = 7962624 * k + 1524460 := by
    unfold C
    simp [show (2654208 * k + 508153) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1524460) = 3981312 * k + 762230 := by
    unfold C
    simp [show (7962624 * k + 1524460) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 762230) = 1990656 * k + 381115 := by
    unfold C
    simp [show (3981312 * k + 762230) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 381115) = 5971968 * k + 1143346 := by
    unfold C
    simp [show (1990656 * k + 381115) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1143346) = 2985984 * k + 571673 := by
    unfold C
    simp [show (5971968 * k + 1143346) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 571673) = 8957952 * k + 1715020 := by
    unfold C
    simp [show (2985984 * k + 571673) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1715020) = 4478976 * k + 857510 := by
    unfold C
    simp [show (8957952 * k + 1715020) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 857510) = 2239488 * k + 428755 := by
    unfold C
    simp [show (4478976 * k + 857510) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 428755) = 6718464 * k + 1286266 := by
    unfold C
    simp [show (2239488 * k + 428755) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1286266) = 3359232 * k + 643133 := by
    unfold C
    simp [show (6718464 * k + 1286266) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 643133) = 10077696 * k + 1929400 := by
    unfold C
    simp [show (3359232 * k + 643133) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1929400) = 5038848 * k + 964700 := by
    unfold C
    simp [show (10077696 * k + 1929400) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 964700) = 2519424 * k + 482350 := by
    unfold C
    simp [show (5038848 * k + 964700) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 482350) = 1259712 * k + 241175 := by
    unfold C
    simp [show (2519424 * k + 482350) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 241175) = 3779136 * k + 723526 := by
    unfold C
    simp [show (1259712 * k + 241175) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 723526) = 1889568 * k + 361763 := by
    unfold C
    simp [show (3779136 * k + 723526) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 361763) = 5668704 * k + 1085290 := by
    unfold C
    simp [show (1889568 * k + 361763) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1085290) = 2834352 * k + 542645 := by
    unfold C
    simp [show (5668704 * k + 1085290) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 542645) = 8503056 * k + 1627936 := by
    unfold C
    simp [show (2834352 * k + 542645) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1627936) = 4251528 * k + 813968 := by
    unfold C
    simp [show (8503056 * k + 1627936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 813968) = 2125764 * k + 406984 := by
    unfold C
    simp [show (4251528 * k + 813968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 406984) = 1062882 * k + 203492 := by
    unfold C
    simp [show (2125764 * k + 406984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 203492) = 531441 * k + 101746 := by
    unfold C
    simp [show (1062882 * k + 203492) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 200751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 200751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_201007 : ∀ k : Nat,
    iterate (1048576 * k + 201007) 32 = 531441 * k + 101876 ∧
      531441 * k + 101876 < 1048576 * k + 201007 := by
  intro k
  have h1 : C (1048576 * k + 201007) = 3145728 * k + 603022 := by
    unfold C
    simp [show (1048576 * k + 201007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 603022) = 1572864 * k + 301511 := by
    unfold C
    simp [show (3145728 * k + 603022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 301511) = 4718592 * k + 904534 := by
    unfold C
    simp [show (1572864 * k + 301511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 904534) = 2359296 * k + 452267 := by
    unfold C
    simp [show (4718592 * k + 904534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 452267) = 7077888 * k + 1356802 := by
    unfold C
    simp [show (2359296 * k + 452267) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1356802) = 3538944 * k + 678401 := by
    unfold C
    simp [show (7077888 * k + 1356802) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 678401) = 10616832 * k + 2035204 := by
    unfold C
    simp [show (3538944 * k + 678401) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2035204) = 5308416 * k + 1017602 := by
    unfold C
    simp [show (10616832 * k + 2035204) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1017602) = 2654208 * k + 508801 := by
    unfold C
    simp [show (5308416 * k + 1017602) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 508801) = 7962624 * k + 1526404 := by
    unfold C
    simp [show (2654208 * k + 508801) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1526404) = 3981312 * k + 763202 := by
    unfold C
    simp [show (7962624 * k + 1526404) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 763202) = 1990656 * k + 381601 := by
    unfold C
    simp [show (3981312 * k + 763202) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 381601) = 5971968 * k + 1144804 := by
    unfold C
    simp [show (1990656 * k + 381601) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1144804) = 2985984 * k + 572402 := by
    unfold C
    simp [show (5971968 * k + 1144804) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 572402) = 1492992 * k + 286201 := by
    unfold C
    simp [show (2985984 * k + 572402) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 286201) = 4478976 * k + 858604 := by
    unfold C
    simp [show (1492992 * k + 286201) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 858604) = 2239488 * k + 429302 := by
    unfold C
    simp [show (4478976 * k + 858604) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 429302) = 1119744 * k + 214651 := by
    unfold C
    simp [show (2239488 * k + 429302) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 214651) = 3359232 * k + 643954 := by
    unfold C
    simp [show (1119744 * k + 214651) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 643954) = 1679616 * k + 321977 := by
    unfold C
    simp [show (3359232 * k + 643954) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 321977) = 5038848 * k + 965932 := by
    unfold C
    simp [show (1679616 * k + 321977) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 965932) = 2519424 * k + 482966 := by
    unfold C
    simp [show (5038848 * k + 965932) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 482966) = 1259712 * k + 241483 := by
    unfold C
    simp [show (2519424 * k + 482966) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 241483) = 3779136 * k + 724450 := by
    unfold C
    simp [show (1259712 * k + 241483) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 724450) = 1889568 * k + 362225 := by
    unfold C
    simp [show (3779136 * k + 724450) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 362225) = 5668704 * k + 1086676 := by
    unfold C
    simp [show (1889568 * k + 362225) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1086676) = 2834352 * k + 543338 := by
    unfold C
    simp [show (5668704 * k + 1086676) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 543338) = 1417176 * k + 271669 := by
    unfold C
    simp [show (2834352 * k + 543338) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 271669) = 4251528 * k + 815008 := by
    unfold C
    simp [show (1417176 * k + 271669) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 815008) = 2125764 * k + 407504 := by
    unfold C
    simp [show (4251528 * k + 815008) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 407504) = 1062882 * k + 203752 := by
    unfold C
    simp [show (2125764 * k + 407504) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 203752) = 531441 * k + 101876 := by
    unfold C
    simp [show (1062882 * k + 203752) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 201007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 201007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_201327 : ∀ k : Nat,
    iterate (1048576 * k + 201327) 32 = 531441 * k + 102038 ∧
      531441 * k + 102038 < 1048576 * k + 201327 := by
  intro k
  have h1 : C (1048576 * k + 201327) = 3145728 * k + 603982 := by
    unfold C
    simp [show (1048576 * k + 201327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 603982) = 1572864 * k + 301991 := by
    unfold C
    simp [show (3145728 * k + 603982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 301991) = 4718592 * k + 905974 := by
    unfold C
    simp [show (1572864 * k + 301991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 905974) = 2359296 * k + 452987 := by
    unfold C
    simp [show (4718592 * k + 905974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 452987) = 7077888 * k + 1358962 := by
    unfold C
    simp [show (2359296 * k + 452987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1358962) = 3538944 * k + 679481 := by
    unfold C
    simp [show (7077888 * k + 1358962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 679481) = 10616832 * k + 2038444 := by
    unfold C
    simp [show (3538944 * k + 679481) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2038444) = 5308416 * k + 1019222 := by
    unfold C
    simp [show (10616832 * k + 2038444) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1019222) = 2654208 * k + 509611 := by
    unfold C
    simp [show (5308416 * k + 1019222) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 509611) = 7962624 * k + 1528834 := by
    unfold C
    simp [show (2654208 * k + 509611) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1528834) = 3981312 * k + 764417 := by
    unfold C
    simp [show (7962624 * k + 1528834) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 764417) = 11943936 * k + 2293252 := by
    unfold C
    simp [show (3981312 * k + 764417) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2293252) = 5971968 * k + 1146626 := by
    unfold C
    simp [show (11943936 * k + 2293252) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1146626) = 2985984 * k + 573313 := by
    unfold C
    simp [show (5971968 * k + 1146626) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 573313) = 8957952 * k + 1719940 := by
    unfold C
    simp [show (2985984 * k + 573313) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1719940) = 4478976 * k + 859970 := by
    unfold C
    simp [show (8957952 * k + 1719940) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 859970) = 2239488 * k + 429985 := by
    unfold C
    simp [show (4478976 * k + 859970) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 429985) = 6718464 * k + 1289956 := by
    unfold C
    simp [show (2239488 * k + 429985) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1289956) = 3359232 * k + 644978 := by
    unfold C
    simp [show (6718464 * k + 1289956) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 644978) = 1679616 * k + 322489 := by
    unfold C
    simp [show (3359232 * k + 644978) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 322489) = 5038848 * k + 967468 := by
    unfold C
    simp [show (1679616 * k + 322489) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 967468) = 2519424 * k + 483734 := by
    unfold C
    simp [show (5038848 * k + 967468) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 483734) = 1259712 * k + 241867 := by
    unfold C
    simp [show (2519424 * k + 483734) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 241867) = 3779136 * k + 725602 := by
    unfold C
    simp [show (1259712 * k + 241867) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 725602) = 1889568 * k + 362801 := by
    unfold C
    simp [show (3779136 * k + 725602) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 362801) = 5668704 * k + 1088404 := by
    unfold C
    simp [show (1889568 * k + 362801) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1088404) = 2834352 * k + 544202 := by
    unfold C
    simp [show (5668704 * k + 1088404) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 544202) = 1417176 * k + 272101 := by
    unfold C
    simp [show (2834352 * k + 544202) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 272101) = 4251528 * k + 816304 := by
    unfold C
    simp [show (1417176 * k + 272101) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 816304) = 2125764 * k + 408152 := by
    unfold C
    simp [show (4251528 * k + 816304) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 408152) = 1062882 * k + 204076 := by
    unfold C
    simp [show (2125764 * k + 408152) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 204076) = 531441 * k + 102038 := by
    unfold C
    simp [show (1062882 * k + 204076) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 201327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 201327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_201375 : ∀ k : Nat,
    iterate (1048576 * k + 201375) 32 = 531441 * k + 102062 ∧
      531441 * k + 102062 < 1048576 * k + 201375 := by
  intro k
  have h1 : C (1048576 * k + 201375) = 3145728 * k + 604126 := by
    unfold C
    simp [show (1048576 * k + 201375) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 604126) = 1572864 * k + 302063 := by
    unfold C
    simp [show (3145728 * k + 604126) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 302063) = 4718592 * k + 906190 := by
    unfold C
    simp [show (1572864 * k + 302063) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 906190) = 2359296 * k + 453095 := by
    unfold C
    simp [show (4718592 * k + 906190) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 453095) = 7077888 * k + 1359286 := by
    unfold C
    simp [show (2359296 * k + 453095) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1359286) = 3538944 * k + 679643 := by
    unfold C
    simp [show (7077888 * k + 1359286) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 679643) = 10616832 * k + 2038930 := by
    unfold C
    simp [show (3538944 * k + 679643) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2038930) = 5308416 * k + 1019465 := by
    unfold C
    simp [show (10616832 * k + 2038930) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1019465) = 15925248 * k + 3058396 := by
    unfold C
    simp [show (5308416 * k + 1019465) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3058396) = 7962624 * k + 1529198 := by
    unfold C
    simp [show (15925248 * k + 3058396) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1529198) = 3981312 * k + 764599 := by
    unfold C
    simp [show (7962624 * k + 1529198) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 764599) = 11943936 * k + 2293798 := by
    unfold C
    simp [show (3981312 * k + 764599) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2293798) = 5971968 * k + 1146899 := by
    unfold C
    simp [show (11943936 * k + 2293798) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1146899) = 17915904 * k + 3440698 := by
    unfold C
    simp [show (5971968 * k + 1146899) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3440698) = 8957952 * k + 1720349 := by
    unfold C
    simp [show (17915904 * k + 3440698) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1720349) = 26873856 * k + 5161048 := by
    unfold C
    simp [show (8957952 * k + 1720349) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5161048) = 13436928 * k + 2580524 := by
    unfold C
    simp [show (26873856 * k + 5161048) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2580524) = 6718464 * k + 1290262 := by
    unfold C
    simp [show (13436928 * k + 2580524) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1290262) = 3359232 * k + 645131 := by
    unfold C
    simp [show (6718464 * k + 1290262) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 645131) = 10077696 * k + 1935394 := by
    unfold C
    simp [show (3359232 * k + 645131) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1935394) = 5038848 * k + 967697 := by
    unfold C
    simp [show (10077696 * k + 1935394) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 967697) = 15116544 * k + 2903092 := by
    unfold C
    simp [show (5038848 * k + 967697) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2903092) = 7558272 * k + 1451546 := by
    unfold C
    simp [show (15116544 * k + 2903092) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1451546) = 3779136 * k + 725773 := by
    unfold C
    simp [show (7558272 * k + 1451546) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 725773) = 11337408 * k + 2177320 := by
    unfold C
    simp [show (3779136 * k + 725773) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2177320) = 5668704 * k + 1088660 := by
    unfold C
    simp [show (11337408 * k + 2177320) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1088660) = 2834352 * k + 544330 := by
    unfold C
    simp [show (5668704 * k + 1088660) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 544330) = 1417176 * k + 272165 := by
    unfold C
    simp [show (2834352 * k + 544330) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 272165) = 4251528 * k + 816496 := by
    unfold C
    simp [show (1417176 * k + 272165) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 816496) = 2125764 * k + 408248 := by
    unfold C
    simp [show (4251528 * k + 816496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 408248) = 1062882 * k + 204124 := by
    unfold C
    simp [show (2125764 * k + 408248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 204124) = 531441 * k + 102062 := by
    unfold C
    simp [show (1062882 * k + 204124) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 201375) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 201375)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_201499 : ∀ k : Nat,
    iterate (1048576 * k + 201499) 32 = 531441 * k + 102125 ∧
      531441 * k + 102125 < 1048576 * k + 201499 := by
  intro k
  have h1 : C (1048576 * k + 201499) = 3145728 * k + 604498 := by
    unfold C
    simp [show (1048576 * k + 201499) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 604498) = 1572864 * k + 302249 := by
    unfold C
    simp [show (3145728 * k + 604498) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 302249) = 4718592 * k + 906748 := by
    unfold C
    simp [show (1572864 * k + 302249) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 906748) = 2359296 * k + 453374 := by
    unfold C
    simp [show (4718592 * k + 906748) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 453374) = 1179648 * k + 226687 := by
    unfold C
    simp [show (2359296 * k + 453374) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 226687) = 3538944 * k + 680062 := by
    unfold C
    simp [show (1179648 * k + 226687) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 680062) = 1769472 * k + 340031 := by
    unfold C
    simp [show (3538944 * k + 680062) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 340031) = 5308416 * k + 1020094 := by
    unfold C
    simp [show (1769472 * k + 340031) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1020094) = 2654208 * k + 510047 := by
    unfold C
    simp [show (5308416 * k + 1020094) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 510047) = 7962624 * k + 1530142 := by
    unfold C
    simp [show (2654208 * k + 510047) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1530142) = 3981312 * k + 765071 := by
    unfold C
    simp [show (7962624 * k + 1530142) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 765071) = 11943936 * k + 2295214 := by
    unfold C
    simp [show (3981312 * k + 765071) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2295214) = 5971968 * k + 1147607 := by
    unfold C
    simp [show (11943936 * k + 2295214) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1147607) = 17915904 * k + 3442822 := by
    unfold C
    simp [show (5971968 * k + 1147607) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3442822) = 8957952 * k + 1721411 := by
    unfold C
    simp [show (17915904 * k + 3442822) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1721411) = 26873856 * k + 5164234 := by
    unfold C
    simp [show (8957952 * k + 1721411) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5164234) = 13436928 * k + 2582117 := by
    unfold C
    simp [show (26873856 * k + 5164234) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2582117) = 40310784 * k + 7746352 := by
    unfold C
    simp [show (13436928 * k + 2582117) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7746352) = 20155392 * k + 3873176 := by
    unfold C
    simp [show (40310784 * k + 7746352) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3873176) = 10077696 * k + 1936588 := by
    unfold C
    simp [show (20155392 * k + 3873176) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1936588) = 5038848 * k + 968294 := by
    unfold C
    simp [show (10077696 * k + 1936588) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 968294) = 2519424 * k + 484147 := by
    unfold C
    simp [show (5038848 * k + 968294) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 484147) = 7558272 * k + 1452442 := by
    unfold C
    simp [show (2519424 * k + 484147) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1452442) = 3779136 * k + 726221 := by
    unfold C
    simp [show (7558272 * k + 1452442) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 726221) = 11337408 * k + 2178664 := by
    unfold C
    simp [show (3779136 * k + 726221) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2178664) = 5668704 * k + 1089332 := by
    unfold C
    simp [show (11337408 * k + 2178664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1089332) = 2834352 * k + 544666 := by
    unfold C
    simp [show (5668704 * k + 1089332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 544666) = 1417176 * k + 272333 := by
    unfold C
    simp [show (2834352 * k + 544666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 272333) = 4251528 * k + 817000 := by
    unfold C
    simp [show (1417176 * k + 272333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 817000) = 2125764 * k + 408500 := by
    unfold C
    simp [show (4251528 * k + 817000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 408500) = 1062882 * k + 204250 := by
    unfold C
    simp [show (2125764 * k + 408500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 204250) = 531441 * k + 102125 := by
    unfold C
    simp [show (1062882 * k + 204250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 201499) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 201499)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_201775 : ∀ k : Nat,
    iterate (1048576 * k + 201775) 32 = 531441 * k + 102265 ∧
      531441 * k + 102265 < 1048576 * k + 201775 := by
  intro k
  have h1 : C (1048576 * k + 201775) = 3145728 * k + 605326 := by
    unfold C
    simp [show (1048576 * k + 201775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 605326) = 1572864 * k + 302663 := by
    unfold C
    simp [show (3145728 * k + 605326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 302663) = 4718592 * k + 907990 := by
    unfold C
    simp [show (1572864 * k + 302663) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 907990) = 2359296 * k + 453995 := by
    unfold C
    simp [show (4718592 * k + 907990) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 453995) = 7077888 * k + 1361986 := by
    unfold C
    simp [show (2359296 * k + 453995) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1361986) = 3538944 * k + 680993 := by
    unfold C
    simp [show (7077888 * k + 1361986) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 680993) = 10616832 * k + 2042980 := by
    unfold C
    simp [show (3538944 * k + 680993) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2042980) = 5308416 * k + 1021490 := by
    unfold C
    simp [show (10616832 * k + 2042980) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1021490) = 2654208 * k + 510745 := by
    unfold C
    simp [show (5308416 * k + 1021490) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 510745) = 7962624 * k + 1532236 := by
    unfold C
    simp [show (2654208 * k + 510745) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1532236) = 3981312 * k + 766118 := by
    unfold C
    simp [show (7962624 * k + 1532236) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 766118) = 1990656 * k + 383059 := by
    unfold C
    simp [show (3981312 * k + 766118) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 383059) = 5971968 * k + 1149178 := by
    unfold C
    simp [show (1990656 * k + 383059) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1149178) = 2985984 * k + 574589 := by
    unfold C
    simp [show (5971968 * k + 1149178) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 574589) = 8957952 * k + 1723768 := by
    unfold C
    simp [show (2985984 * k + 574589) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1723768) = 4478976 * k + 861884 := by
    unfold C
    simp [show (8957952 * k + 1723768) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 861884) = 2239488 * k + 430942 := by
    unfold C
    simp [show (4478976 * k + 861884) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 430942) = 1119744 * k + 215471 := by
    unfold C
    simp [show (2239488 * k + 430942) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 215471) = 3359232 * k + 646414 := by
    unfold C
    simp [show (1119744 * k + 215471) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 646414) = 1679616 * k + 323207 := by
    unfold C
    simp [show (3359232 * k + 646414) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 323207) = 5038848 * k + 969622 := by
    unfold C
    simp [show (1679616 * k + 323207) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 969622) = 2519424 * k + 484811 := by
    unfold C
    simp [show (5038848 * k + 969622) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 484811) = 7558272 * k + 1454434 := by
    unfold C
    simp [show (2519424 * k + 484811) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1454434) = 3779136 * k + 727217 := by
    unfold C
    simp [show (7558272 * k + 1454434) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 727217) = 11337408 * k + 2181652 := by
    unfold C
    simp [show (3779136 * k + 727217) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2181652) = 5668704 * k + 1090826 := by
    unfold C
    simp [show (11337408 * k + 2181652) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1090826) = 2834352 * k + 545413 := by
    unfold C
    simp [show (5668704 * k + 1090826) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 545413) = 8503056 * k + 1636240 := by
    unfold C
    simp [show (2834352 * k + 545413) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1636240) = 4251528 * k + 818120 := by
    unfold C
    simp [show (8503056 * k + 1636240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 818120) = 2125764 * k + 409060 := by
    unfold C
    simp [show (4251528 * k + 818120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 409060) = 1062882 * k + 204530 := by
    unfold C
    simp [show (2125764 * k + 409060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 204530) = 531441 * k + 102265 := by
    unfold C
    simp [show (1062882 * k + 204530) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 201775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 201775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_202663 : ∀ k : Nat,
    iterate (1048576 * k + 202663) 32 = 531441 * k + 102715 ∧
      531441 * k + 102715 < 1048576 * k + 202663 := by
  intro k
  have h1 : C (1048576 * k + 202663) = 3145728 * k + 607990 := by
    unfold C
    simp [show (1048576 * k + 202663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 607990) = 1572864 * k + 303995 := by
    unfold C
    simp [show (3145728 * k + 607990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 303995) = 4718592 * k + 911986 := by
    unfold C
    simp [show (1572864 * k + 303995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 911986) = 2359296 * k + 455993 := by
    unfold C
    simp [show (4718592 * k + 911986) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 455993) = 7077888 * k + 1367980 := by
    unfold C
    simp [show (2359296 * k + 455993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1367980) = 3538944 * k + 683990 := by
    unfold C
    simp [show (7077888 * k + 1367980) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 683990) = 1769472 * k + 341995 := by
    unfold C
    simp [show (3538944 * k + 683990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 341995) = 5308416 * k + 1025986 := by
    unfold C
    simp [show (1769472 * k + 341995) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1025986) = 2654208 * k + 512993 := by
    unfold C
    simp [show (5308416 * k + 1025986) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 512993) = 7962624 * k + 1538980 := by
    unfold C
    simp [show (2654208 * k + 512993) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1538980) = 3981312 * k + 769490 := by
    unfold C
    simp [show (7962624 * k + 1538980) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 769490) = 1990656 * k + 384745 := by
    unfold C
    simp [show (3981312 * k + 769490) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 384745) = 5971968 * k + 1154236 := by
    unfold C
    simp [show (1990656 * k + 384745) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1154236) = 2985984 * k + 577118 := by
    unfold C
    simp [show (5971968 * k + 1154236) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 577118) = 1492992 * k + 288559 := by
    unfold C
    simp [show (2985984 * k + 577118) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 288559) = 4478976 * k + 865678 := by
    unfold C
    simp [show (1492992 * k + 288559) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 865678) = 2239488 * k + 432839 := by
    unfold C
    simp [show (4478976 * k + 865678) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 432839) = 6718464 * k + 1298518 := by
    unfold C
    simp [show (2239488 * k + 432839) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1298518) = 3359232 * k + 649259 := by
    unfold C
    simp [show (6718464 * k + 1298518) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 649259) = 10077696 * k + 1947778 := by
    unfold C
    simp [show (3359232 * k + 649259) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1947778) = 5038848 * k + 973889 := by
    unfold C
    simp [show (10077696 * k + 1947778) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 973889) = 15116544 * k + 2921668 := by
    unfold C
    simp [show (5038848 * k + 973889) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2921668) = 7558272 * k + 1460834 := by
    unfold C
    simp [show (15116544 * k + 2921668) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1460834) = 3779136 * k + 730417 := by
    unfold C
    simp [show (7558272 * k + 1460834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 730417) = 11337408 * k + 2191252 := by
    unfold C
    simp [show (3779136 * k + 730417) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2191252) = 5668704 * k + 1095626 := by
    unfold C
    simp [show (11337408 * k + 2191252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1095626) = 2834352 * k + 547813 := by
    unfold C
    simp [show (5668704 * k + 1095626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 547813) = 8503056 * k + 1643440 := by
    unfold C
    simp [show (2834352 * k + 547813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1643440) = 4251528 * k + 821720 := by
    unfold C
    simp [show (8503056 * k + 1643440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 821720) = 2125764 * k + 410860 := by
    unfold C
    simp [show (4251528 * k + 821720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 410860) = 1062882 * k + 205430 := by
    unfold C
    simp [show (2125764 * k + 410860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 205430) = 531441 * k + 102715 := by
    unfold C
    simp [show (1062882 * k + 205430) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 202663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 202663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_202687 : ∀ k : Nat,
    iterate (1048576 * k + 202687) 32 = 531441 * k + 102727 ∧
      531441 * k + 102727 < 1048576 * k + 202687 := by
  intro k
  have h1 : C (1048576 * k + 202687) = 3145728 * k + 608062 := by
    unfold C
    simp [show (1048576 * k + 202687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 608062) = 1572864 * k + 304031 := by
    unfold C
    simp [show (3145728 * k + 608062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 304031) = 4718592 * k + 912094 := by
    unfold C
    simp [show (1572864 * k + 304031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 912094) = 2359296 * k + 456047 := by
    unfold C
    simp [show (4718592 * k + 912094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 456047) = 7077888 * k + 1368142 := by
    unfold C
    simp [show (2359296 * k + 456047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1368142) = 3538944 * k + 684071 := by
    unfold C
    simp [show (7077888 * k + 1368142) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 684071) = 10616832 * k + 2052214 := by
    unfold C
    simp [show (3538944 * k + 684071) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2052214) = 5308416 * k + 1026107 := by
    unfold C
    simp [show (10616832 * k + 2052214) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1026107) = 15925248 * k + 3078322 := by
    unfold C
    simp [show (5308416 * k + 1026107) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3078322) = 7962624 * k + 1539161 := by
    unfold C
    simp [show (15925248 * k + 3078322) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1539161) = 23887872 * k + 4617484 := by
    unfold C
    simp [show (7962624 * k + 1539161) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4617484) = 11943936 * k + 2308742 := by
    unfold C
    simp [show (23887872 * k + 4617484) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2308742) = 5971968 * k + 1154371 := by
    unfold C
    simp [show (11943936 * k + 2308742) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1154371) = 17915904 * k + 3463114 := by
    unfold C
    simp [show (5971968 * k + 1154371) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3463114) = 8957952 * k + 1731557 := by
    unfold C
    simp [show (17915904 * k + 3463114) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1731557) = 26873856 * k + 5194672 := by
    unfold C
    simp [show (8957952 * k + 1731557) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5194672) = 13436928 * k + 2597336 := by
    unfold C
    simp [show (26873856 * k + 5194672) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2597336) = 6718464 * k + 1298668 := by
    unfold C
    simp [show (13436928 * k + 2597336) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1298668) = 3359232 * k + 649334 := by
    unfold C
    simp [show (6718464 * k + 1298668) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 649334) = 1679616 * k + 324667 := by
    unfold C
    simp [show (3359232 * k + 649334) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 324667) = 5038848 * k + 974002 := by
    unfold C
    simp [show (1679616 * k + 324667) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 974002) = 2519424 * k + 487001 := by
    unfold C
    simp [show (5038848 * k + 974002) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 487001) = 7558272 * k + 1461004 := by
    unfold C
    simp [show (2519424 * k + 487001) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1461004) = 3779136 * k + 730502 := by
    unfold C
    simp [show (7558272 * k + 1461004) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 730502) = 1889568 * k + 365251 := by
    unfold C
    simp [show (3779136 * k + 730502) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 365251) = 5668704 * k + 1095754 := by
    unfold C
    simp [show (1889568 * k + 365251) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1095754) = 2834352 * k + 547877 := by
    unfold C
    simp [show (5668704 * k + 1095754) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 547877) = 8503056 * k + 1643632 := by
    unfold C
    simp [show (2834352 * k + 547877) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1643632) = 4251528 * k + 821816 := by
    unfold C
    simp [show (8503056 * k + 1643632) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 821816) = 2125764 * k + 410908 := by
    unfold C
    simp [show (4251528 * k + 821816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 410908) = 1062882 * k + 205454 := by
    unfold C
    simp [show (2125764 * k + 410908) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 205454) = 531441 * k + 102727 := by
    unfold C
    simp [show (1062882 * k + 205454) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 202687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 202687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_202991 : ∀ k : Nat,
    iterate (1048576 * k + 202991) 32 = 531441 * k + 102881 ∧
      531441 * k + 102881 < 1048576 * k + 202991 := by
  intro k
  have h1 : C (1048576 * k + 202991) = 3145728 * k + 608974 := by
    unfold C
    simp [show (1048576 * k + 202991) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 608974) = 1572864 * k + 304487 := by
    unfold C
    simp [show (3145728 * k + 608974) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 304487) = 4718592 * k + 913462 := by
    unfold C
    simp [show (1572864 * k + 304487) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 913462) = 2359296 * k + 456731 := by
    unfold C
    simp [show (4718592 * k + 913462) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 456731) = 7077888 * k + 1370194 := by
    unfold C
    simp [show (2359296 * k + 456731) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1370194) = 3538944 * k + 685097 := by
    unfold C
    simp [show (7077888 * k + 1370194) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 685097) = 10616832 * k + 2055292 := by
    unfold C
    simp [show (3538944 * k + 685097) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2055292) = 5308416 * k + 1027646 := by
    unfold C
    simp [show (10616832 * k + 2055292) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1027646) = 2654208 * k + 513823 := by
    unfold C
    simp [show (5308416 * k + 1027646) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 513823) = 7962624 * k + 1541470 := by
    unfold C
    simp [show (2654208 * k + 513823) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1541470) = 3981312 * k + 770735 := by
    unfold C
    simp [show (7962624 * k + 1541470) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 770735) = 11943936 * k + 2312206 := by
    unfold C
    simp [show (3981312 * k + 770735) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2312206) = 5971968 * k + 1156103 := by
    unfold C
    simp [show (11943936 * k + 2312206) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1156103) = 17915904 * k + 3468310 := by
    unfold C
    simp [show (5971968 * k + 1156103) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3468310) = 8957952 * k + 1734155 := by
    unfold C
    simp [show (17915904 * k + 3468310) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1734155) = 26873856 * k + 5202466 := by
    unfold C
    simp [show (8957952 * k + 1734155) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5202466) = 13436928 * k + 2601233 := by
    unfold C
    simp [show (26873856 * k + 5202466) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2601233) = 40310784 * k + 7803700 := by
    unfold C
    simp [show (13436928 * k + 2601233) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 7803700) = 20155392 * k + 3901850 := by
    unfold C
    simp [show (40310784 * k + 7803700) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 3901850) = 10077696 * k + 1950925 := by
    unfold C
    simp [show (20155392 * k + 3901850) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1950925) = 30233088 * k + 5852776 := by
    unfold C
    simp [show (10077696 * k + 1950925) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 5852776) = 15116544 * k + 2926388 := by
    unfold C
    simp [show (30233088 * k + 5852776) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 2926388) = 7558272 * k + 1463194 := by
    unfold C
    simp [show (15116544 * k + 2926388) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1463194) = 3779136 * k + 731597 := by
    unfold C
    simp [show (7558272 * k + 1463194) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 731597) = 11337408 * k + 2194792 := by
    unfold C
    simp [show (3779136 * k + 731597) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2194792) = 5668704 * k + 1097396 := by
    unfold C
    simp [show (11337408 * k + 2194792) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1097396) = 2834352 * k + 548698 := by
    unfold C
    simp [show (5668704 * k + 1097396) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 548698) = 1417176 * k + 274349 := by
    unfold C
    simp [show (2834352 * k + 548698) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 274349) = 4251528 * k + 823048 := by
    unfold C
    simp [show (1417176 * k + 274349) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 823048) = 2125764 * k + 411524 := by
    unfold C
    simp [show (4251528 * k + 823048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 411524) = 1062882 * k + 205762 := by
    unfold C
    simp [show (2125764 * k + 411524) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 205762) = 531441 * k + 102881 := by
    unfold C
    simp [show (1062882 * k + 205762) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 202991) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 202991)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_203007 : ∀ k : Nat,
    iterate (1048576 * k + 203007) 32 = 531441 * k + 102889 ∧
      531441 * k + 102889 < 1048576 * k + 203007 := by
  intro k
  have h1 : C (1048576 * k + 203007) = 3145728 * k + 609022 := by
    unfold C
    simp [show (1048576 * k + 203007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 609022) = 1572864 * k + 304511 := by
    unfold C
    simp [show (3145728 * k + 609022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 304511) = 4718592 * k + 913534 := by
    unfold C
    simp [show (1572864 * k + 304511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 913534) = 2359296 * k + 456767 := by
    unfold C
    simp [show (4718592 * k + 913534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 456767) = 7077888 * k + 1370302 := by
    unfold C
    simp [show (2359296 * k + 456767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1370302) = 3538944 * k + 685151 := by
    unfold C
    simp [show (7077888 * k + 1370302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 685151) = 10616832 * k + 2055454 := by
    unfold C
    simp [show (3538944 * k + 685151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2055454) = 5308416 * k + 1027727 := by
    unfold C
    simp [show (10616832 * k + 2055454) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1027727) = 15925248 * k + 3083182 := by
    unfold C
    simp [show (5308416 * k + 1027727) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3083182) = 7962624 * k + 1541591 := by
    unfold C
    simp [show (15925248 * k + 3083182) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1541591) = 23887872 * k + 4624774 := by
    unfold C
    simp [show (7962624 * k + 1541591) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4624774) = 11943936 * k + 2312387 := by
    unfold C
    simp [show (23887872 * k + 4624774) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2312387) = 35831808 * k + 6937162 := by
    unfold C
    simp [show (11943936 * k + 2312387) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 6937162) = 17915904 * k + 3468581 := by
    unfold C
    simp [show (35831808 * k + 6937162) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3468581) = 53747712 * k + 10405744 := by
    unfold C
    simp [show (17915904 * k + 3468581) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 10405744) = 26873856 * k + 5202872 := by
    unfold C
    simp [show (53747712 * k + 10405744) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5202872) = 13436928 * k + 2601436 := by
    unfold C
    simp [show (26873856 * k + 5202872) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2601436) = 6718464 * k + 1300718 := by
    unfold C
    simp [show (13436928 * k + 2601436) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1300718) = 3359232 * k + 650359 := by
    unfold C
    simp [show (6718464 * k + 1300718) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 650359) = 10077696 * k + 1951078 := by
    unfold C
    simp [show (3359232 * k + 650359) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1951078) = 5038848 * k + 975539 := by
    unfold C
    simp [show (10077696 * k + 1951078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 975539) = 15116544 * k + 2926618 := by
    unfold C
    simp [show (5038848 * k + 975539) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2926618) = 7558272 * k + 1463309 := by
    unfold C
    simp [show (15116544 * k + 2926618) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1463309) = 22674816 * k + 4389928 := by
    unfold C
    simp [show (7558272 * k + 1463309) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 4389928) = 11337408 * k + 2194964 := by
    unfold C
    simp [show (22674816 * k + 4389928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2194964) = 5668704 * k + 1097482 := by
    unfold C
    simp [show (11337408 * k + 2194964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1097482) = 2834352 * k + 548741 := by
    unfold C
    simp [show (5668704 * k + 1097482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 548741) = 8503056 * k + 1646224 := by
    unfold C
    simp [show (2834352 * k + 548741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1646224) = 4251528 * k + 823112 := by
    unfold C
    simp [show (8503056 * k + 1646224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 823112) = 2125764 * k + 411556 := by
    unfold C
    simp [show (4251528 * k + 823112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 411556) = 1062882 * k + 205778 := by
    unfold C
    simp [show (2125764 * k + 411556) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 205778) = 531441 * k + 102889 := by
    unfold C
    simp [show (1062882 * k + 205778) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 203007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 203007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_205287 : ∀ k : Nat,
    iterate (1048576 * k + 205287) 32 = 531441 * k + 104045 ∧
      531441 * k + 104045 < 1048576 * k + 205287 := by
  intro k
  have h1 : C (1048576 * k + 205287) = 3145728 * k + 615862 := by
    unfold C
    simp [show (1048576 * k + 205287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 615862) = 1572864 * k + 307931 := by
    unfold C
    simp [show (3145728 * k + 615862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 307931) = 4718592 * k + 923794 := by
    unfold C
    simp [show (1572864 * k + 307931) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 923794) = 2359296 * k + 461897 := by
    unfold C
    simp [show (4718592 * k + 923794) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 461897) = 7077888 * k + 1385692 := by
    unfold C
    simp [show (2359296 * k + 461897) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1385692) = 3538944 * k + 692846 := by
    unfold C
    simp [show (7077888 * k + 1385692) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 692846) = 1769472 * k + 346423 := by
    unfold C
    simp [show (3538944 * k + 692846) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 346423) = 5308416 * k + 1039270 := by
    unfold C
    simp [show (1769472 * k + 346423) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1039270) = 2654208 * k + 519635 := by
    unfold C
    simp [show (5308416 * k + 1039270) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 519635) = 7962624 * k + 1558906 := by
    unfold C
    simp [show (2654208 * k + 519635) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1558906) = 3981312 * k + 779453 := by
    unfold C
    simp [show (7962624 * k + 1558906) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 779453) = 11943936 * k + 2338360 := by
    unfold C
    simp [show (3981312 * k + 779453) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2338360) = 5971968 * k + 1169180 := by
    unfold C
    simp [show (11943936 * k + 2338360) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1169180) = 2985984 * k + 584590 := by
    unfold C
    simp [show (5971968 * k + 1169180) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 584590) = 1492992 * k + 292295 := by
    unfold C
    simp [show (2985984 * k + 584590) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 292295) = 4478976 * k + 876886 := by
    unfold C
    simp [show (1492992 * k + 292295) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 876886) = 2239488 * k + 438443 := by
    unfold C
    simp [show (4478976 * k + 876886) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 438443) = 6718464 * k + 1315330 := by
    unfold C
    simp [show (2239488 * k + 438443) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1315330) = 3359232 * k + 657665 := by
    unfold C
    simp [show (6718464 * k + 1315330) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 657665) = 10077696 * k + 1972996 := by
    unfold C
    simp [show (3359232 * k + 657665) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1972996) = 5038848 * k + 986498 := by
    unfold C
    simp [show (10077696 * k + 1972996) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 986498) = 2519424 * k + 493249 := by
    unfold C
    simp [show (5038848 * k + 986498) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 493249) = 7558272 * k + 1479748 := by
    unfold C
    simp [show (2519424 * k + 493249) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1479748) = 3779136 * k + 739874 := by
    unfold C
    simp [show (7558272 * k + 1479748) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 739874) = 1889568 * k + 369937 := by
    unfold C
    simp [show (3779136 * k + 739874) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 369937) = 5668704 * k + 1109812 := by
    unfold C
    simp [show (1889568 * k + 369937) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1109812) = 2834352 * k + 554906 := by
    unfold C
    simp [show (5668704 * k + 1109812) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 554906) = 1417176 * k + 277453 := by
    unfold C
    simp [show (2834352 * k + 554906) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 277453) = 4251528 * k + 832360 := by
    unfold C
    simp [show (1417176 * k + 277453) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 832360) = 2125764 * k + 416180 := by
    unfold C
    simp [show (4251528 * k + 832360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 416180) = 1062882 * k + 208090 := by
    unfold C
    simp [show (2125764 * k + 416180) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 208090) = 531441 * k + 104045 := by
    unfold C
    simp [show (1062882 * k + 208090) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 205287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 205287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_205563 : ∀ k : Nat,
    iterate (1048576 * k + 205563) 32 = 531441 * k + 104185 ∧
      531441 * k + 104185 < 1048576 * k + 205563 := by
  intro k
  have h1 : C (1048576 * k + 205563) = 3145728 * k + 616690 := by
    unfold C
    simp [show (1048576 * k + 205563) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 616690) = 1572864 * k + 308345 := by
    unfold C
    simp [show (3145728 * k + 616690) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 308345) = 4718592 * k + 925036 := by
    unfold C
    simp [show (1572864 * k + 308345) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 925036) = 2359296 * k + 462518 := by
    unfold C
    simp [show (4718592 * k + 925036) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 462518) = 1179648 * k + 231259 := by
    unfold C
    simp [show (2359296 * k + 462518) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 231259) = 3538944 * k + 693778 := by
    unfold C
    simp [show (1179648 * k + 231259) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 693778) = 1769472 * k + 346889 := by
    unfold C
    simp [show (3538944 * k + 693778) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 346889) = 5308416 * k + 1040668 := by
    unfold C
    simp [show (1769472 * k + 346889) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1040668) = 2654208 * k + 520334 := by
    unfold C
    simp [show (5308416 * k + 1040668) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 520334) = 1327104 * k + 260167 := by
    unfold C
    simp [show (2654208 * k + 520334) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 260167) = 3981312 * k + 780502 := by
    unfold C
    simp [show (1327104 * k + 260167) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 780502) = 1990656 * k + 390251 := by
    unfold C
    simp [show (3981312 * k + 780502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 390251) = 5971968 * k + 1170754 := by
    unfold C
    simp [show (1990656 * k + 390251) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1170754) = 2985984 * k + 585377 := by
    unfold C
    simp [show (5971968 * k + 1170754) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 585377) = 8957952 * k + 1756132 := by
    unfold C
    simp [show (2985984 * k + 585377) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1756132) = 4478976 * k + 878066 := by
    unfold C
    simp [show (8957952 * k + 1756132) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 878066) = 2239488 * k + 439033 := by
    unfold C
    simp [show (4478976 * k + 878066) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 439033) = 6718464 * k + 1317100 := by
    unfold C
    simp [show (2239488 * k + 439033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1317100) = 3359232 * k + 658550 := by
    unfold C
    simp [show (6718464 * k + 1317100) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 658550) = 1679616 * k + 329275 := by
    unfold C
    simp [show (3359232 * k + 658550) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 329275) = 5038848 * k + 987826 := by
    unfold C
    simp [show (1679616 * k + 329275) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 987826) = 2519424 * k + 493913 := by
    unfold C
    simp [show (5038848 * k + 987826) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 493913) = 7558272 * k + 1481740 := by
    unfold C
    simp [show (2519424 * k + 493913) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1481740) = 3779136 * k + 740870 := by
    unfold C
    simp [show (7558272 * k + 1481740) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 740870) = 1889568 * k + 370435 := by
    unfold C
    simp [show (3779136 * k + 740870) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 370435) = 5668704 * k + 1111306 := by
    unfold C
    simp [show (1889568 * k + 370435) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1111306) = 2834352 * k + 555653 := by
    unfold C
    simp [show (5668704 * k + 1111306) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 555653) = 8503056 * k + 1666960 := by
    unfold C
    simp [show (2834352 * k + 555653) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1666960) = 4251528 * k + 833480 := by
    unfold C
    simp [show (8503056 * k + 1666960) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 833480) = 2125764 * k + 416740 := by
    unfold C
    simp [show (4251528 * k + 833480) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 416740) = 1062882 * k + 208370 := by
    unfold C
    simp [show (2125764 * k + 416740) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 208370) = 531441 * k + 104185 := by
    unfold C
    simp [show (1062882 * k + 208370) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 205563) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 205563)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_206079 : ∀ k : Nat,
    iterate (1048576 * k + 206079) 32 = 531441 * k + 104446 ∧
      531441 * k + 104446 < 1048576 * k + 206079 := by
  intro k
  have h1 : C (1048576 * k + 206079) = 3145728 * k + 618238 := by
    unfold C
    simp [show (1048576 * k + 206079) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 618238) = 1572864 * k + 309119 := by
    unfold C
    simp [show (3145728 * k + 618238) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 309119) = 4718592 * k + 927358 := by
    unfold C
    simp [show (1572864 * k + 309119) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 927358) = 2359296 * k + 463679 := by
    unfold C
    simp [show (4718592 * k + 927358) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 463679) = 7077888 * k + 1391038 := by
    unfold C
    simp [show (2359296 * k + 463679) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1391038) = 3538944 * k + 695519 := by
    unfold C
    simp [show (7077888 * k + 1391038) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 695519) = 10616832 * k + 2086558 := by
    unfold C
    simp [show (3538944 * k + 695519) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2086558) = 5308416 * k + 1043279 := by
    unfold C
    simp [show (10616832 * k + 2086558) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1043279) = 15925248 * k + 3129838 := by
    unfold C
    simp [show (5308416 * k + 1043279) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3129838) = 7962624 * k + 1564919 := by
    unfold C
    simp [show (15925248 * k + 3129838) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1564919) = 23887872 * k + 4694758 := by
    unfold C
    simp [show (7962624 * k + 1564919) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4694758) = 11943936 * k + 2347379 := by
    unfold C
    simp [show (23887872 * k + 4694758) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2347379) = 35831808 * k + 7042138 := by
    unfold C
    simp [show (11943936 * k + 2347379) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7042138) = 17915904 * k + 3521069 := by
    unfold C
    simp [show (35831808 * k + 7042138) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3521069) = 53747712 * k + 10563208 := by
    unfold C
    simp [show (17915904 * k + 3521069) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 10563208) = 26873856 * k + 5281604 := by
    unfold C
    simp [show (53747712 * k + 10563208) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5281604) = 13436928 * k + 2640802 := by
    unfold C
    simp [show (26873856 * k + 5281604) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2640802) = 6718464 * k + 1320401 := by
    unfold C
    simp [show (13436928 * k + 2640802) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1320401) = 20155392 * k + 3961204 := by
    unfold C
    simp [show (6718464 * k + 1320401) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 3961204) = 10077696 * k + 1980602 := by
    unfold C
    simp [show (20155392 * k + 3961204) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 1980602) = 5038848 * k + 990301 := by
    unfold C
    simp [show (10077696 * k + 1980602) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 990301) = 15116544 * k + 2970904 := by
    unfold C
    simp [show (5038848 * k + 990301) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 2970904) = 7558272 * k + 1485452 := by
    unfold C
    simp [show (15116544 * k + 2970904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1485452) = 3779136 * k + 742726 := by
    unfold C
    simp [show (7558272 * k + 1485452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 742726) = 1889568 * k + 371363 := by
    unfold C
    simp [show (3779136 * k + 742726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 371363) = 5668704 * k + 1114090 := by
    unfold C
    simp [show (1889568 * k + 371363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1114090) = 2834352 * k + 557045 := by
    unfold C
    simp [show (5668704 * k + 1114090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 557045) = 8503056 * k + 1671136 := by
    unfold C
    simp [show (2834352 * k + 557045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1671136) = 4251528 * k + 835568 := by
    unfold C
    simp [show (8503056 * k + 1671136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 835568) = 2125764 * k + 417784 := by
    unfold C
    simp [show (4251528 * k + 835568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 417784) = 1062882 * k + 208892 := by
    unfold C
    simp [show (2125764 * k + 417784) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 208892) = 531441 * k + 104446 := by
    unfold C
    simp [show (1062882 * k + 208892) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 206079) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 206079)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_207055 : ∀ k : Nat,
    iterate (1048576 * k + 207055) 32 = 531441 * k + 104941 ∧
      531441 * k + 104941 < 1048576 * k + 207055 := by
  intro k
  have h1 : C (1048576 * k + 207055) = 3145728 * k + 621166 := by
    unfold C
    simp [show (1048576 * k + 207055) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 621166) = 1572864 * k + 310583 := by
    unfold C
    simp [show (3145728 * k + 621166) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 310583) = 4718592 * k + 931750 := by
    unfold C
    simp [show (1572864 * k + 310583) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 931750) = 2359296 * k + 465875 := by
    unfold C
    simp [show (4718592 * k + 931750) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 465875) = 7077888 * k + 1397626 := by
    unfold C
    simp [show (2359296 * k + 465875) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1397626) = 3538944 * k + 698813 := by
    unfold C
    simp [show (7077888 * k + 1397626) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 698813) = 10616832 * k + 2096440 := by
    unfold C
    simp [show (3538944 * k + 698813) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2096440) = 5308416 * k + 1048220 := by
    unfold C
    simp [show (10616832 * k + 2096440) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1048220) = 2654208 * k + 524110 := by
    unfold C
    simp [show (5308416 * k + 1048220) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 524110) = 1327104 * k + 262055 := by
    unfold C
    simp [show (2654208 * k + 524110) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 262055) = 3981312 * k + 786166 := by
    unfold C
    simp [show (1327104 * k + 262055) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 786166) = 1990656 * k + 393083 := by
    unfold C
    simp [show (3981312 * k + 786166) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 393083) = 5971968 * k + 1179250 := by
    unfold C
    simp [show (1990656 * k + 393083) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1179250) = 2985984 * k + 589625 := by
    unfold C
    simp [show (5971968 * k + 1179250) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 589625) = 8957952 * k + 1768876 := by
    unfold C
    simp [show (2985984 * k + 589625) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 1768876) = 4478976 * k + 884438 := by
    unfold C
    simp [show (8957952 * k + 1768876) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 884438) = 2239488 * k + 442219 := by
    unfold C
    simp [show (4478976 * k + 884438) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 442219) = 6718464 * k + 1326658 := by
    unfold C
    simp [show (2239488 * k + 442219) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1326658) = 3359232 * k + 663329 := by
    unfold C
    simp [show (6718464 * k + 1326658) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 663329) = 10077696 * k + 1989988 := by
    unfold C
    simp [show (3359232 * k + 663329) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1989988) = 5038848 * k + 994994 := by
    unfold C
    simp [show (10077696 * k + 1989988) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 994994) = 2519424 * k + 497497 := by
    unfold C
    simp [show (5038848 * k + 994994) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 497497) = 7558272 * k + 1492492 := by
    unfold C
    simp [show (2519424 * k + 497497) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1492492) = 3779136 * k + 746246 := by
    unfold C
    simp [show (7558272 * k + 1492492) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 746246) = 1889568 * k + 373123 := by
    unfold C
    simp [show (3779136 * k + 746246) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 373123) = 5668704 * k + 1119370 := by
    unfold C
    simp [show (1889568 * k + 373123) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1119370) = 2834352 * k + 559685 := by
    unfold C
    simp [show (5668704 * k + 1119370) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 559685) = 8503056 * k + 1679056 := by
    unfold C
    simp [show (2834352 * k + 559685) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1679056) = 4251528 * k + 839528 := by
    unfold C
    simp [show (8503056 * k + 1679056) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 839528) = 2125764 * k + 419764 := by
    unfold C
    simp [show (4251528 * k + 839528) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 419764) = 1062882 * k + 209882 := by
    unfold C
    simp [show (2125764 * k + 419764) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 209882) = 531441 * k + 104941 := by
    unfold C
    simp [show (1062882 * k + 209882) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 207055) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 207055)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_207103 : ∀ k : Nat,
    iterate (1048576 * k + 207103) 32 = 531441 * k + 104965 ∧
      531441 * k + 104965 < 1048576 * k + 207103 := by
  intro k
  have h1 : C (1048576 * k + 207103) = 3145728 * k + 621310 := by
    unfold C
    simp [show (1048576 * k + 207103) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 621310) = 1572864 * k + 310655 := by
    unfold C
    simp [show (3145728 * k + 621310) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 310655) = 4718592 * k + 931966 := by
    unfold C
    simp [show (1572864 * k + 310655) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 931966) = 2359296 * k + 465983 := by
    unfold C
    simp [show (4718592 * k + 931966) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 465983) = 7077888 * k + 1397950 := by
    unfold C
    simp [show (2359296 * k + 465983) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1397950) = 3538944 * k + 698975 := by
    unfold C
    simp [show (7077888 * k + 1397950) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 698975) = 10616832 * k + 2096926 := by
    unfold C
    simp [show (3538944 * k + 698975) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2096926) = 5308416 * k + 1048463 := by
    unfold C
    simp [show (10616832 * k + 2096926) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1048463) = 15925248 * k + 3145390 := by
    unfold C
    simp [show (5308416 * k + 1048463) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3145390) = 7962624 * k + 1572695 := by
    unfold C
    simp [show (15925248 * k + 3145390) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1572695) = 23887872 * k + 4718086 := by
    unfold C
    simp [show (7962624 * k + 1572695) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 4718086) = 11943936 * k + 2359043 := by
    unfold C
    simp [show (23887872 * k + 4718086) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 2359043) = 35831808 * k + 7077130 := by
    unfold C
    simp [show (11943936 * k + 2359043) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 7077130) = 17915904 * k + 3538565 := by
    unfold C
    simp [show (35831808 * k + 7077130) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 3538565) = 53747712 * k + 10615696 := by
    unfold C
    simp [show (17915904 * k + 3538565) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 10615696) = 26873856 * k + 5307848 := by
    unfold C
    simp [show (53747712 * k + 10615696) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 5307848) = 13436928 * k + 2653924 := by
    unfold C
    simp [show (26873856 * k + 5307848) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2653924) = 6718464 * k + 1326962 := by
    unfold C
    simp [show (13436928 * k + 2653924) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1326962) = 3359232 * k + 663481 := by
    unfold C
    simp [show (6718464 * k + 1326962) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 663481) = 10077696 * k + 1990444 := by
    unfold C
    simp [show (3359232 * k + 663481) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 1990444) = 5038848 * k + 995222 := by
    unfold C
    simp [show (10077696 * k + 1990444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 995222) = 2519424 * k + 497611 := by
    unfold C
    simp [show (5038848 * k + 995222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 497611) = 7558272 * k + 1492834 := by
    unfold C
    simp [show (2519424 * k + 497611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1492834) = 3779136 * k + 746417 := by
    unfold C
    simp [show (7558272 * k + 1492834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 746417) = 11337408 * k + 2239252 := by
    unfold C
    simp [show (3779136 * k + 746417) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2239252) = 5668704 * k + 1119626 := by
    unfold C
    simp [show (11337408 * k + 2239252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1119626) = 2834352 * k + 559813 := by
    unfold C
    simp [show (5668704 * k + 1119626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 559813) = 8503056 * k + 1679440 := by
    unfold C
    simp [show (2834352 * k + 559813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 1679440) = 4251528 * k + 839720 := by
    unfold C
    simp [show (8503056 * k + 1679440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 839720) = 2125764 * k + 419860 := by
    unfold C
    simp [show (4251528 * k + 839720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 419860) = 1062882 * k + 209930 := by
    unfold C
    simp [show (2125764 * k + 419860) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 209930) = 531441 * k + 104965 := by
    unfold C
    simp [show (1062882 * k + 209930) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 207103) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 207103)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_207311 : ∀ k : Nat,
    iterate (1048576 * k + 207311) 32 = 531441 * k + 105071 ∧
      531441 * k + 105071 < 1048576 * k + 207311 := by
  intro k
  have h1 : C (1048576 * k + 207311) = 3145728 * k + 621934 := by
    unfold C
    simp [show (1048576 * k + 207311) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 621934) = 1572864 * k + 310967 := by
    unfold C
    simp [show (3145728 * k + 621934) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 310967) = 4718592 * k + 932902 := by
    unfold C
    simp [show (1572864 * k + 310967) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 932902) = 2359296 * k + 466451 := by
    unfold C
    simp [show (4718592 * k + 932902) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 466451) = 7077888 * k + 1399354 := by
    unfold C
    simp [show (2359296 * k + 466451) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1399354) = 3538944 * k + 699677 := by
    unfold C
    simp [show (7077888 * k + 1399354) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 699677) = 10616832 * k + 2099032 := by
    unfold C
    simp [show (3538944 * k + 699677) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2099032) = 5308416 * k + 1049516 := by
    unfold C
    simp [show (10616832 * k + 2099032) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1049516) = 2654208 * k + 524758 := by
    unfold C
    simp [show (5308416 * k + 1049516) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 524758) = 1327104 * k + 262379 := by
    unfold C
    simp [show (2654208 * k + 524758) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 262379) = 3981312 * k + 787138 := by
    unfold C
    simp [show (1327104 * k + 262379) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 787138) = 1990656 * k + 393569 := by
    unfold C
    simp [show (3981312 * k + 787138) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 393569) = 5971968 * k + 1180708 := by
    unfold C
    simp [show (1990656 * k + 393569) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1180708) = 2985984 * k + 590354 := by
    unfold C
    simp [show (5971968 * k + 1180708) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 590354) = 1492992 * k + 295177 := by
    unfold C
    simp [show (2985984 * k + 590354) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 295177) = 4478976 * k + 885532 := by
    unfold C
    simp [show (1492992 * k + 295177) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 885532) = 2239488 * k + 442766 := by
    unfold C
    simp [show (4478976 * k + 885532) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 442766) = 1119744 * k + 221383 := by
    unfold C
    simp [show (2239488 * k + 442766) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 221383) = 3359232 * k + 664150 := by
    unfold C
    simp [show (1119744 * k + 221383) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 664150) = 1679616 * k + 332075 := by
    unfold C
    simp [show (3359232 * k + 664150) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 332075) = 5038848 * k + 996226 := by
    unfold C
    simp [show (1679616 * k + 332075) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 996226) = 2519424 * k + 498113 := by
    unfold C
    simp [show (5038848 * k + 996226) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 498113) = 7558272 * k + 1494340 := by
    unfold C
    simp [show (2519424 * k + 498113) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1494340) = 3779136 * k + 747170 := by
    unfold C
    simp [show (7558272 * k + 1494340) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 747170) = 1889568 * k + 373585 := by
    unfold C
    simp [show (3779136 * k + 747170) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 373585) = 5668704 * k + 1120756 := by
    unfold C
    simp [show (1889568 * k + 373585) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1120756) = 2834352 * k + 560378 := by
    unfold C
    simp [show (5668704 * k + 1120756) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 560378) = 1417176 * k + 280189 := by
    unfold C
    simp [show (2834352 * k + 560378) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 280189) = 4251528 * k + 840568 := by
    unfold C
    simp [show (1417176 * k + 280189) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 840568) = 2125764 * k + 420284 := by
    unfold C
    simp [show (4251528 * k + 840568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 420284) = 1062882 * k + 210142 := by
    unfold C
    simp [show (2125764 * k + 420284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 210142) = 531441 * k + 105071 := by
    unfold C
    simp [show (1062882 * k + 210142) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 207311) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 207311)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_207519 : ∀ k : Nat,
    iterate (1048576 * k + 207519) 32 = 531441 * k + 105176 ∧
      531441 * k + 105176 < 1048576 * k + 207519 := by
  intro k
  have h1 : C (1048576 * k + 207519) = 3145728 * k + 622558 := by
    unfold C
    simp [show (1048576 * k + 207519) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 622558) = 1572864 * k + 311279 := by
    unfold C
    simp [show (3145728 * k + 622558) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 311279) = 4718592 * k + 933838 := by
    unfold C
    simp [show (1572864 * k + 311279) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 933838) = 2359296 * k + 466919 := by
    unfold C
    simp [show (4718592 * k + 933838) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 466919) = 7077888 * k + 1400758 := by
    unfold C
    simp [show (2359296 * k + 466919) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1400758) = 3538944 * k + 700379 := by
    unfold C
    simp [show (7077888 * k + 1400758) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 700379) = 10616832 * k + 2101138 := by
    unfold C
    simp [show (3538944 * k + 700379) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2101138) = 5308416 * k + 1050569 := by
    unfold C
    simp [show (10616832 * k + 2101138) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1050569) = 15925248 * k + 3151708 := by
    unfold C
    simp [show (5308416 * k + 1050569) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3151708) = 7962624 * k + 1575854 := by
    unfold C
    simp [show (15925248 * k + 3151708) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1575854) = 3981312 * k + 787927 := by
    unfold C
    simp [show (7962624 * k + 1575854) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 787927) = 11943936 * k + 2363782 := by
    unfold C
    simp [show (3981312 * k + 787927) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2363782) = 5971968 * k + 1181891 := by
    unfold C
    simp [show (11943936 * k + 2363782) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1181891) = 17915904 * k + 3545674 := by
    unfold C
    simp [show (5971968 * k + 1181891) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 3545674) = 8957952 * k + 1772837 := by
    unfold C
    simp [show (17915904 * k + 3545674) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 1772837) = 26873856 * k + 5318512 := by
    unfold C
    simp [show (8957952 * k + 1772837) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 5318512) = 13436928 * k + 2659256 := by
    unfold C
    simp [show (26873856 * k + 5318512) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 2659256) = 6718464 * k + 1329628 := by
    unfold C
    simp [show (13436928 * k + 2659256) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1329628) = 3359232 * k + 664814 := by
    unfold C
    simp [show (6718464 * k + 1329628) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 664814) = 1679616 * k + 332407 := by
    unfold C
    simp [show (3359232 * k + 664814) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 332407) = 5038848 * k + 997222 := by
    unfold C
    simp [show (1679616 * k + 332407) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 997222) = 2519424 * k + 498611 := by
    unfold C
    simp [show (5038848 * k + 997222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 498611) = 7558272 * k + 1495834 := by
    unfold C
    simp [show (2519424 * k + 498611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1495834) = 3779136 * k + 747917 := by
    unfold C
    simp [show (7558272 * k + 1495834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 747917) = 11337408 * k + 2243752 := by
    unfold C
    simp [show (3779136 * k + 747917) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2243752) = 5668704 * k + 1121876 := by
    unfold C
    simp [show (11337408 * k + 2243752) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1121876) = 2834352 * k + 560938 := by
    unfold C
    simp [show (5668704 * k + 1121876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 560938) = 1417176 * k + 280469 := by
    unfold C
    simp [show (2834352 * k + 560938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 280469) = 4251528 * k + 841408 := by
    unfold C
    simp [show (1417176 * k + 280469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 841408) = 2125764 * k + 420704 := by
    unfold C
    simp [show (4251528 * k + 841408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 420704) = 1062882 * k + 210352 := by
    unfold C
    simp [show (2125764 * k + 420704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 210352) = 531441 * k + 105176 := by
    unfold C
    simp [show (1062882 * k + 210352) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 207519) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 207519)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard028
