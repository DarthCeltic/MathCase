import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard087

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_673647 : ∀ k : Nat,
    iterate (1048576 * k + 673647) 32 = 531441 * k + 341420 ∧
      531441 * k + 341420 < 1048576 * k + 673647 := by
  intro k
  have h1 : C (1048576 * k + 673647) = 3145728 * k + 2020942 := by
    unfold C
    simp [show (1048576 * k + 673647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2020942) = 1572864 * k + 1010471 := by
    unfold C
    simp [show (3145728 * k + 2020942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1010471) = 4718592 * k + 3031414 := by
    unfold C
    simp [show (1572864 * k + 1010471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3031414) = 2359296 * k + 1515707 := by
    unfold C
    simp [show (4718592 * k + 3031414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1515707) = 7077888 * k + 4547122 := by
    unfold C
    simp [show (2359296 * k + 1515707) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4547122) = 3538944 * k + 2273561 := by
    unfold C
    simp [show (7077888 * k + 4547122) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2273561) = 10616832 * k + 6820684 := by
    unfold C
    simp [show (3538944 * k + 2273561) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6820684) = 5308416 * k + 3410342 := by
    unfold C
    simp [show (10616832 * k + 6820684) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3410342) = 2654208 * k + 1705171 := by
    unfold C
    simp [show (5308416 * k + 3410342) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1705171) = 7962624 * k + 5115514 := by
    unfold C
    simp [show (2654208 * k + 1705171) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5115514) = 3981312 * k + 2557757 := by
    unfold C
    simp [show (7962624 * k + 5115514) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2557757) = 11943936 * k + 7673272 := by
    unfold C
    simp [show (3981312 * k + 2557757) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7673272) = 5971968 * k + 3836636 := by
    unfold C
    simp [show (11943936 * k + 7673272) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3836636) = 2985984 * k + 1918318 := by
    unfold C
    simp [show (5971968 * k + 3836636) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1918318) = 1492992 * k + 959159 := by
    unfold C
    simp [show (2985984 * k + 1918318) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 959159) = 4478976 * k + 2877478 := by
    unfold C
    simp [show (1492992 * k + 959159) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2877478) = 2239488 * k + 1438739 := by
    unfold C
    simp [show (4478976 * k + 2877478) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1438739) = 6718464 * k + 4316218 := by
    unfold C
    simp [show (2239488 * k + 1438739) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4316218) = 3359232 * k + 2158109 := by
    unfold C
    simp [show (6718464 * k + 4316218) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2158109) = 10077696 * k + 6474328 := by
    unfold C
    simp [show (3359232 * k + 2158109) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6474328) = 5038848 * k + 3237164 := by
    unfold C
    simp [show (10077696 * k + 6474328) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3237164) = 2519424 * k + 1618582 := by
    unfold C
    simp [show (5038848 * k + 3237164) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1618582) = 1259712 * k + 809291 := by
    unfold C
    simp [show (2519424 * k + 1618582) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 809291) = 3779136 * k + 2427874 := by
    unfold C
    simp [show (1259712 * k + 809291) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2427874) = 1889568 * k + 1213937 := by
    unfold C
    simp [show (3779136 * k + 2427874) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1213937) = 5668704 * k + 3641812 := by
    unfold C
    simp [show (1889568 * k + 1213937) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3641812) = 2834352 * k + 1820906 := by
    unfold C
    simp [show (5668704 * k + 3641812) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1820906) = 1417176 * k + 910453 := by
    unfold C
    simp [show (2834352 * k + 1820906) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 910453) = 4251528 * k + 2731360 := by
    unfold C
    simp [show (1417176 * k + 910453) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2731360) = 2125764 * k + 1365680 := by
    unfold C
    simp [show (4251528 * k + 2731360) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1365680) = 1062882 * k + 682840 := by
    unfold C
    simp [show (2125764 * k + 1365680) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 682840) = 531441 * k + 341420 := by
    unfold C
    simp [show (1062882 * k + 682840) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 673647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 673647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_674119 : ∀ k : Nat,
    iterate (1048576 * k + 674119) 32 = 531441 * k + 341659 ∧
      531441 * k + 341659 < 1048576 * k + 674119 := by
  intro k
  have h1 : C (1048576 * k + 674119) = 3145728 * k + 2022358 := by
    unfold C
    simp [show (1048576 * k + 674119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2022358) = 1572864 * k + 1011179 := by
    unfold C
    simp [show (3145728 * k + 2022358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1011179) = 4718592 * k + 3033538 := by
    unfold C
    simp [show (1572864 * k + 1011179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3033538) = 2359296 * k + 1516769 := by
    unfold C
    simp [show (4718592 * k + 3033538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1516769) = 7077888 * k + 4550308 := by
    unfold C
    simp [show (2359296 * k + 1516769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4550308) = 3538944 * k + 2275154 := by
    unfold C
    simp [show (7077888 * k + 4550308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2275154) = 1769472 * k + 1137577 := by
    unfold C
    simp [show (3538944 * k + 2275154) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1137577) = 5308416 * k + 3412732 := by
    unfold C
    simp [show (1769472 * k + 1137577) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3412732) = 2654208 * k + 1706366 := by
    unfold C
    simp [show (5308416 * k + 3412732) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1706366) = 1327104 * k + 853183 := by
    unfold C
    simp [show (2654208 * k + 1706366) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 853183) = 3981312 * k + 2559550 := by
    unfold C
    simp [show (1327104 * k + 853183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2559550) = 1990656 * k + 1279775 := by
    unfold C
    simp [show (3981312 * k + 2559550) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1279775) = 5971968 * k + 3839326 := by
    unfold C
    simp [show (1990656 * k + 1279775) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3839326) = 2985984 * k + 1919663 := by
    unfold C
    simp [show (5971968 * k + 3839326) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1919663) = 8957952 * k + 5758990 := by
    unfold C
    simp [show (2985984 * k + 1919663) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5758990) = 4478976 * k + 2879495 := by
    unfold C
    simp [show (8957952 * k + 5758990) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2879495) = 13436928 * k + 8638486 := by
    unfold C
    simp [show (4478976 * k + 2879495) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8638486) = 6718464 * k + 4319243 := by
    unfold C
    simp [show (13436928 * k + 8638486) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4319243) = 20155392 * k + 12957730 := by
    unfold C
    simp [show (6718464 * k + 4319243) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12957730) = 10077696 * k + 6478865 := by
    unfold C
    simp [show (20155392 * k + 12957730) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6478865) = 30233088 * k + 19436596 := by
    unfold C
    simp [show (10077696 * k + 6478865) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19436596) = 15116544 * k + 9718298 := by
    unfold C
    simp [show (30233088 * k + 19436596) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9718298) = 7558272 * k + 4859149 := by
    unfold C
    simp [show (15116544 * k + 9718298) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4859149) = 22674816 * k + 14577448 := by
    unfold C
    simp [show (7558272 * k + 4859149) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14577448) = 11337408 * k + 7288724 := by
    unfold C
    simp [show (22674816 * k + 14577448) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7288724) = 5668704 * k + 3644362 := by
    unfold C
    simp [show (11337408 * k + 7288724) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3644362) = 2834352 * k + 1822181 := by
    unfold C
    simp [show (5668704 * k + 3644362) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1822181) = 8503056 * k + 5466544 := by
    unfold C
    simp [show (2834352 * k + 1822181) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5466544) = 4251528 * k + 2733272 := by
    unfold C
    simp [show (8503056 * k + 5466544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2733272) = 2125764 * k + 1366636 := by
    unfold C
    simp [show (4251528 * k + 2733272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1366636) = 1062882 * k + 683318 := by
    unfold C
    simp [show (2125764 * k + 1366636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 683318) = 531441 * k + 341659 := by
    unfold C
    simp [show (1062882 * k + 683318) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 674119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 674119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_674287 : ∀ k : Nat,
    iterate (1048576 * k + 674287) 32 = 531441 * k + 341744 ∧
      531441 * k + 341744 < 1048576 * k + 674287 := by
  intro k
  have h1 : C (1048576 * k + 674287) = 3145728 * k + 2022862 := by
    unfold C
    simp [show (1048576 * k + 674287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2022862) = 1572864 * k + 1011431 := by
    unfold C
    simp [show (3145728 * k + 2022862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1011431) = 4718592 * k + 3034294 := by
    unfold C
    simp [show (1572864 * k + 1011431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3034294) = 2359296 * k + 1517147 := by
    unfold C
    simp [show (4718592 * k + 3034294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1517147) = 7077888 * k + 4551442 := by
    unfold C
    simp [show (2359296 * k + 1517147) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4551442) = 3538944 * k + 2275721 := by
    unfold C
    simp [show (7077888 * k + 4551442) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2275721) = 10616832 * k + 6827164 := by
    unfold C
    simp [show (3538944 * k + 2275721) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6827164) = 5308416 * k + 3413582 := by
    unfold C
    simp [show (10616832 * k + 6827164) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3413582) = 2654208 * k + 1706791 := by
    unfold C
    simp [show (5308416 * k + 3413582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1706791) = 7962624 * k + 5120374 := by
    unfold C
    simp [show (2654208 * k + 1706791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5120374) = 3981312 * k + 2560187 := by
    unfold C
    simp [show (7962624 * k + 5120374) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2560187) = 11943936 * k + 7680562 := by
    unfold C
    simp [show (3981312 * k + 2560187) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7680562) = 5971968 * k + 3840281 := by
    unfold C
    simp [show (11943936 * k + 7680562) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3840281) = 17915904 * k + 11520844 := by
    unfold C
    simp [show (5971968 * k + 3840281) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11520844) = 8957952 * k + 5760422 := by
    unfold C
    simp [show (17915904 * k + 11520844) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5760422) = 4478976 * k + 2880211 := by
    unfold C
    simp [show (8957952 * k + 5760422) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2880211) = 13436928 * k + 8640634 := by
    unfold C
    simp [show (4478976 * k + 2880211) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8640634) = 6718464 * k + 4320317 := by
    unfold C
    simp [show (13436928 * k + 8640634) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4320317) = 20155392 * k + 12960952 := by
    unfold C
    simp [show (6718464 * k + 4320317) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12960952) = 10077696 * k + 6480476 := by
    unfold C
    simp [show (20155392 * k + 12960952) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6480476) = 5038848 * k + 3240238 := by
    unfold C
    simp [show (10077696 * k + 6480476) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3240238) = 2519424 * k + 1620119 := by
    unfold C
    simp [show (5038848 * k + 3240238) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1620119) = 7558272 * k + 4860358 := by
    unfold C
    simp [show (2519424 * k + 1620119) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4860358) = 3779136 * k + 2430179 := by
    unfold C
    simp [show (7558272 * k + 4860358) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2430179) = 11337408 * k + 7290538 := by
    unfold C
    simp [show (3779136 * k + 2430179) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7290538) = 5668704 * k + 3645269 := by
    unfold C
    simp [show (11337408 * k + 7290538) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3645269) = 17006112 * k + 10935808 := by
    unfold C
    simp [show (5668704 * k + 3645269) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10935808) = 8503056 * k + 5467904 := by
    unfold C
    simp [show (17006112 * k + 10935808) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5467904) = 4251528 * k + 2733952 := by
    unfold C
    simp [show (8503056 * k + 5467904) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2733952) = 2125764 * k + 1366976 := by
    unfold C
    simp [show (4251528 * k + 2733952) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1366976) = 1062882 * k + 683488 := by
    unfold C
    simp [show (2125764 * k + 1366976) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 683488) = 531441 * k + 341744 := by
    unfold C
    simp [show (1062882 * k + 683488) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 674287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 674287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_674415 : ∀ k : Nat,
    iterate (1048576 * k + 674415) 32 = 531441 * k + 341809 ∧
      531441 * k + 341809 < 1048576 * k + 674415 := by
  intro k
  have h1 : C (1048576 * k + 674415) = 3145728 * k + 2023246 := by
    unfold C
    simp [show (1048576 * k + 674415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2023246) = 1572864 * k + 1011623 := by
    unfold C
    simp [show (3145728 * k + 2023246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1011623) = 4718592 * k + 3034870 := by
    unfold C
    simp [show (1572864 * k + 1011623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3034870) = 2359296 * k + 1517435 := by
    unfold C
    simp [show (4718592 * k + 3034870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1517435) = 7077888 * k + 4552306 := by
    unfold C
    simp [show (2359296 * k + 1517435) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4552306) = 3538944 * k + 2276153 := by
    unfold C
    simp [show (7077888 * k + 4552306) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2276153) = 10616832 * k + 6828460 := by
    unfold C
    simp [show (3538944 * k + 2276153) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6828460) = 5308416 * k + 3414230 := by
    unfold C
    simp [show (10616832 * k + 6828460) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3414230) = 2654208 * k + 1707115 := by
    unfold C
    simp [show (5308416 * k + 3414230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1707115) = 7962624 * k + 5121346 := by
    unfold C
    simp [show (2654208 * k + 1707115) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5121346) = 3981312 * k + 2560673 := by
    unfold C
    simp [show (7962624 * k + 5121346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2560673) = 11943936 * k + 7682020 := by
    unfold C
    simp [show (3981312 * k + 2560673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7682020) = 5971968 * k + 3841010 := by
    unfold C
    simp [show (11943936 * k + 7682020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3841010) = 2985984 * k + 1920505 := by
    unfold C
    simp [show (5971968 * k + 3841010) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1920505) = 8957952 * k + 5761516 := by
    unfold C
    simp [show (2985984 * k + 1920505) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5761516) = 4478976 * k + 2880758 := by
    unfold C
    simp [show (8957952 * k + 5761516) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2880758) = 2239488 * k + 1440379 := by
    unfold C
    simp [show (4478976 * k + 2880758) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1440379) = 6718464 * k + 4321138 := by
    unfold C
    simp [show (2239488 * k + 1440379) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4321138) = 3359232 * k + 2160569 := by
    unfold C
    simp [show (6718464 * k + 4321138) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2160569) = 10077696 * k + 6481708 := by
    unfold C
    simp [show (3359232 * k + 2160569) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6481708) = 5038848 * k + 3240854 := by
    unfold C
    simp [show (10077696 * k + 6481708) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3240854) = 2519424 * k + 1620427 := by
    unfold C
    simp [show (5038848 * k + 3240854) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1620427) = 7558272 * k + 4861282 := by
    unfold C
    simp [show (2519424 * k + 1620427) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4861282) = 3779136 * k + 2430641 := by
    unfold C
    simp [show (7558272 * k + 4861282) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2430641) = 11337408 * k + 7291924 := by
    unfold C
    simp [show (3779136 * k + 2430641) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7291924) = 5668704 * k + 3645962 := by
    unfold C
    simp [show (11337408 * k + 7291924) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3645962) = 2834352 * k + 1822981 := by
    unfold C
    simp [show (5668704 * k + 3645962) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1822981) = 8503056 * k + 5468944 := by
    unfold C
    simp [show (2834352 * k + 1822981) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5468944) = 4251528 * k + 2734472 := by
    unfold C
    simp [show (8503056 * k + 5468944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2734472) = 2125764 * k + 1367236 := by
    unfold C
    simp [show (4251528 * k + 2734472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1367236) = 1062882 * k + 683618 := by
    unfold C
    simp [show (2125764 * k + 1367236) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 683618) = 531441 * k + 341809 := by
    unfold C
    simp [show (1062882 * k + 683618) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 674415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 674415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_674671 : ∀ k : Nat,
    iterate (1048576 * k + 674671) 32 = 531441 * k + 341939 ∧
      531441 * k + 341939 < 1048576 * k + 674671 := by
  intro k
  have h1 : C (1048576 * k + 674671) = 3145728 * k + 2024014 := by
    unfold C
    simp [show (1048576 * k + 674671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2024014) = 1572864 * k + 1012007 := by
    unfold C
    simp [show (3145728 * k + 2024014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1012007) = 4718592 * k + 3036022 := by
    unfold C
    simp [show (1572864 * k + 1012007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3036022) = 2359296 * k + 1518011 := by
    unfold C
    simp [show (4718592 * k + 3036022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1518011) = 7077888 * k + 4554034 := by
    unfold C
    simp [show (2359296 * k + 1518011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4554034) = 3538944 * k + 2277017 := by
    unfold C
    simp [show (7077888 * k + 4554034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2277017) = 10616832 * k + 6831052 := by
    unfold C
    simp [show (3538944 * k + 2277017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6831052) = 5308416 * k + 3415526 := by
    unfold C
    simp [show (10616832 * k + 6831052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3415526) = 2654208 * k + 1707763 := by
    unfold C
    simp [show (5308416 * k + 3415526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1707763) = 7962624 * k + 5123290 := by
    unfold C
    simp [show (2654208 * k + 1707763) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5123290) = 3981312 * k + 2561645 := by
    unfold C
    simp [show (7962624 * k + 5123290) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2561645) = 11943936 * k + 7684936 := by
    unfold C
    simp [show (3981312 * k + 2561645) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7684936) = 5971968 * k + 3842468 := by
    unfold C
    simp [show (11943936 * k + 7684936) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3842468) = 2985984 * k + 1921234 := by
    unfold C
    simp [show (5971968 * k + 3842468) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1921234) = 1492992 * k + 960617 := by
    unfold C
    simp [show (2985984 * k + 1921234) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 960617) = 4478976 * k + 2881852 := by
    unfold C
    simp [show (1492992 * k + 960617) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2881852) = 2239488 * k + 1440926 := by
    unfold C
    simp [show (4478976 * k + 2881852) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1440926) = 1119744 * k + 720463 := by
    unfold C
    simp [show (2239488 * k + 1440926) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 720463) = 3359232 * k + 2161390 := by
    unfold C
    simp [show (1119744 * k + 720463) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2161390) = 1679616 * k + 1080695 := by
    unfold C
    simp [show (3359232 * k + 2161390) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1080695) = 5038848 * k + 3242086 := by
    unfold C
    simp [show (1679616 * k + 1080695) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3242086) = 2519424 * k + 1621043 := by
    unfold C
    simp [show (5038848 * k + 3242086) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1621043) = 7558272 * k + 4863130 := by
    unfold C
    simp [show (2519424 * k + 1621043) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4863130) = 3779136 * k + 2431565 := by
    unfold C
    simp [show (7558272 * k + 4863130) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2431565) = 11337408 * k + 7294696 := by
    unfold C
    simp [show (3779136 * k + 2431565) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7294696) = 5668704 * k + 3647348 := by
    unfold C
    simp [show (11337408 * k + 7294696) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3647348) = 2834352 * k + 1823674 := by
    unfold C
    simp [show (5668704 * k + 3647348) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1823674) = 1417176 * k + 911837 := by
    unfold C
    simp [show (2834352 * k + 1823674) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 911837) = 4251528 * k + 2735512 := by
    unfold C
    simp [show (1417176 * k + 911837) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2735512) = 2125764 * k + 1367756 := by
    unfold C
    simp [show (4251528 * k + 2735512) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1367756) = 1062882 * k + 683878 := by
    unfold C
    simp [show (2125764 * k + 1367756) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 683878) = 531441 * k + 341939 := by
    unfold C
    simp [show (1062882 * k + 683878) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 674671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 674671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_675007 : ∀ k : Nat,
    iterate (1048576 * k + 675007) 32 = 531441 * k + 342109 ∧
      531441 * k + 342109 < 1048576 * k + 675007 := by
  intro k
  have h1 : C (1048576 * k + 675007) = 3145728 * k + 2025022 := by
    unfold C
    simp [show (1048576 * k + 675007) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2025022) = 1572864 * k + 1012511 := by
    unfold C
    simp [show (3145728 * k + 2025022) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1012511) = 4718592 * k + 3037534 := by
    unfold C
    simp [show (1572864 * k + 1012511) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3037534) = 2359296 * k + 1518767 := by
    unfold C
    simp [show (4718592 * k + 3037534) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1518767) = 7077888 * k + 4556302 := by
    unfold C
    simp [show (2359296 * k + 1518767) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4556302) = 3538944 * k + 2278151 := by
    unfold C
    simp [show (7077888 * k + 4556302) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2278151) = 10616832 * k + 6834454 := by
    unfold C
    simp [show (3538944 * k + 2278151) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6834454) = 5308416 * k + 3417227 := by
    unfold C
    simp [show (10616832 * k + 6834454) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3417227) = 15925248 * k + 10251682 := by
    unfold C
    simp [show (5308416 * k + 3417227) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10251682) = 7962624 * k + 5125841 := by
    unfold C
    simp [show (15925248 * k + 10251682) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5125841) = 23887872 * k + 15377524 := by
    unfold C
    simp [show (7962624 * k + 5125841) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15377524) = 11943936 * k + 7688762 := by
    unfold C
    simp [show (23887872 * k + 15377524) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7688762) = 5971968 * k + 3844381 := by
    unfold C
    simp [show (11943936 * k + 7688762) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3844381) = 17915904 * k + 11533144 := by
    unfold C
    simp [show (5971968 * k + 3844381) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11533144) = 8957952 * k + 5766572 := by
    unfold C
    simp [show (17915904 * k + 11533144) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5766572) = 4478976 * k + 2883286 := by
    unfold C
    simp [show (8957952 * k + 5766572) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2883286) = 2239488 * k + 1441643 := by
    unfold C
    simp [show (4478976 * k + 2883286) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1441643) = 6718464 * k + 4324930 := by
    unfold C
    simp [show (2239488 * k + 1441643) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4324930) = 3359232 * k + 2162465 := by
    unfold C
    simp [show (6718464 * k + 4324930) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2162465) = 10077696 * k + 6487396 := by
    unfold C
    simp [show (3359232 * k + 2162465) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6487396) = 5038848 * k + 3243698 := by
    unfold C
    simp [show (10077696 * k + 6487396) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3243698) = 2519424 * k + 1621849 := by
    unfold C
    simp [show (5038848 * k + 3243698) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1621849) = 7558272 * k + 4865548 := by
    unfold C
    simp [show (2519424 * k + 1621849) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4865548) = 3779136 * k + 2432774 := by
    unfold C
    simp [show (7558272 * k + 4865548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2432774) = 1889568 * k + 1216387 := by
    unfold C
    simp [show (3779136 * k + 2432774) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1216387) = 5668704 * k + 3649162 := by
    unfold C
    simp [show (1889568 * k + 1216387) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3649162) = 2834352 * k + 1824581 := by
    unfold C
    simp [show (5668704 * k + 3649162) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1824581) = 8503056 * k + 5473744 := by
    unfold C
    simp [show (2834352 * k + 1824581) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5473744) = 4251528 * k + 2736872 := by
    unfold C
    simp [show (8503056 * k + 5473744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2736872) = 2125764 * k + 1368436 := by
    unfold C
    simp [show (4251528 * k + 2736872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1368436) = 1062882 * k + 684218 := by
    unfold C
    simp [show (2125764 * k + 1368436) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 684218) = 531441 * k + 342109 := by
    unfold C
    simp [show (1062882 * k + 684218) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 675007) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 675007)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_675175 : ∀ k : Nat,
    iterate (1048576 * k + 675175) 32 = 531441 * k + 342194 ∧
      531441 * k + 342194 < 1048576 * k + 675175 := by
  intro k
  have h1 : C (1048576 * k + 675175) = 3145728 * k + 2025526 := by
    unfold C
    simp [show (1048576 * k + 675175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2025526) = 1572864 * k + 1012763 := by
    unfold C
    simp [show (3145728 * k + 2025526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1012763) = 4718592 * k + 3038290 := by
    unfold C
    simp [show (1572864 * k + 1012763) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3038290) = 2359296 * k + 1519145 := by
    unfold C
    simp [show (4718592 * k + 3038290) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1519145) = 7077888 * k + 4557436 := by
    unfold C
    simp [show (2359296 * k + 1519145) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4557436) = 3538944 * k + 2278718 := by
    unfold C
    simp [show (7077888 * k + 4557436) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2278718) = 1769472 * k + 1139359 := by
    unfold C
    simp [show (3538944 * k + 2278718) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1139359) = 5308416 * k + 3418078 := by
    unfold C
    simp [show (1769472 * k + 1139359) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3418078) = 2654208 * k + 1709039 := by
    unfold C
    simp [show (5308416 * k + 3418078) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1709039) = 7962624 * k + 5127118 := by
    unfold C
    simp [show (2654208 * k + 1709039) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5127118) = 3981312 * k + 2563559 := by
    unfold C
    simp [show (7962624 * k + 5127118) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2563559) = 11943936 * k + 7690678 := by
    unfold C
    simp [show (3981312 * k + 2563559) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7690678) = 5971968 * k + 3845339 := by
    unfold C
    simp [show (11943936 * k + 7690678) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3845339) = 17915904 * k + 11536018 := by
    unfold C
    simp [show (5971968 * k + 3845339) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11536018) = 8957952 * k + 5768009 := by
    unfold C
    simp [show (17915904 * k + 11536018) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5768009) = 26873856 * k + 17304028 := by
    unfold C
    simp [show (8957952 * k + 5768009) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17304028) = 13436928 * k + 8652014 := by
    unfold C
    simp [show (26873856 * k + 17304028) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8652014) = 6718464 * k + 4326007 := by
    unfold C
    simp [show (13436928 * k + 8652014) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4326007) = 20155392 * k + 12978022 := by
    unfold C
    simp [show (6718464 * k + 4326007) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 12978022) = 10077696 * k + 6489011 := by
    unfold C
    simp [show (20155392 * k + 12978022) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6489011) = 30233088 * k + 19467034 := by
    unfold C
    simp [show (10077696 * k + 6489011) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19467034) = 15116544 * k + 9733517 := by
    unfold C
    simp [show (30233088 * k + 19467034) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9733517) = 45349632 * k + 29200552 := by
    unfold C
    simp [show (15116544 * k + 9733517) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 29200552) = 22674816 * k + 14600276 := by
    unfold C
    simp [show (45349632 * k + 29200552) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14600276) = 11337408 * k + 7300138 := by
    unfold C
    simp [show (22674816 * k + 14600276) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7300138) = 5668704 * k + 3650069 := by
    unfold C
    simp [show (11337408 * k + 7300138) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3650069) = 17006112 * k + 10950208 := by
    unfold C
    simp [show (5668704 * k + 3650069) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10950208) = 8503056 * k + 5475104 := by
    unfold C
    simp [show (17006112 * k + 10950208) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5475104) = 4251528 * k + 2737552 := by
    unfold C
    simp [show (8503056 * k + 5475104) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2737552) = 2125764 * k + 1368776 := by
    unfold C
    simp [show (4251528 * k + 2737552) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1368776) = 1062882 * k + 684388 := by
    unfold C
    simp [show (2125764 * k + 1368776) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 684388) = 531441 * k + 342194 := by
    unfold C
    simp [show (1062882 * k + 684388) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 675175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 675175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_675327 : ∀ k : Nat,
    iterate (1048576 * k + 675327) 32 = 531441 * k + 342271 ∧
      531441 * k + 342271 < 1048576 * k + 675327 := by
  intro k
  have h1 : C (1048576 * k + 675327) = 3145728 * k + 2025982 := by
    unfold C
    simp [show (1048576 * k + 675327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2025982) = 1572864 * k + 1012991 := by
    unfold C
    simp [show (3145728 * k + 2025982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1012991) = 4718592 * k + 3038974 := by
    unfold C
    simp [show (1572864 * k + 1012991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3038974) = 2359296 * k + 1519487 := by
    unfold C
    simp [show (4718592 * k + 3038974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1519487) = 7077888 * k + 4558462 := by
    unfold C
    simp [show (2359296 * k + 1519487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4558462) = 3538944 * k + 2279231 := by
    unfold C
    simp [show (7077888 * k + 4558462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2279231) = 10616832 * k + 6837694 := by
    unfold C
    simp [show (3538944 * k + 2279231) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6837694) = 5308416 * k + 3418847 := by
    unfold C
    simp [show (10616832 * k + 6837694) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3418847) = 15925248 * k + 10256542 := by
    unfold C
    simp [show (5308416 * k + 3418847) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10256542) = 7962624 * k + 5128271 := by
    unfold C
    simp [show (15925248 * k + 10256542) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5128271) = 23887872 * k + 15384814 := by
    unfold C
    simp [show (7962624 * k + 5128271) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 15384814) = 11943936 * k + 7692407 := by
    unfold C
    simp [show (23887872 * k + 15384814) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 7692407) = 35831808 * k + 23077222 := by
    unfold C
    simp [show (11943936 * k + 7692407) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 23077222) = 17915904 * k + 11538611 := by
    unfold C
    simp [show (35831808 * k + 23077222) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 11538611) = 53747712 * k + 34615834 := by
    unfold C
    simp [show (17915904 * k + 11538611) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 34615834) = 26873856 * k + 17307917 := by
    unfold C
    simp [show (53747712 * k + 34615834) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 17307917) = 80621568 * k + 51923752 := by
    unfold C
    simp [show (26873856 * k + 17307917) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 51923752) = 40310784 * k + 25961876 := by
    unfold C
    simp [show (80621568 * k + 51923752) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 25961876) = 20155392 * k + 12980938 := by
    unfold C
    simp [show (40310784 * k + 25961876) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 12980938) = 10077696 * k + 6490469 := by
    unfold C
    simp [show (20155392 * k + 12980938) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6490469) = 30233088 * k + 19471408 := by
    unfold C
    simp [show (10077696 * k + 6490469) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19471408) = 15116544 * k + 9735704 := by
    unfold C
    simp [show (30233088 * k + 19471408) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9735704) = 7558272 * k + 4867852 := by
    unfold C
    simp [show (15116544 * k + 9735704) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4867852) = 3779136 * k + 2433926 := by
    unfold C
    simp [show (7558272 * k + 4867852) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2433926) = 1889568 * k + 1216963 := by
    unfold C
    simp [show (3779136 * k + 2433926) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1216963) = 5668704 * k + 3650890 := by
    unfold C
    simp [show (1889568 * k + 1216963) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3650890) = 2834352 * k + 1825445 := by
    unfold C
    simp [show (5668704 * k + 3650890) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1825445) = 8503056 * k + 5476336 := by
    unfold C
    simp [show (2834352 * k + 1825445) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5476336) = 4251528 * k + 2738168 := by
    unfold C
    simp [show (8503056 * k + 5476336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2738168) = 2125764 * k + 1369084 := by
    unfold C
    simp [show (4251528 * k + 2738168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1369084) = 1062882 * k + 684542 := by
    unfold C
    simp [show (2125764 * k + 1369084) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 684542) = 531441 * k + 342271 := by
    unfold C
    simp [show (1062882 * k + 684542) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 675327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 675327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_675743 : ∀ k : Nat,
    iterate (1048576 * k + 675743) 32 = 531441 * k + 342482 ∧
      531441 * k + 342482 < 1048576 * k + 675743 := by
  intro k
  have h1 : C (1048576 * k + 675743) = 3145728 * k + 2027230 := by
    unfold C
    simp [show (1048576 * k + 675743) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2027230) = 1572864 * k + 1013615 := by
    unfold C
    simp [show (3145728 * k + 2027230) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1013615) = 4718592 * k + 3040846 := by
    unfold C
    simp [show (1572864 * k + 1013615) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3040846) = 2359296 * k + 1520423 := by
    unfold C
    simp [show (4718592 * k + 3040846) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1520423) = 7077888 * k + 4561270 := by
    unfold C
    simp [show (2359296 * k + 1520423) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4561270) = 3538944 * k + 2280635 := by
    unfold C
    simp [show (7077888 * k + 4561270) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2280635) = 10616832 * k + 6841906 := by
    unfold C
    simp [show (3538944 * k + 2280635) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6841906) = 5308416 * k + 3420953 := by
    unfold C
    simp [show (10616832 * k + 6841906) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3420953) = 15925248 * k + 10262860 := by
    unfold C
    simp [show (5308416 * k + 3420953) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10262860) = 7962624 * k + 5131430 := by
    unfold C
    simp [show (15925248 * k + 10262860) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5131430) = 3981312 * k + 2565715 := by
    unfold C
    simp [show (7962624 * k + 5131430) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2565715) = 11943936 * k + 7697146 := by
    unfold C
    simp [show (3981312 * k + 2565715) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7697146) = 5971968 * k + 3848573 := by
    unfold C
    simp [show (11943936 * k + 7697146) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3848573) = 17915904 * k + 11545720 := by
    unfold C
    simp [show (5971968 * k + 3848573) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11545720) = 8957952 * k + 5772860 := by
    unfold C
    simp [show (17915904 * k + 11545720) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5772860) = 4478976 * k + 2886430 := by
    unfold C
    simp [show (8957952 * k + 5772860) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2886430) = 2239488 * k + 1443215 := by
    unfold C
    simp [show (4478976 * k + 2886430) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1443215) = 6718464 * k + 4329646 := by
    unfold C
    simp [show (2239488 * k + 1443215) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4329646) = 3359232 * k + 2164823 := by
    unfold C
    simp [show (6718464 * k + 4329646) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2164823) = 10077696 * k + 6494470 := by
    unfold C
    simp [show (3359232 * k + 2164823) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6494470) = 5038848 * k + 3247235 := by
    unfold C
    simp [show (10077696 * k + 6494470) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3247235) = 15116544 * k + 9741706 := by
    unfold C
    simp [show (5038848 * k + 3247235) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9741706) = 7558272 * k + 4870853 := by
    unfold C
    simp [show (15116544 * k + 9741706) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4870853) = 22674816 * k + 14612560 := by
    unfold C
    simp [show (7558272 * k + 4870853) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14612560) = 11337408 * k + 7306280 := by
    unfold C
    simp [show (22674816 * k + 14612560) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7306280) = 5668704 * k + 3653140 := by
    unfold C
    simp [show (11337408 * k + 7306280) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3653140) = 2834352 * k + 1826570 := by
    unfold C
    simp [show (5668704 * k + 3653140) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1826570) = 1417176 * k + 913285 := by
    unfold C
    simp [show (2834352 * k + 1826570) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 913285) = 4251528 * k + 2739856 := by
    unfold C
    simp [show (1417176 * k + 913285) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2739856) = 2125764 * k + 1369928 := by
    unfold C
    simp [show (4251528 * k + 2739856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1369928) = 1062882 * k + 684964 := by
    unfold C
    simp [show (2125764 * k + 1369928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 684964) = 531441 * k + 342482 := by
    unfold C
    simp [show (1062882 * k + 684964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 675743) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 675743)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677031 : ∀ k : Nat,
    iterate (1048576 * k + 677031) 32 = 531441 * k + 343135 ∧
      531441 * k + 343135 < 1048576 * k + 677031 := by
  intro k
  have h1 : C (1048576 * k + 677031) = 3145728 * k + 2031094 := by
    unfold C
    simp [show (1048576 * k + 677031) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2031094) = 1572864 * k + 1015547 := by
    unfold C
    simp [show (3145728 * k + 2031094) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1015547) = 4718592 * k + 3046642 := by
    unfold C
    simp [show (1572864 * k + 1015547) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3046642) = 2359296 * k + 1523321 := by
    unfold C
    simp [show (4718592 * k + 3046642) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1523321) = 7077888 * k + 4569964 := by
    unfold C
    simp [show (2359296 * k + 1523321) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4569964) = 3538944 * k + 2284982 := by
    unfold C
    simp [show (7077888 * k + 4569964) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2284982) = 1769472 * k + 1142491 := by
    unfold C
    simp [show (3538944 * k + 2284982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1142491) = 5308416 * k + 3427474 := by
    unfold C
    simp [show (1769472 * k + 1142491) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3427474) = 2654208 * k + 1713737 := by
    unfold C
    simp [show (5308416 * k + 3427474) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1713737) = 7962624 * k + 5141212 := by
    unfold C
    simp [show (2654208 * k + 1713737) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5141212) = 3981312 * k + 2570606 := by
    unfold C
    simp [show (7962624 * k + 5141212) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2570606) = 1990656 * k + 1285303 := by
    unfold C
    simp [show (3981312 * k + 2570606) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1285303) = 5971968 * k + 3855910 := by
    unfold C
    simp [show (1990656 * k + 1285303) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3855910) = 2985984 * k + 1927955 := by
    unfold C
    simp [show (5971968 * k + 3855910) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1927955) = 8957952 * k + 5783866 := by
    unfold C
    simp [show (2985984 * k + 1927955) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5783866) = 4478976 * k + 2891933 := by
    unfold C
    simp [show (8957952 * k + 5783866) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2891933) = 13436928 * k + 8675800 := by
    unfold C
    simp [show (4478976 * k + 2891933) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8675800) = 6718464 * k + 4337900 := by
    unfold C
    simp [show (13436928 * k + 8675800) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4337900) = 3359232 * k + 2168950 := by
    unfold C
    simp [show (6718464 * k + 4337900) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2168950) = 1679616 * k + 1084475 := by
    unfold C
    simp [show (3359232 * k + 2168950) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1084475) = 5038848 * k + 3253426 := by
    unfold C
    simp [show (1679616 * k + 1084475) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3253426) = 2519424 * k + 1626713 := by
    unfold C
    simp [show (5038848 * k + 3253426) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1626713) = 7558272 * k + 4880140 := by
    unfold C
    simp [show (2519424 * k + 1626713) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4880140) = 3779136 * k + 2440070 := by
    unfold C
    simp [show (7558272 * k + 4880140) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2440070) = 1889568 * k + 1220035 := by
    unfold C
    simp [show (3779136 * k + 2440070) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1220035) = 5668704 * k + 3660106 := by
    unfold C
    simp [show (1889568 * k + 1220035) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3660106) = 2834352 * k + 1830053 := by
    unfold C
    simp [show (5668704 * k + 3660106) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1830053) = 8503056 * k + 5490160 := by
    unfold C
    simp [show (2834352 * k + 1830053) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5490160) = 4251528 * k + 2745080 := by
    unfold C
    simp [show (8503056 * k + 5490160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2745080) = 2125764 * k + 1372540 := by
    unfold C
    simp [show (4251528 * k + 2745080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1372540) = 1062882 * k + 686270 := by
    unfold C
    simp [show (2125764 * k + 1372540) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 686270) = 531441 * k + 343135 := by
    unfold C
    simp [show (1062882 * k + 686270) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677031) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677031)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677191 : ∀ k : Nat,
    iterate (1048576 * k + 677191) 32 = 531441 * k + 343216 ∧
      531441 * k + 343216 < 1048576 * k + 677191 := by
  intro k
  have h1 : C (1048576 * k + 677191) = 3145728 * k + 2031574 := by
    unfold C
    simp [show (1048576 * k + 677191) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2031574) = 1572864 * k + 1015787 := by
    unfold C
    simp [show (3145728 * k + 2031574) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1015787) = 4718592 * k + 3047362 := by
    unfold C
    simp [show (1572864 * k + 1015787) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3047362) = 2359296 * k + 1523681 := by
    unfold C
    simp [show (4718592 * k + 3047362) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1523681) = 7077888 * k + 4571044 := by
    unfold C
    simp [show (2359296 * k + 1523681) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4571044) = 3538944 * k + 2285522 := by
    unfold C
    simp [show (7077888 * k + 4571044) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2285522) = 1769472 * k + 1142761 := by
    unfold C
    simp [show (3538944 * k + 2285522) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1142761) = 5308416 * k + 3428284 := by
    unfold C
    simp [show (1769472 * k + 1142761) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3428284) = 2654208 * k + 1714142 := by
    unfold C
    simp [show (5308416 * k + 3428284) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1714142) = 1327104 * k + 857071 := by
    unfold C
    simp [show (2654208 * k + 1714142) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 857071) = 3981312 * k + 2571214 := by
    unfold C
    simp [show (1327104 * k + 857071) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2571214) = 1990656 * k + 1285607 := by
    unfold C
    simp [show (3981312 * k + 2571214) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1285607) = 5971968 * k + 3856822 := by
    unfold C
    simp [show (1990656 * k + 1285607) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3856822) = 2985984 * k + 1928411 := by
    unfold C
    simp [show (5971968 * k + 3856822) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1928411) = 8957952 * k + 5785234 := by
    unfold C
    simp [show (2985984 * k + 1928411) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5785234) = 4478976 * k + 2892617 := by
    unfold C
    simp [show (8957952 * k + 5785234) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2892617) = 13436928 * k + 8677852 := by
    unfold C
    simp [show (4478976 * k + 2892617) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8677852) = 6718464 * k + 4338926 := by
    unfold C
    simp [show (13436928 * k + 8677852) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4338926) = 3359232 * k + 2169463 := by
    unfold C
    simp [show (6718464 * k + 4338926) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2169463) = 10077696 * k + 6508390 := by
    unfold C
    simp [show (3359232 * k + 2169463) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6508390) = 5038848 * k + 3254195 := by
    unfold C
    simp [show (10077696 * k + 6508390) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3254195) = 15116544 * k + 9762586 := by
    unfold C
    simp [show (5038848 * k + 3254195) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9762586) = 7558272 * k + 4881293 := by
    unfold C
    simp [show (15116544 * k + 9762586) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4881293) = 22674816 * k + 14643880 := by
    unfold C
    simp [show (7558272 * k + 4881293) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14643880) = 11337408 * k + 7321940 := by
    unfold C
    simp [show (22674816 * k + 14643880) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7321940) = 5668704 * k + 3660970 := by
    unfold C
    simp [show (11337408 * k + 7321940) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3660970) = 2834352 * k + 1830485 := by
    unfold C
    simp [show (5668704 * k + 3660970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1830485) = 8503056 * k + 5491456 := by
    unfold C
    simp [show (2834352 * k + 1830485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5491456) = 4251528 * k + 2745728 := by
    unfold C
    simp [show (8503056 * k + 5491456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2745728) = 2125764 * k + 1372864 := by
    unfold C
    simp [show (4251528 * k + 2745728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1372864) = 1062882 * k + 686432 := by
    unfold C
    simp [show (2125764 * k + 1372864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 686432) = 531441 * k + 343216 := by
    unfold C
    simp [show (1062882 * k + 686432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677191) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677191)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677223 : ∀ k : Nat,
    iterate (1048576 * k + 677223) 32 = 531441 * k + 343232 ∧
      531441 * k + 343232 < 1048576 * k + 677223 := by
  intro k
  have h1 : C (1048576 * k + 677223) = 3145728 * k + 2031670 := by
    unfold C
    simp [show (1048576 * k + 677223) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2031670) = 1572864 * k + 1015835 := by
    unfold C
    simp [show (3145728 * k + 2031670) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1015835) = 4718592 * k + 3047506 := by
    unfold C
    simp [show (1572864 * k + 1015835) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3047506) = 2359296 * k + 1523753 := by
    unfold C
    simp [show (4718592 * k + 3047506) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1523753) = 7077888 * k + 4571260 := by
    unfold C
    simp [show (2359296 * k + 1523753) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4571260) = 3538944 * k + 2285630 := by
    unfold C
    simp [show (7077888 * k + 4571260) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2285630) = 1769472 * k + 1142815 := by
    unfold C
    simp [show (3538944 * k + 2285630) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1142815) = 5308416 * k + 3428446 := by
    unfold C
    simp [show (1769472 * k + 1142815) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3428446) = 2654208 * k + 1714223 := by
    unfold C
    simp [show (5308416 * k + 3428446) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1714223) = 7962624 * k + 5142670 := by
    unfold C
    simp [show (2654208 * k + 1714223) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5142670) = 3981312 * k + 2571335 := by
    unfold C
    simp [show (7962624 * k + 5142670) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2571335) = 11943936 * k + 7714006 := by
    unfold C
    simp [show (3981312 * k + 2571335) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7714006) = 5971968 * k + 3857003 := by
    unfold C
    simp [show (11943936 * k + 7714006) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3857003) = 17915904 * k + 11571010 := by
    unfold C
    simp [show (5971968 * k + 3857003) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11571010) = 8957952 * k + 5785505 := by
    unfold C
    simp [show (17915904 * k + 11571010) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5785505) = 26873856 * k + 17356516 := by
    unfold C
    simp [show (8957952 * k + 5785505) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17356516) = 13436928 * k + 8678258 := by
    unfold C
    simp [show (26873856 * k + 17356516) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8678258) = 6718464 * k + 4339129 := by
    unfold C
    simp [show (13436928 * k + 8678258) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4339129) = 20155392 * k + 13017388 := by
    unfold C
    simp [show (6718464 * k + 4339129) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13017388) = 10077696 * k + 6508694 := by
    unfold C
    simp [show (20155392 * k + 13017388) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6508694) = 5038848 * k + 3254347 := by
    unfold C
    simp [show (10077696 * k + 6508694) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3254347) = 15116544 * k + 9763042 := by
    unfold C
    simp [show (5038848 * k + 3254347) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9763042) = 7558272 * k + 4881521 := by
    unfold C
    simp [show (15116544 * k + 9763042) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4881521) = 22674816 * k + 14644564 := by
    unfold C
    simp [show (7558272 * k + 4881521) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14644564) = 11337408 * k + 7322282 := by
    unfold C
    simp [show (22674816 * k + 14644564) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7322282) = 5668704 * k + 3661141 := by
    unfold C
    simp [show (11337408 * k + 7322282) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3661141) = 17006112 * k + 10983424 := by
    unfold C
    simp [show (5668704 * k + 3661141) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 10983424) = 8503056 * k + 5491712 := by
    unfold C
    simp [show (17006112 * k + 10983424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5491712) = 4251528 * k + 2745856 := by
    unfold C
    simp [show (8503056 * k + 5491712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2745856) = 2125764 * k + 1372928 := by
    unfold C
    simp [show (4251528 * k + 2745856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1372928) = 1062882 * k + 686464 := by
    unfold C
    simp [show (2125764 * k + 1372928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 686464) = 531441 * k + 343232 := by
    unfold C
    simp [show (1062882 * k + 686464) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677223) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677223)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677327 : ∀ k : Nat,
    iterate (1048576 * k + 677327) 32 = 531441 * k + 343285 ∧
      531441 * k + 343285 < 1048576 * k + 677327 := by
  intro k
  have h1 : C (1048576 * k + 677327) = 3145728 * k + 2031982 := by
    unfold C
    simp [show (1048576 * k + 677327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2031982) = 1572864 * k + 1015991 := by
    unfold C
    simp [show (3145728 * k + 2031982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1015991) = 4718592 * k + 3047974 := by
    unfold C
    simp [show (1572864 * k + 1015991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3047974) = 2359296 * k + 1523987 := by
    unfold C
    simp [show (4718592 * k + 3047974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1523987) = 7077888 * k + 4571962 := by
    unfold C
    simp [show (2359296 * k + 1523987) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4571962) = 3538944 * k + 2285981 := by
    unfold C
    simp [show (7077888 * k + 4571962) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2285981) = 10616832 * k + 6857944 := by
    unfold C
    simp [show (3538944 * k + 2285981) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6857944) = 5308416 * k + 3428972 := by
    unfold C
    simp [show (10616832 * k + 6857944) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3428972) = 2654208 * k + 1714486 := by
    unfold C
    simp [show (5308416 * k + 3428972) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1714486) = 1327104 * k + 857243 := by
    unfold C
    simp [show (2654208 * k + 1714486) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 857243) = 3981312 * k + 2571730 := by
    unfold C
    simp [show (1327104 * k + 857243) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2571730) = 1990656 * k + 1285865 := by
    unfold C
    simp [show (3981312 * k + 2571730) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1285865) = 5971968 * k + 3857596 := by
    unfold C
    simp [show (1990656 * k + 1285865) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3857596) = 2985984 * k + 1928798 := by
    unfold C
    simp [show (5971968 * k + 3857596) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1928798) = 1492992 * k + 964399 := by
    unfold C
    simp [show (2985984 * k + 1928798) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 964399) = 4478976 * k + 2893198 := by
    unfold C
    simp [show (1492992 * k + 964399) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2893198) = 2239488 * k + 1446599 := by
    unfold C
    simp [show (4478976 * k + 2893198) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1446599) = 6718464 * k + 4339798 := by
    unfold C
    simp [show (2239488 * k + 1446599) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4339798) = 3359232 * k + 2169899 := by
    unfold C
    simp [show (6718464 * k + 4339798) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2169899) = 10077696 * k + 6509698 := by
    unfold C
    simp [show (3359232 * k + 2169899) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6509698) = 5038848 * k + 3254849 := by
    unfold C
    simp [show (10077696 * k + 6509698) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3254849) = 15116544 * k + 9764548 := by
    unfold C
    simp [show (5038848 * k + 3254849) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9764548) = 7558272 * k + 4882274 := by
    unfold C
    simp [show (15116544 * k + 9764548) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4882274) = 3779136 * k + 2441137 := by
    unfold C
    simp [show (7558272 * k + 4882274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2441137) = 11337408 * k + 7323412 := by
    unfold C
    simp [show (3779136 * k + 2441137) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7323412) = 5668704 * k + 3661706 := by
    unfold C
    simp [show (11337408 * k + 7323412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3661706) = 2834352 * k + 1830853 := by
    unfold C
    simp [show (5668704 * k + 3661706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1830853) = 8503056 * k + 5492560 := by
    unfold C
    simp [show (2834352 * k + 1830853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5492560) = 4251528 * k + 2746280 := by
    unfold C
    simp [show (8503056 * k + 5492560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2746280) = 2125764 * k + 1373140 := by
    unfold C
    simp [show (4251528 * k + 2746280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1373140) = 1062882 * k + 686570 := by
    unfold C
    simp [show (2125764 * k + 1373140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 686570) = 531441 * k + 343285 := by
    unfold C
    simp [show (1062882 * k + 686570) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677535 : ∀ k : Nat,
    iterate (1048576 * k + 677535) 32 = 531441 * k + 343390 ∧
      531441 * k + 343390 < 1048576 * k + 677535 := by
  intro k
  have h1 : C (1048576 * k + 677535) = 3145728 * k + 2032606 := by
    unfold C
    simp [show (1048576 * k + 677535) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2032606) = 1572864 * k + 1016303 := by
    unfold C
    simp [show (3145728 * k + 2032606) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1016303) = 4718592 * k + 3048910 := by
    unfold C
    simp [show (1572864 * k + 1016303) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3048910) = 2359296 * k + 1524455 := by
    unfold C
    simp [show (4718592 * k + 3048910) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1524455) = 7077888 * k + 4573366 := by
    unfold C
    simp [show (2359296 * k + 1524455) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4573366) = 3538944 * k + 2286683 := by
    unfold C
    simp [show (7077888 * k + 4573366) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2286683) = 10616832 * k + 6860050 := by
    unfold C
    simp [show (3538944 * k + 2286683) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6860050) = 5308416 * k + 3430025 := by
    unfold C
    simp [show (10616832 * k + 6860050) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3430025) = 15925248 * k + 10290076 := by
    unfold C
    simp [show (5308416 * k + 3430025) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10290076) = 7962624 * k + 5145038 := by
    unfold C
    simp [show (15925248 * k + 10290076) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5145038) = 3981312 * k + 2572519 := by
    unfold C
    simp [show (7962624 * k + 5145038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2572519) = 11943936 * k + 7717558 := by
    unfold C
    simp [show (3981312 * k + 2572519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7717558) = 5971968 * k + 3858779 := by
    unfold C
    simp [show (11943936 * k + 7717558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3858779) = 17915904 * k + 11576338 := by
    unfold C
    simp [show (5971968 * k + 3858779) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11576338) = 8957952 * k + 5788169 := by
    unfold C
    simp [show (17915904 * k + 11576338) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5788169) = 26873856 * k + 17364508 := by
    unfold C
    simp [show (8957952 * k + 5788169) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17364508) = 13436928 * k + 8682254 := by
    unfold C
    simp [show (26873856 * k + 17364508) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8682254) = 6718464 * k + 4341127 := by
    unfold C
    simp [show (13436928 * k + 8682254) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4341127) = 20155392 * k + 13023382 := by
    unfold C
    simp [show (6718464 * k + 4341127) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13023382) = 10077696 * k + 6511691 := by
    unfold C
    simp [show (20155392 * k + 13023382) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6511691) = 30233088 * k + 19535074 := by
    unfold C
    simp [show (10077696 * k + 6511691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 19535074) = 15116544 * k + 9767537 := by
    unfold C
    simp [show (30233088 * k + 19535074) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9767537) = 45349632 * k + 29302612 := by
    unfold C
    simp [show (15116544 * k + 9767537) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 29302612) = 22674816 * k + 14651306 := by
    unfold C
    simp [show (45349632 * k + 29302612) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14651306) = 11337408 * k + 7325653 := by
    unfold C
    simp [show (22674816 * k + 14651306) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7325653) = 34012224 * k + 21976960 := by
    unfold C
    simp [show (11337408 * k + 7325653) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 21976960) = 17006112 * k + 10988480 := by
    unfold C
    simp [show (34012224 * k + 21976960) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 10988480) = 8503056 * k + 5494240 := by
    unfold C
    simp [show (17006112 * k + 10988480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5494240) = 4251528 * k + 2747120 := by
    unfold C
    simp [show (8503056 * k + 5494240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2747120) = 2125764 * k + 1373560 := by
    unfold C
    simp [show (4251528 * k + 2747120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1373560) = 1062882 * k + 686780 := by
    unfold C
    simp [show (2125764 * k + 1373560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 686780) = 531441 * k + 343390 := by
    unfold C
    simp [show (1062882 * k + 686780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677535) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677535)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677883 : ∀ k : Nat,
    iterate (1048576 * k + 677883) 32 = 531441 * k + 343567 ∧
      531441 * k + 343567 < 1048576 * k + 677883 := by
  intro k
  have h1 : C (1048576 * k + 677883) = 3145728 * k + 2033650 := by
    unfold C
    simp [show (1048576 * k + 677883) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2033650) = 1572864 * k + 1016825 := by
    unfold C
    simp [show (3145728 * k + 2033650) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1016825) = 4718592 * k + 3050476 := by
    unfold C
    simp [show (1572864 * k + 1016825) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3050476) = 2359296 * k + 1525238 := by
    unfold C
    simp [show (4718592 * k + 3050476) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1525238) = 1179648 * k + 762619 := by
    unfold C
    simp [show (2359296 * k + 1525238) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 762619) = 3538944 * k + 2287858 := by
    unfold C
    simp [show (1179648 * k + 762619) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2287858) = 1769472 * k + 1143929 := by
    unfold C
    simp [show (3538944 * k + 2287858) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1143929) = 5308416 * k + 3431788 := by
    unfold C
    simp [show (1769472 * k + 1143929) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3431788) = 2654208 * k + 1715894 := by
    unfold C
    simp [show (5308416 * k + 3431788) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1715894) = 1327104 * k + 857947 := by
    unfold C
    simp [show (2654208 * k + 1715894) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 857947) = 3981312 * k + 2573842 := by
    unfold C
    simp [show (1327104 * k + 857947) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 2573842) = 1990656 * k + 1286921 := by
    unfold C
    simp [show (3981312 * k + 2573842) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1286921) = 5971968 * k + 3860764 := by
    unfold C
    simp [show (1990656 * k + 1286921) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 3860764) = 2985984 * k + 1930382 := by
    unfold C
    simp [show (5971968 * k + 3860764) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1930382) = 1492992 * k + 965191 := by
    unfold C
    simp [show (2985984 * k + 1930382) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 965191) = 4478976 * k + 2895574 := by
    unfold C
    simp [show (1492992 * k + 965191) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 2895574) = 2239488 * k + 1447787 := by
    unfold C
    simp [show (4478976 * k + 2895574) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1447787) = 6718464 * k + 4343362 := by
    unfold C
    simp [show (2239488 * k + 1447787) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 4343362) = 3359232 * k + 2171681 := by
    unfold C
    simp [show (6718464 * k + 4343362) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2171681) = 10077696 * k + 6515044 := by
    unfold C
    simp [show (3359232 * k + 2171681) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 6515044) = 5038848 * k + 3257522 := by
    unfold C
    simp [show (10077696 * k + 6515044) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3257522) = 2519424 * k + 1628761 := by
    unfold C
    simp [show (5038848 * k + 3257522) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1628761) = 7558272 * k + 4886284 := by
    unfold C
    simp [show (2519424 * k + 1628761) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4886284) = 3779136 * k + 2443142 := by
    unfold C
    simp [show (7558272 * k + 4886284) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2443142) = 1889568 * k + 1221571 := by
    unfold C
    simp [show (3779136 * k + 2443142) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1221571) = 5668704 * k + 3664714 := by
    unfold C
    simp [show (1889568 * k + 1221571) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3664714) = 2834352 * k + 1832357 := by
    unfold C
    simp [show (5668704 * k + 3664714) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1832357) = 8503056 * k + 5497072 := by
    unfold C
    simp [show (2834352 * k + 1832357) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5497072) = 4251528 * k + 2748536 := by
    unfold C
    simp [show (8503056 * k + 5497072) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2748536) = 2125764 * k + 1374268 := by
    unfold C
    simp [show (4251528 * k + 2748536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1374268) = 1062882 * k + 687134 := by
    unfold C
    simp [show (2125764 * k + 1374268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 687134) = 531441 * k + 343567 := by
    unfold C
    simp [show (1062882 * k + 687134) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677883) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677883)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_677919 : ∀ k : Nat,
    iterate (1048576 * k + 677919) 32 = 531441 * k + 343585 ∧
      531441 * k + 343585 < 1048576 * k + 677919 := by
  intro k
  have h1 : C (1048576 * k + 677919) = 3145728 * k + 2033758 := by
    unfold C
    simp [show (1048576 * k + 677919) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2033758) = 1572864 * k + 1016879 := by
    unfold C
    simp [show (3145728 * k + 2033758) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1016879) = 4718592 * k + 3050638 := by
    unfold C
    simp [show (1572864 * k + 1016879) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3050638) = 2359296 * k + 1525319 := by
    unfold C
    simp [show (4718592 * k + 3050638) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1525319) = 7077888 * k + 4575958 := by
    unfold C
    simp [show (2359296 * k + 1525319) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4575958) = 3538944 * k + 2287979 := by
    unfold C
    simp [show (7077888 * k + 4575958) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2287979) = 10616832 * k + 6863938 := by
    unfold C
    simp [show (3538944 * k + 2287979) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6863938) = 5308416 * k + 3431969 := by
    unfold C
    simp [show (10616832 * k + 6863938) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3431969) = 15925248 * k + 10295908 := by
    unfold C
    simp [show (5308416 * k + 3431969) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10295908) = 7962624 * k + 5147954 := by
    unfold C
    simp [show (15925248 * k + 10295908) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5147954) = 3981312 * k + 2573977 := by
    unfold C
    simp [show (7962624 * k + 5147954) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2573977) = 11943936 * k + 7721932 := by
    unfold C
    simp [show (3981312 * k + 2573977) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7721932) = 5971968 * k + 3860966 := by
    unfold C
    simp [show (11943936 * k + 7721932) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3860966) = 2985984 * k + 1930483 := by
    unfold C
    simp [show (5971968 * k + 3860966) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1930483) = 8957952 * k + 5791450 := by
    unfold C
    simp [show (2985984 * k + 1930483) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 5791450) = 4478976 * k + 2895725 := by
    unfold C
    simp [show (8957952 * k + 5791450) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2895725) = 13436928 * k + 8687176 := by
    unfold C
    simp [show (4478976 * k + 2895725) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8687176) = 6718464 * k + 4343588 := by
    unfold C
    simp [show (13436928 * k + 8687176) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4343588) = 3359232 * k + 2171794 := by
    unfold C
    simp [show (6718464 * k + 4343588) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2171794) = 1679616 * k + 1085897 := by
    unfold C
    simp [show (3359232 * k + 2171794) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1085897) = 5038848 * k + 3257692 := by
    unfold C
    simp [show (1679616 * k + 1085897) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 3257692) = 2519424 * k + 1628846 := by
    unfold C
    simp [show (5038848 * k + 3257692) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1628846) = 1259712 * k + 814423 := by
    unfold C
    simp [show (2519424 * k + 1628846) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 814423) = 3779136 * k + 2443270 := by
    unfold C
    simp [show (1259712 * k + 814423) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 2443270) = 1889568 * k + 1221635 := by
    unfold C
    simp [show (3779136 * k + 2443270) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1221635) = 5668704 * k + 3664906 := by
    unfold C
    simp [show (1889568 * k + 1221635) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3664906) = 2834352 * k + 1832453 := by
    unfold C
    simp [show (5668704 * k + 3664906) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1832453) = 8503056 * k + 5497360 := by
    unfold C
    simp [show (2834352 * k + 1832453) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5497360) = 4251528 * k + 2748680 := by
    unfold C
    simp [show (8503056 * k + 5497360) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2748680) = 2125764 * k + 1374340 := by
    unfold C
    simp [show (4251528 * k + 2748680) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1374340) = 1062882 * k + 687170 := by
    unfold C
    simp [show (2125764 * k + 1374340) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 687170) = 531441 * k + 343585 := by
    unfold C
    simp [show (1062882 * k + 687170) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 677919) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 677919)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_678383 : ∀ k : Nat,
    iterate (1048576 * k + 678383) 32 = 531441 * k + 343820 ∧
      531441 * k + 343820 < 1048576 * k + 678383 := by
  intro k
  have h1 : C (1048576 * k + 678383) = 3145728 * k + 2035150 := by
    unfold C
    simp [show (1048576 * k + 678383) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2035150) = 1572864 * k + 1017575 := by
    unfold C
    simp [show (3145728 * k + 2035150) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1017575) = 4718592 * k + 3052726 := by
    unfold C
    simp [show (1572864 * k + 1017575) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3052726) = 2359296 * k + 1526363 := by
    unfold C
    simp [show (4718592 * k + 3052726) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1526363) = 7077888 * k + 4579090 := by
    unfold C
    simp [show (2359296 * k + 1526363) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4579090) = 3538944 * k + 2289545 := by
    unfold C
    simp [show (7077888 * k + 4579090) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2289545) = 10616832 * k + 6868636 := by
    unfold C
    simp [show (3538944 * k + 2289545) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6868636) = 5308416 * k + 3434318 := by
    unfold C
    simp [show (10616832 * k + 6868636) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3434318) = 2654208 * k + 1717159 := by
    unfold C
    simp [show (5308416 * k + 3434318) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1717159) = 7962624 * k + 5151478 := by
    unfold C
    simp [show (2654208 * k + 1717159) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5151478) = 3981312 * k + 2575739 := by
    unfold C
    simp [show (7962624 * k + 5151478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2575739) = 11943936 * k + 7727218 := by
    unfold C
    simp [show (3981312 * k + 2575739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7727218) = 5971968 * k + 3863609 := by
    unfold C
    simp [show (11943936 * k + 7727218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3863609) = 17915904 * k + 11590828 := by
    unfold C
    simp [show (5971968 * k + 3863609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11590828) = 8957952 * k + 5795414 := by
    unfold C
    simp [show (17915904 * k + 11590828) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5795414) = 4478976 * k + 2897707 := by
    unfold C
    simp [show (8957952 * k + 5795414) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2897707) = 13436928 * k + 8693122 := by
    unfold C
    simp [show (4478976 * k + 2897707) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8693122) = 6718464 * k + 4346561 := by
    unfold C
    simp [show (13436928 * k + 8693122) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4346561) = 20155392 * k + 13039684 := by
    unfold C
    simp [show (6718464 * k + 4346561) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13039684) = 10077696 * k + 6519842 := by
    unfold C
    simp [show (20155392 * k + 13039684) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6519842) = 5038848 * k + 3259921 := by
    unfold C
    simp [show (10077696 * k + 6519842) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3259921) = 15116544 * k + 9779764 := by
    unfold C
    simp [show (5038848 * k + 3259921) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9779764) = 7558272 * k + 4889882 := by
    unfold C
    simp [show (15116544 * k + 9779764) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4889882) = 3779136 * k + 2444941 := by
    unfold C
    simp [show (7558272 * k + 4889882) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2444941) = 11337408 * k + 7334824 := by
    unfold C
    simp [show (3779136 * k + 2444941) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 7334824) = 5668704 * k + 3667412 := by
    unfold C
    simp [show (11337408 * k + 7334824) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3667412) = 2834352 * k + 1833706 := by
    unfold C
    simp [show (5668704 * k + 3667412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1833706) = 1417176 * k + 916853 := by
    unfold C
    simp [show (2834352 * k + 1833706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 916853) = 4251528 * k + 2750560 := by
    unfold C
    simp [show (1417176 * k + 916853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2750560) = 2125764 * k + 1375280 := by
    unfold C
    simp [show (4251528 * k + 2750560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1375280) = 1062882 * k + 687640 := by
    unfold C
    simp [show (2125764 * k + 1375280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 687640) = 531441 * k + 343820 := by
    unfold C
    simp [show (1062882 * k + 687640) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 678383) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 678383)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_678939 : ∀ k : Nat,
    iterate (1048576 * k + 678939) 32 = 531441 * k + 344102 ∧
      531441 * k + 344102 < 1048576 * k + 678939 := by
  intro k
  have h1 : C (1048576 * k + 678939) = 3145728 * k + 2036818 := by
    unfold C
    simp [show (1048576 * k + 678939) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2036818) = 1572864 * k + 1018409 := by
    unfold C
    simp [show (3145728 * k + 2036818) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1018409) = 4718592 * k + 3055228 := by
    unfold C
    simp [show (1572864 * k + 1018409) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3055228) = 2359296 * k + 1527614 := by
    unfold C
    simp [show (4718592 * k + 3055228) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1527614) = 1179648 * k + 763807 := by
    unfold C
    simp [show (2359296 * k + 1527614) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 763807) = 3538944 * k + 2291422 := by
    unfold C
    simp [show (1179648 * k + 763807) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2291422) = 1769472 * k + 1145711 := by
    unfold C
    simp [show (3538944 * k + 2291422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1145711) = 5308416 * k + 3437134 := by
    unfold C
    simp [show (1769472 * k + 1145711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3437134) = 2654208 * k + 1718567 := by
    unfold C
    simp [show (5308416 * k + 3437134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1718567) = 7962624 * k + 5155702 := by
    unfold C
    simp [show (2654208 * k + 1718567) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5155702) = 3981312 * k + 2577851 := by
    unfold C
    simp [show (7962624 * k + 5155702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2577851) = 11943936 * k + 7733554 := by
    unfold C
    simp [show (3981312 * k + 2577851) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7733554) = 5971968 * k + 3866777 := by
    unfold C
    simp [show (11943936 * k + 7733554) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3866777) = 17915904 * k + 11600332 := by
    unfold C
    simp [show (5971968 * k + 3866777) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11600332) = 8957952 * k + 5800166 := by
    unfold C
    simp [show (17915904 * k + 11600332) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5800166) = 4478976 * k + 2900083 := by
    unfold C
    simp [show (8957952 * k + 5800166) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 2900083) = 13436928 * k + 8700250 := by
    unfold C
    simp [show (4478976 * k + 2900083) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 8700250) = 6718464 * k + 4350125 := by
    unfold C
    simp [show (13436928 * k + 8700250) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4350125) = 20155392 * k + 13050376 := by
    unfold C
    simp [show (6718464 * k + 4350125) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13050376) = 10077696 * k + 6525188 := by
    unfold C
    simp [show (20155392 * k + 13050376) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6525188) = 5038848 * k + 3262594 := by
    unfold C
    simp [show (10077696 * k + 6525188) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3262594) = 2519424 * k + 1631297 := by
    unfold C
    simp [show (5038848 * k + 3262594) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1631297) = 7558272 * k + 4893892 := by
    unfold C
    simp [show (2519424 * k + 1631297) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 4893892) = 3779136 * k + 2446946 := by
    unfold C
    simp [show (7558272 * k + 4893892) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 2446946) = 1889568 * k + 1223473 := by
    unfold C
    simp [show (3779136 * k + 2446946) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1223473) = 5668704 * k + 3670420 := by
    unfold C
    simp [show (1889568 * k + 1223473) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 3670420) = 2834352 * k + 1835210 := by
    unfold C
    simp [show (5668704 * k + 3670420) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1835210) = 1417176 * k + 917605 := by
    unfold C
    simp [show (2834352 * k + 1835210) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 917605) = 4251528 * k + 2752816 := by
    unfold C
    simp [show (1417176 * k + 917605) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 2752816) = 2125764 * k + 1376408 := by
    unfold C
    simp [show (4251528 * k + 2752816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1376408) = 1062882 * k + 688204 := by
    unfold C
    simp [show (2125764 * k + 1376408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 688204) = 531441 * k + 344102 := by
    unfold C
    simp [show (1062882 * k + 688204) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 678939) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 678939)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_679583 : ∀ k : Nat,
    iterate (1048576 * k + 679583) 32 = 531441 * k + 344428 ∧
      531441 * k + 344428 < 1048576 * k + 679583 := by
  intro k
  have h1 : C (1048576 * k + 679583) = 3145728 * k + 2038750 := by
    unfold C
    simp [show (1048576 * k + 679583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2038750) = 1572864 * k + 1019375 := by
    unfold C
    simp [show (3145728 * k + 2038750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1019375) = 4718592 * k + 3058126 := by
    unfold C
    simp [show (1572864 * k + 1019375) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3058126) = 2359296 * k + 1529063 := by
    unfold C
    simp [show (4718592 * k + 3058126) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1529063) = 7077888 * k + 4587190 := by
    unfold C
    simp [show (2359296 * k + 1529063) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 4587190) = 3538944 * k + 2293595 := by
    unfold C
    simp [show (7077888 * k + 4587190) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2293595) = 10616832 * k + 6880786 := by
    unfold C
    simp [show (3538944 * k + 2293595) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 6880786) = 5308416 * k + 3440393 := by
    unfold C
    simp [show (10616832 * k + 6880786) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 3440393) = 15925248 * k + 10321180 := by
    unfold C
    simp [show (5308416 * k + 3440393) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 10321180) = 7962624 * k + 5160590 := by
    unfold C
    simp [show (15925248 * k + 10321180) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 5160590) = 3981312 * k + 2580295 := by
    unfold C
    simp [show (7962624 * k + 5160590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2580295) = 11943936 * k + 7740886 := by
    unfold C
    simp [show (3981312 * k + 2580295) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7740886) = 5971968 * k + 3870443 := by
    unfold C
    simp [show (11943936 * k + 7740886) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3870443) = 17915904 * k + 11611330 := by
    unfold C
    simp [show (5971968 * k + 3870443) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11611330) = 8957952 * k + 5805665 := by
    unfold C
    simp [show (17915904 * k + 11611330) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5805665) = 26873856 * k + 17416996 := by
    unfold C
    simp [show (8957952 * k + 5805665) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17416996) = 13436928 * k + 8708498 := by
    unfold C
    simp [show (26873856 * k + 17416996) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8708498) = 6718464 * k + 4354249 := by
    unfold C
    simp [show (13436928 * k + 8708498) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 4354249) = 20155392 * k + 13062748 := by
    unfold C
    simp [show (6718464 * k + 4354249) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 13062748) = 10077696 * k + 6531374 := by
    unfold C
    simp [show (20155392 * k + 13062748) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 6531374) = 5038848 * k + 3265687 := by
    unfold C
    simp [show (10077696 * k + 6531374) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 3265687) = 15116544 * k + 9797062 := by
    unfold C
    simp [show (5038848 * k + 3265687) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 9797062) = 7558272 * k + 4898531 := by
    unfold C
    simp [show (15116544 * k + 9797062) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 4898531) = 22674816 * k + 14695594 := by
    unfold C
    simp [show (7558272 * k + 4898531) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 14695594) = 11337408 * k + 7347797 := by
    unfold C
    simp [show (22674816 * k + 14695594) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7347797) = 34012224 * k + 22043392 := by
    unfold C
    simp [show (11337408 * k + 7347797) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 22043392) = 17006112 * k + 11021696 := by
    unfold C
    simp [show (34012224 * k + 22043392) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 11021696) = 8503056 * k + 5510848 := by
    unfold C
    simp [show (17006112 * k + 11021696) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 5510848) = 4251528 * k + 2755424 := by
    unfold C
    simp [show (8503056 * k + 5510848) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2755424) = 2125764 * k + 1377712 := by
    unfold C
    simp [show (4251528 * k + 2755424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1377712) = 1062882 * k + 688856 := by
    unfold C
    simp [show (2125764 * k + 1377712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 688856) = 531441 * k + 344428 := by
    unfold C
    simp [show (1062882 * k + 688856) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 679583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 679583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_679707 : ∀ k : Nat,
    iterate (1048576 * k + 679707) 32 = 531441 * k + 344491 ∧
      531441 * k + 344491 < 1048576 * k + 679707 := by
  intro k
  have h1 : C (1048576 * k + 679707) = 3145728 * k + 2039122 := by
    unfold C
    simp [show (1048576 * k + 679707) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2039122) = 1572864 * k + 1019561 := by
    unfold C
    simp [show (3145728 * k + 2039122) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1019561) = 4718592 * k + 3058684 := by
    unfold C
    simp [show (1572864 * k + 1019561) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3058684) = 2359296 * k + 1529342 := by
    unfold C
    simp [show (4718592 * k + 3058684) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1529342) = 1179648 * k + 764671 := by
    unfold C
    simp [show (2359296 * k + 1529342) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 764671) = 3538944 * k + 2294014 := by
    unfold C
    simp [show (1179648 * k + 764671) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 2294014) = 1769472 * k + 1147007 := by
    unfold C
    simp [show (3538944 * k + 2294014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1147007) = 5308416 * k + 3441022 := by
    unfold C
    simp [show (1769472 * k + 1147007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 3441022) = 2654208 * k + 1720511 := by
    unfold C
    simp [show (5308416 * k + 3441022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1720511) = 7962624 * k + 5161534 := by
    unfold C
    simp [show (2654208 * k + 1720511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 5161534) = 3981312 * k + 2580767 := by
    unfold C
    simp [show (7962624 * k + 5161534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 2580767) = 11943936 * k + 7742302 := by
    unfold C
    simp [show (3981312 * k + 2580767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 7742302) = 5971968 * k + 3871151 := by
    unfold C
    simp [show (11943936 * k + 7742302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 3871151) = 17915904 * k + 11613454 := by
    unfold C
    simp [show (5971968 * k + 3871151) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 11613454) = 8957952 * k + 5806727 := by
    unfold C
    simp [show (17915904 * k + 11613454) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 5806727) = 26873856 * k + 17420182 := by
    unfold C
    simp [show (8957952 * k + 5806727) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 17420182) = 13436928 * k + 8710091 := by
    unfold C
    simp [show (26873856 * k + 17420182) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 8710091) = 40310784 * k + 26130274 := by
    unfold C
    simp [show (13436928 * k + 8710091) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 26130274) = 20155392 * k + 13065137 := by
    unfold C
    simp [show (40310784 * k + 26130274) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 13065137) = 60466176 * k + 39195412 := by
    unfold C
    simp [show (20155392 * k + 13065137) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 39195412) = 30233088 * k + 19597706 := by
    unfold C
    simp [show (60466176 * k + 39195412) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 19597706) = 15116544 * k + 9798853 := by
    unfold C
    simp [show (30233088 * k + 19597706) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 9798853) = 45349632 * k + 29396560 := by
    unfold C
    simp [show (15116544 * k + 9798853) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 29396560) = 22674816 * k + 14698280 := by
    unfold C
    simp [show (45349632 * k + 29396560) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 14698280) = 11337408 * k + 7349140 := by
    unfold C
    simp [show (22674816 * k + 14698280) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 7349140) = 5668704 * k + 3674570 := by
    unfold C
    simp [show (11337408 * k + 7349140) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 3674570) = 2834352 * k + 1837285 := by
    unfold C
    simp [show (5668704 * k + 3674570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1837285) = 8503056 * k + 5511856 := by
    unfold C
    simp [show (2834352 * k + 1837285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 5511856) = 4251528 * k + 2755928 := by
    unfold C
    simp [show (8503056 * k + 5511856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 2755928) = 2125764 * k + 1377964 := by
    unfold C
    simp [show (4251528 * k + 2755928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1377964) = 1062882 * k + 688982 := by
    unfold C
    simp [show (2125764 * k + 1377964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 688982) = 531441 * k + 344491 := by
    unfold C
    simp [show (1062882 * k + 688982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 679707) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 679707)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard087
