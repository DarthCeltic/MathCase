import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard107

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_833791 : ∀ k : Nat,
    iterate (1048576 * k + 833791) 32 = 531441 * k + 422584 ∧
      531441 * k + 422584 < 1048576 * k + 833791 := by
  intro k
  have h1 : C (1048576 * k + 833791) = 3145728 * k + 2501374 := by
    unfold C
    simp [show (1048576 * k + 833791) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2501374) = 1572864 * k + 1250687 := by
    unfold C
    simp [show (3145728 * k + 2501374) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1250687) = 4718592 * k + 3752062 := by
    unfold C
    simp [show (1572864 * k + 1250687) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3752062) = 2359296 * k + 1876031 := by
    unfold C
    simp [show (4718592 * k + 3752062) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1876031) = 7077888 * k + 5628094 := by
    unfold C
    simp [show (2359296 * k + 1876031) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5628094) = 3538944 * k + 2814047 := by
    unfold C
    simp [show (7077888 * k + 5628094) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2814047) = 10616832 * k + 8442142 := by
    unfold C
    simp [show (3538944 * k + 2814047) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8442142) = 5308416 * k + 4221071 := by
    unfold C
    simp [show (10616832 * k + 8442142) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4221071) = 15925248 * k + 12663214 := by
    unfold C
    simp [show (5308416 * k + 4221071) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12663214) = 7962624 * k + 6331607 := by
    unfold C
    simp [show (15925248 * k + 12663214) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6331607) = 23887872 * k + 18994822 := by
    unfold C
    simp [show (7962624 * k + 6331607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 18994822) = 11943936 * k + 9497411 := by
    unfold C
    simp [show (23887872 * k + 18994822) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9497411) = 35831808 * k + 28492234 := by
    unfold C
    simp [show (11943936 * k + 9497411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28492234) = 17915904 * k + 14246117 := by
    unfold C
    simp [show (35831808 * k + 28492234) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14246117) = 53747712 * k + 42738352 := by
    unfold C
    simp [show (17915904 * k + 14246117) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 42738352) = 26873856 * k + 21369176 := by
    unfold C
    simp [show (53747712 * k + 42738352) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 21369176) = 13436928 * k + 10684588 := by
    unfold C
    simp [show (26873856 * k + 21369176) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10684588) = 6718464 * k + 5342294 := by
    unfold C
    simp [show (13436928 * k + 10684588) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5342294) = 3359232 * k + 2671147 := by
    unfold C
    simp [show (6718464 * k + 5342294) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2671147) = 10077696 * k + 8013442 := by
    unfold C
    simp [show (3359232 * k + 2671147) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8013442) = 5038848 * k + 4006721 := by
    unfold C
    simp [show (10077696 * k + 8013442) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4006721) = 15116544 * k + 12020164 := by
    unfold C
    simp [show (5038848 * k + 4006721) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12020164) = 7558272 * k + 6010082 := by
    unfold C
    simp [show (15116544 * k + 12020164) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6010082) = 3779136 * k + 3005041 := by
    unfold C
    simp [show (7558272 * k + 6010082) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3005041) = 11337408 * k + 9015124 := by
    unfold C
    simp [show (3779136 * k + 3005041) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9015124) = 5668704 * k + 4507562 := by
    unfold C
    simp [show (11337408 * k + 9015124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4507562) = 2834352 * k + 2253781 := by
    unfold C
    simp [show (5668704 * k + 4507562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2253781) = 8503056 * k + 6761344 := by
    unfold C
    simp [show (2834352 * k + 2253781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6761344) = 4251528 * k + 3380672 := by
    unfold C
    simp [show (8503056 * k + 6761344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3380672) = 2125764 * k + 1690336 := by
    unfold C
    simp [show (4251528 * k + 3380672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1690336) = 1062882 * k + 845168 := by
    unfold C
    simp [show (2125764 * k + 1690336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 845168) = 531441 * k + 422584 := by
    unfold C
    simp [show (1062882 * k + 845168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 833791) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 833791)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_834663 : ∀ k : Nat,
    iterate (1048576 * k + 834663) 32 = 531441 * k + 423026 ∧
      531441 * k + 423026 < 1048576 * k + 834663 := by
  intro k
  have h1 : C (1048576 * k + 834663) = 3145728 * k + 2503990 := by
    unfold C
    simp [show (1048576 * k + 834663) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2503990) = 1572864 * k + 1251995 := by
    unfold C
    simp [show (3145728 * k + 2503990) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1251995) = 4718592 * k + 3755986 := by
    unfold C
    simp [show (1572864 * k + 1251995) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3755986) = 2359296 * k + 1877993 := by
    unfold C
    simp [show (4718592 * k + 3755986) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1877993) = 7077888 * k + 5633980 := by
    unfold C
    simp [show (2359296 * k + 1877993) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5633980) = 3538944 * k + 2816990 := by
    unfold C
    simp [show (7077888 * k + 5633980) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2816990) = 1769472 * k + 1408495 := by
    unfold C
    simp [show (3538944 * k + 2816990) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1408495) = 5308416 * k + 4225486 := by
    unfold C
    simp [show (1769472 * k + 1408495) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4225486) = 2654208 * k + 2112743 := by
    unfold C
    simp [show (5308416 * k + 4225486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2112743) = 7962624 * k + 6338230 := by
    unfold C
    simp [show (2654208 * k + 2112743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6338230) = 3981312 * k + 3169115 := by
    unfold C
    simp [show (7962624 * k + 6338230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3169115) = 11943936 * k + 9507346 := by
    unfold C
    simp [show (3981312 * k + 3169115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9507346) = 5971968 * k + 4753673 := by
    unfold C
    simp [show (11943936 * k + 9507346) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4753673) = 17915904 * k + 14261020 := by
    unfold C
    simp [show (5971968 * k + 4753673) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14261020) = 8957952 * k + 7130510 := by
    unfold C
    simp [show (17915904 * k + 14261020) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7130510) = 4478976 * k + 3565255 := by
    unfold C
    simp [show (8957952 * k + 7130510) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3565255) = 13436928 * k + 10695766 := by
    unfold C
    simp [show (4478976 * k + 3565255) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10695766) = 6718464 * k + 5347883 := by
    unfold C
    simp [show (13436928 * k + 10695766) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5347883) = 20155392 * k + 16043650 := by
    unfold C
    simp [show (6718464 * k + 5347883) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16043650) = 10077696 * k + 8021825 := by
    unfold C
    simp [show (20155392 * k + 16043650) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8021825) = 30233088 * k + 24065476 := by
    unfold C
    simp [show (10077696 * k + 8021825) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24065476) = 15116544 * k + 12032738 := by
    unfold C
    simp [show (30233088 * k + 24065476) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12032738) = 7558272 * k + 6016369 := by
    unfold C
    simp [show (15116544 * k + 12032738) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6016369) = 22674816 * k + 18049108 := by
    unfold C
    simp [show (7558272 * k + 6016369) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18049108) = 11337408 * k + 9024554 := by
    unfold C
    simp [show (22674816 * k + 18049108) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9024554) = 5668704 * k + 4512277 := by
    unfold C
    simp [show (11337408 * k + 9024554) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4512277) = 17006112 * k + 13536832 := by
    unfold C
    simp [show (5668704 * k + 4512277) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13536832) = 8503056 * k + 6768416 := by
    unfold C
    simp [show (17006112 * k + 13536832) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6768416) = 4251528 * k + 3384208 := by
    unfold C
    simp [show (8503056 * k + 6768416) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3384208) = 2125764 * k + 1692104 := by
    unfold C
    simp [show (4251528 * k + 3384208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1692104) = 1062882 * k + 846052 := by
    unfold C
    simp [show (2125764 * k + 1692104) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 846052) = 531441 * k + 423026 := by
    unfold C
    simp [show (1062882 * k + 846052) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 834663) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 834663)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_834799 : ∀ k : Nat,
    iterate (1048576 * k + 834799) 32 = 531441 * k + 423095 ∧
      531441 * k + 423095 < 1048576 * k + 834799 := by
  intro k
  have h1 : C (1048576 * k + 834799) = 3145728 * k + 2504398 := by
    unfold C
    simp [show (1048576 * k + 834799) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2504398) = 1572864 * k + 1252199 := by
    unfold C
    simp [show (3145728 * k + 2504398) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1252199) = 4718592 * k + 3756598 := by
    unfold C
    simp [show (1572864 * k + 1252199) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3756598) = 2359296 * k + 1878299 := by
    unfold C
    simp [show (4718592 * k + 3756598) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1878299) = 7077888 * k + 5634898 := by
    unfold C
    simp [show (2359296 * k + 1878299) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5634898) = 3538944 * k + 2817449 := by
    unfold C
    simp [show (7077888 * k + 5634898) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2817449) = 10616832 * k + 8452348 := by
    unfold C
    simp [show (3538944 * k + 2817449) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8452348) = 5308416 * k + 4226174 := by
    unfold C
    simp [show (10616832 * k + 8452348) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4226174) = 2654208 * k + 2113087 := by
    unfold C
    simp [show (5308416 * k + 4226174) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2113087) = 7962624 * k + 6339262 := by
    unfold C
    simp [show (2654208 * k + 2113087) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6339262) = 3981312 * k + 3169631 := by
    unfold C
    simp [show (7962624 * k + 6339262) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3169631) = 11943936 * k + 9508894 := by
    unfold C
    simp [show (3981312 * k + 3169631) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9508894) = 5971968 * k + 4754447 := by
    unfold C
    simp [show (11943936 * k + 9508894) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4754447) = 17915904 * k + 14263342 := by
    unfold C
    simp [show (5971968 * k + 4754447) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14263342) = 8957952 * k + 7131671 := by
    unfold C
    simp [show (17915904 * k + 14263342) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7131671) = 26873856 * k + 21395014 := by
    unfold C
    simp [show (8957952 * k + 7131671) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21395014) = 13436928 * k + 10697507 := by
    unfold C
    simp [show (26873856 * k + 21395014) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10697507) = 40310784 * k + 32092522 := by
    unfold C
    simp [show (13436928 * k + 10697507) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32092522) = 20155392 * k + 16046261 := by
    unfold C
    simp [show (40310784 * k + 32092522) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16046261) = 60466176 * k + 48138784 := by
    unfold C
    simp [show (20155392 * k + 16046261) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 48138784) = 30233088 * k + 24069392 := by
    unfold C
    simp [show (60466176 * k + 48138784) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 24069392) = 15116544 * k + 12034696 := by
    unfold C
    simp [show (30233088 * k + 24069392) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12034696) = 7558272 * k + 6017348 := by
    unfold C
    simp [show (15116544 * k + 12034696) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6017348) = 3779136 * k + 3008674 := by
    unfold C
    simp [show (7558272 * k + 6017348) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3008674) = 1889568 * k + 1504337 := by
    unfold C
    simp [show (3779136 * k + 3008674) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1504337) = 5668704 * k + 4513012 := by
    unfold C
    simp [show (1889568 * k + 1504337) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4513012) = 2834352 * k + 2256506 := by
    unfold C
    simp [show (5668704 * k + 4513012) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2256506) = 1417176 * k + 1128253 := by
    unfold C
    simp [show (2834352 * k + 2256506) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1128253) = 4251528 * k + 3384760 := by
    unfold C
    simp [show (1417176 * k + 1128253) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3384760) = 2125764 * k + 1692380 := by
    unfold C
    simp [show (4251528 * k + 3384760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1692380) = 1062882 * k + 846190 := by
    unfold C
    simp [show (2125764 * k + 1692380) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 846190) = 531441 * k + 423095 := by
    unfold C
    simp [show (1062882 * k + 846190) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 834799) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 834799)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_835823 : ∀ k : Nat,
    iterate (1048576 * k + 835823) 32 = 531441 * k + 423614 ∧
      531441 * k + 423614 < 1048576 * k + 835823 := by
  intro k
  have h1 : C (1048576 * k + 835823) = 3145728 * k + 2507470 := by
    unfold C
    simp [show (1048576 * k + 835823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2507470) = 1572864 * k + 1253735 := by
    unfold C
    simp [show (3145728 * k + 2507470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1253735) = 4718592 * k + 3761206 := by
    unfold C
    simp [show (1572864 * k + 1253735) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3761206) = 2359296 * k + 1880603 := by
    unfold C
    simp [show (4718592 * k + 3761206) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1880603) = 7077888 * k + 5641810 := by
    unfold C
    simp [show (2359296 * k + 1880603) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5641810) = 3538944 * k + 2820905 := by
    unfold C
    simp [show (7077888 * k + 5641810) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2820905) = 10616832 * k + 8462716 := by
    unfold C
    simp [show (3538944 * k + 2820905) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8462716) = 5308416 * k + 4231358 := by
    unfold C
    simp [show (10616832 * k + 8462716) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4231358) = 2654208 * k + 2115679 := by
    unfold C
    simp [show (5308416 * k + 4231358) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2115679) = 7962624 * k + 6347038 := by
    unfold C
    simp [show (2654208 * k + 2115679) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6347038) = 3981312 * k + 3173519 := by
    unfold C
    simp [show (7962624 * k + 6347038) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3173519) = 11943936 * k + 9520558 := by
    unfold C
    simp [show (3981312 * k + 3173519) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9520558) = 5971968 * k + 4760279 := by
    unfold C
    simp [show (11943936 * k + 9520558) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4760279) = 17915904 * k + 14280838 := by
    unfold C
    simp [show (5971968 * k + 4760279) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14280838) = 8957952 * k + 7140419 := by
    unfold C
    simp [show (17915904 * k + 14280838) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7140419) = 26873856 * k + 21421258 := by
    unfold C
    simp [show (8957952 * k + 7140419) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21421258) = 13436928 * k + 10710629 := by
    unfold C
    simp [show (26873856 * k + 21421258) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10710629) = 40310784 * k + 32131888 := by
    unfold C
    simp [show (13436928 * k + 10710629) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 32131888) = 20155392 * k + 16065944 := by
    unfold C
    simp [show (40310784 * k + 32131888) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 16065944) = 10077696 * k + 8032972 := by
    unfold C
    simp [show (20155392 * k + 16065944) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8032972) = 5038848 * k + 4016486 := by
    unfold C
    simp [show (10077696 * k + 8032972) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4016486) = 2519424 * k + 2008243 := by
    unfold C
    simp [show (5038848 * k + 4016486) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2008243) = 7558272 * k + 6024730 := by
    unfold C
    simp [show (2519424 * k + 2008243) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6024730) = 3779136 * k + 3012365 := by
    unfold C
    simp [show (7558272 * k + 6024730) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3012365) = 11337408 * k + 9037096 := by
    unfold C
    simp [show (3779136 * k + 3012365) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9037096) = 5668704 * k + 4518548 := by
    unfold C
    simp [show (11337408 * k + 9037096) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4518548) = 2834352 * k + 2259274 := by
    unfold C
    simp [show (5668704 * k + 4518548) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2259274) = 1417176 * k + 1129637 := by
    unfold C
    simp [show (2834352 * k + 2259274) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1129637) = 4251528 * k + 3388912 := by
    unfold C
    simp [show (1417176 * k + 1129637) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3388912) = 2125764 * k + 1694456 := by
    unfold C
    simp [show (4251528 * k + 3388912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1694456) = 1062882 * k + 847228 := by
    unfold C
    simp [show (2125764 * k + 1694456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 847228) = 531441 * k + 423614 := by
    unfold C
    simp [show (1062882 * k + 847228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 835823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 835823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_836255 : ∀ k : Nat,
    iterate (1048576 * k + 836255) 32 = 531441 * k + 423833 ∧
      531441 * k + 423833 < 1048576 * k + 836255 := by
  intro k
  have h1 : C (1048576 * k + 836255) = 3145728 * k + 2508766 := by
    unfold C
    simp [show (1048576 * k + 836255) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2508766) = 1572864 * k + 1254383 := by
    unfold C
    simp [show (3145728 * k + 2508766) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1254383) = 4718592 * k + 3763150 := by
    unfold C
    simp [show (1572864 * k + 1254383) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3763150) = 2359296 * k + 1881575 := by
    unfold C
    simp [show (4718592 * k + 3763150) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1881575) = 7077888 * k + 5644726 := by
    unfold C
    simp [show (2359296 * k + 1881575) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5644726) = 3538944 * k + 2822363 := by
    unfold C
    simp [show (7077888 * k + 5644726) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2822363) = 10616832 * k + 8467090 := by
    unfold C
    simp [show (3538944 * k + 2822363) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8467090) = 5308416 * k + 4233545 := by
    unfold C
    simp [show (10616832 * k + 8467090) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4233545) = 15925248 * k + 12700636 := by
    unfold C
    simp [show (5308416 * k + 4233545) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12700636) = 7962624 * k + 6350318 := by
    unfold C
    simp [show (15925248 * k + 12700636) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6350318) = 3981312 * k + 3175159 := by
    unfold C
    simp [show (7962624 * k + 6350318) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3175159) = 11943936 * k + 9525478 := by
    unfold C
    simp [show (3981312 * k + 3175159) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9525478) = 5971968 * k + 4762739 := by
    unfold C
    simp [show (11943936 * k + 9525478) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4762739) = 17915904 * k + 14288218 := by
    unfold C
    simp [show (5971968 * k + 4762739) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14288218) = 8957952 * k + 7144109 := by
    unfold C
    simp [show (17915904 * k + 14288218) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7144109) = 26873856 * k + 21432328 := by
    unfold C
    simp [show (8957952 * k + 7144109) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21432328) = 13436928 * k + 10716164 := by
    unfold C
    simp [show (26873856 * k + 21432328) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10716164) = 6718464 * k + 5358082 := by
    unfold C
    simp [show (13436928 * k + 10716164) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5358082) = 3359232 * k + 2679041 := by
    unfold C
    simp [show (6718464 * k + 5358082) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2679041) = 10077696 * k + 8037124 := by
    unfold C
    simp [show (3359232 * k + 2679041) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8037124) = 5038848 * k + 4018562 := by
    unfold C
    simp [show (10077696 * k + 8037124) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4018562) = 2519424 * k + 2009281 := by
    unfold C
    simp [show (5038848 * k + 4018562) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2009281) = 7558272 * k + 6027844 := by
    unfold C
    simp [show (2519424 * k + 2009281) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6027844) = 3779136 * k + 3013922 := by
    unfold C
    simp [show (7558272 * k + 6027844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3013922) = 1889568 * k + 1506961 := by
    unfold C
    simp [show (3779136 * k + 3013922) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1506961) = 5668704 * k + 4520884 := by
    unfold C
    simp [show (1889568 * k + 1506961) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4520884) = 2834352 * k + 2260442 := by
    unfold C
    simp [show (5668704 * k + 4520884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2260442) = 1417176 * k + 1130221 := by
    unfold C
    simp [show (2834352 * k + 2260442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1130221) = 4251528 * k + 3390664 := by
    unfold C
    simp [show (1417176 * k + 1130221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3390664) = 2125764 * k + 1695332 := by
    unfold C
    simp [show (4251528 * k + 3390664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1695332) = 1062882 * k + 847666 := by
    unfold C
    simp [show (2125764 * k + 1695332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 847666) = 531441 * k + 423833 := by
    unfold C
    simp [show (1062882 * k + 847666) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 836255) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 836255)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_837023 : ∀ k : Nat,
    iterate (1048576 * k + 837023) 32 = 531441 * k + 424222 ∧
      531441 * k + 424222 < 1048576 * k + 837023 := by
  intro k
  have h1 : C (1048576 * k + 837023) = 3145728 * k + 2511070 := by
    unfold C
    simp [show (1048576 * k + 837023) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2511070) = 1572864 * k + 1255535 := by
    unfold C
    simp [show (3145728 * k + 2511070) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1255535) = 4718592 * k + 3766606 := by
    unfold C
    simp [show (1572864 * k + 1255535) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3766606) = 2359296 * k + 1883303 := by
    unfold C
    simp [show (4718592 * k + 3766606) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1883303) = 7077888 * k + 5649910 := by
    unfold C
    simp [show (2359296 * k + 1883303) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5649910) = 3538944 * k + 2824955 := by
    unfold C
    simp [show (7077888 * k + 5649910) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2824955) = 10616832 * k + 8474866 := by
    unfold C
    simp [show (3538944 * k + 2824955) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8474866) = 5308416 * k + 4237433 := by
    unfold C
    simp [show (10616832 * k + 8474866) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4237433) = 15925248 * k + 12712300 := by
    unfold C
    simp [show (5308416 * k + 4237433) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12712300) = 7962624 * k + 6356150 := by
    unfold C
    simp [show (15925248 * k + 12712300) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6356150) = 3981312 * k + 3178075 := by
    unfold C
    simp [show (7962624 * k + 6356150) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3178075) = 11943936 * k + 9534226 := by
    unfold C
    simp [show (3981312 * k + 3178075) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9534226) = 5971968 * k + 4767113 := by
    unfold C
    simp [show (11943936 * k + 9534226) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4767113) = 17915904 * k + 14301340 := by
    unfold C
    simp [show (5971968 * k + 4767113) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14301340) = 8957952 * k + 7150670 := by
    unfold C
    simp [show (17915904 * k + 14301340) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7150670) = 4478976 * k + 3575335 := by
    unfold C
    simp [show (8957952 * k + 7150670) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3575335) = 13436928 * k + 10726006 := by
    unfold C
    simp [show (4478976 * k + 3575335) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10726006) = 6718464 * k + 5363003 := by
    unfold C
    simp [show (13436928 * k + 10726006) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5363003) = 20155392 * k + 16089010 := by
    unfold C
    simp [show (6718464 * k + 5363003) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16089010) = 10077696 * k + 8044505 := by
    unfold C
    simp [show (20155392 * k + 16089010) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8044505) = 30233088 * k + 24133516 := by
    unfold C
    simp [show (10077696 * k + 8044505) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24133516) = 15116544 * k + 12066758 := by
    unfold C
    simp [show (30233088 * k + 24133516) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12066758) = 7558272 * k + 6033379 := by
    unfold C
    simp [show (15116544 * k + 12066758) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6033379) = 22674816 * k + 18100138 := by
    unfold C
    simp [show (7558272 * k + 6033379) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18100138) = 11337408 * k + 9050069 := by
    unfold C
    simp [show (22674816 * k + 18100138) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9050069) = 34012224 * k + 27150208 := by
    unfold C
    simp [show (11337408 * k + 9050069) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 27150208) = 17006112 * k + 13575104 := by
    unfold C
    simp [show (34012224 * k + 27150208) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13575104) = 8503056 * k + 6787552 := by
    unfold C
    simp [show (17006112 * k + 13575104) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6787552) = 4251528 * k + 3393776 := by
    unfold C
    simp [show (8503056 * k + 6787552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3393776) = 2125764 * k + 1696888 := by
    unfold C
    simp [show (4251528 * k + 3393776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1696888) = 1062882 * k + 848444 := by
    unfold C
    simp [show (2125764 * k + 1696888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 848444) = 531441 * k + 424222 := by
    unfold C
    simp [show (1062882 * k + 848444) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 837023) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 837023)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_837543 : ∀ k : Nat,
    iterate (1048576 * k + 837543) 32 = 531441 * k + 424486 ∧
      531441 * k + 424486 < 1048576 * k + 837543 := by
  intro k
  have h1 : C (1048576 * k + 837543) = 3145728 * k + 2512630 := by
    unfold C
    simp [show (1048576 * k + 837543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2512630) = 1572864 * k + 1256315 := by
    unfold C
    simp [show (3145728 * k + 2512630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1256315) = 4718592 * k + 3768946 := by
    unfold C
    simp [show (1572864 * k + 1256315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3768946) = 2359296 * k + 1884473 := by
    unfold C
    simp [show (4718592 * k + 3768946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1884473) = 7077888 * k + 5653420 := by
    unfold C
    simp [show (2359296 * k + 1884473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5653420) = 3538944 * k + 2826710 := by
    unfold C
    simp [show (7077888 * k + 5653420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2826710) = 1769472 * k + 1413355 := by
    unfold C
    simp [show (3538944 * k + 2826710) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1413355) = 5308416 * k + 4240066 := by
    unfold C
    simp [show (1769472 * k + 1413355) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4240066) = 2654208 * k + 2120033 := by
    unfold C
    simp [show (5308416 * k + 4240066) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2120033) = 7962624 * k + 6360100 := by
    unfold C
    simp [show (2654208 * k + 2120033) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6360100) = 3981312 * k + 3180050 := by
    unfold C
    simp [show (7962624 * k + 6360100) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3180050) = 1990656 * k + 1590025 := by
    unfold C
    simp [show (3981312 * k + 3180050) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1590025) = 5971968 * k + 4770076 := by
    unfold C
    simp [show (1990656 * k + 1590025) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4770076) = 2985984 * k + 2385038 := by
    unfold C
    simp [show (5971968 * k + 4770076) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2385038) = 1492992 * k + 1192519 := by
    unfold C
    simp [show (2985984 * k + 2385038) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1192519) = 4478976 * k + 3577558 := by
    unfold C
    simp [show (1492992 * k + 1192519) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3577558) = 2239488 * k + 1788779 := by
    unfold C
    simp [show (4478976 * k + 3577558) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1788779) = 6718464 * k + 5366338 := by
    unfold C
    simp [show (2239488 * k + 1788779) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5366338) = 3359232 * k + 2683169 := by
    unfold C
    simp [show (6718464 * k + 5366338) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2683169) = 10077696 * k + 8049508 := by
    unfold C
    simp [show (3359232 * k + 2683169) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8049508) = 5038848 * k + 4024754 := by
    unfold C
    simp [show (10077696 * k + 8049508) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4024754) = 2519424 * k + 2012377 := by
    unfold C
    simp [show (5038848 * k + 4024754) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2012377) = 7558272 * k + 6037132 := by
    unfold C
    simp [show (2519424 * k + 2012377) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6037132) = 3779136 * k + 3018566 := by
    unfold C
    simp [show (7558272 * k + 6037132) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3018566) = 1889568 * k + 1509283 := by
    unfold C
    simp [show (3779136 * k + 3018566) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1509283) = 5668704 * k + 4527850 := by
    unfold C
    simp [show (1889568 * k + 1509283) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4527850) = 2834352 * k + 2263925 := by
    unfold C
    simp [show (5668704 * k + 4527850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2263925) = 8503056 * k + 6791776 := by
    unfold C
    simp [show (2834352 * k + 2263925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6791776) = 4251528 * k + 3395888 := by
    unfold C
    simp [show (8503056 * k + 6791776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3395888) = 2125764 * k + 1697944 := by
    unfold C
    simp [show (4251528 * k + 3395888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1697944) = 1062882 * k + 848972 := by
    unfold C
    simp [show (2125764 * k + 1697944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 848972) = 531441 * k + 424486 := by
    unfold C
    simp [show (1062882 * k + 848972) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 837543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 837543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_837735 : ∀ k : Nat,
    iterate (1048576 * k + 837735) 32 = 531441 * k + 424583 ∧
      531441 * k + 424583 < 1048576 * k + 837735 := by
  intro k
  have h1 : C (1048576 * k + 837735) = 3145728 * k + 2513206 := by
    unfold C
    simp [show (1048576 * k + 837735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2513206) = 1572864 * k + 1256603 := by
    unfold C
    simp [show (3145728 * k + 2513206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1256603) = 4718592 * k + 3769810 := by
    unfold C
    simp [show (1572864 * k + 1256603) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3769810) = 2359296 * k + 1884905 := by
    unfold C
    simp [show (4718592 * k + 3769810) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1884905) = 7077888 * k + 5654716 := by
    unfold C
    simp [show (2359296 * k + 1884905) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5654716) = 3538944 * k + 2827358 := by
    unfold C
    simp [show (7077888 * k + 5654716) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2827358) = 1769472 * k + 1413679 := by
    unfold C
    simp [show (3538944 * k + 2827358) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1413679) = 5308416 * k + 4241038 := by
    unfold C
    simp [show (1769472 * k + 1413679) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4241038) = 2654208 * k + 2120519 := by
    unfold C
    simp [show (5308416 * k + 4241038) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2120519) = 7962624 * k + 6361558 := by
    unfold C
    simp [show (2654208 * k + 2120519) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6361558) = 3981312 * k + 3180779 := by
    unfold C
    simp [show (7962624 * k + 6361558) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3180779) = 11943936 * k + 9542338 := by
    unfold C
    simp [show (3981312 * k + 3180779) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9542338) = 5971968 * k + 4771169 := by
    unfold C
    simp [show (11943936 * k + 9542338) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4771169) = 17915904 * k + 14313508 := by
    unfold C
    simp [show (5971968 * k + 4771169) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14313508) = 8957952 * k + 7156754 := by
    unfold C
    simp [show (17915904 * k + 14313508) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7156754) = 4478976 * k + 3578377 := by
    unfold C
    simp [show (8957952 * k + 7156754) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3578377) = 13436928 * k + 10735132 := by
    unfold C
    simp [show (4478976 * k + 3578377) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10735132) = 6718464 * k + 5367566 := by
    unfold C
    simp [show (13436928 * k + 10735132) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5367566) = 3359232 * k + 2683783 := by
    unfold C
    simp [show (6718464 * k + 5367566) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2683783) = 10077696 * k + 8051350 := by
    unfold C
    simp [show (3359232 * k + 2683783) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8051350) = 5038848 * k + 4025675 := by
    unfold C
    simp [show (10077696 * k + 8051350) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4025675) = 15116544 * k + 12077026 := by
    unfold C
    simp [show (5038848 * k + 4025675) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12077026) = 7558272 * k + 6038513 := by
    unfold C
    simp [show (15116544 * k + 12077026) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6038513) = 22674816 * k + 18115540 := by
    unfold C
    simp [show (7558272 * k + 6038513) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18115540) = 11337408 * k + 9057770 := by
    unfold C
    simp [show (22674816 * k + 18115540) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9057770) = 5668704 * k + 4528885 := by
    unfold C
    simp [show (11337408 * k + 9057770) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4528885) = 17006112 * k + 13586656 := by
    unfold C
    simp [show (5668704 * k + 4528885) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13586656) = 8503056 * k + 6793328 := by
    unfold C
    simp [show (17006112 * k + 13586656) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6793328) = 4251528 * k + 3396664 := by
    unfold C
    simp [show (8503056 * k + 6793328) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3396664) = 2125764 * k + 1698332 := by
    unfold C
    simp [show (4251528 * k + 3396664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1698332) = 1062882 * k + 849166 := by
    unfold C
    simp [show (2125764 * k + 1698332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 849166) = 531441 * k + 424583 := by
    unfold C
    simp [show (1062882 * k + 849166) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 837735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 837735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_838119 : ∀ k : Nat,
    iterate (1048576 * k + 838119) 32 = 531441 * k + 424778 ∧
      531441 * k + 424778 < 1048576 * k + 838119 := by
  intro k
  have h1 : C (1048576 * k + 838119) = 3145728 * k + 2514358 := by
    unfold C
    simp [show (1048576 * k + 838119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2514358) = 1572864 * k + 1257179 := by
    unfold C
    simp [show (3145728 * k + 2514358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1257179) = 4718592 * k + 3771538 := by
    unfold C
    simp [show (1572864 * k + 1257179) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3771538) = 2359296 * k + 1885769 := by
    unfold C
    simp [show (4718592 * k + 3771538) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1885769) = 7077888 * k + 5657308 := by
    unfold C
    simp [show (2359296 * k + 1885769) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5657308) = 3538944 * k + 2828654 := by
    unfold C
    simp [show (7077888 * k + 5657308) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2828654) = 1769472 * k + 1414327 := by
    unfold C
    simp [show (3538944 * k + 2828654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1414327) = 5308416 * k + 4242982 := by
    unfold C
    simp [show (1769472 * k + 1414327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4242982) = 2654208 * k + 2121491 := by
    unfold C
    simp [show (5308416 * k + 4242982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2121491) = 7962624 * k + 6364474 := by
    unfold C
    simp [show (2654208 * k + 2121491) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6364474) = 3981312 * k + 3182237 := by
    unfold C
    simp [show (7962624 * k + 6364474) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3182237) = 11943936 * k + 9546712 := by
    unfold C
    simp [show (3981312 * k + 3182237) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9546712) = 5971968 * k + 4773356 := by
    unfold C
    simp [show (11943936 * k + 9546712) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4773356) = 2985984 * k + 2386678 := by
    unfold C
    simp [show (5971968 * k + 4773356) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2386678) = 1492992 * k + 1193339 := by
    unfold C
    simp [show (2985984 * k + 2386678) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1193339) = 4478976 * k + 3580018 := by
    unfold C
    simp [show (1492992 * k + 1193339) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3580018) = 2239488 * k + 1790009 := by
    unfold C
    simp [show (4478976 * k + 3580018) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1790009) = 6718464 * k + 5370028 := by
    unfold C
    simp [show (2239488 * k + 1790009) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5370028) = 3359232 * k + 2685014 := by
    unfold C
    simp [show (6718464 * k + 5370028) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2685014) = 1679616 * k + 1342507 := by
    unfold C
    simp [show (3359232 * k + 2685014) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1342507) = 5038848 * k + 4027522 := by
    unfold C
    simp [show (1679616 * k + 1342507) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4027522) = 2519424 * k + 2013761 := by
    unfold C
    simp [show (5038848 * k + 4027522) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2013761) = 7558272 * k + 6041284 := by
    unfold C
    simp [show (2519424 * k + 2013761) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6041284) = 3779136 * k + 3020642 := by
    unfold C
    simp [show (7558272 * k + 6041284) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3020642) = 1889568 * k + 1510321 := by
    unfold C
    simp [show (3779136 * k + 3020642) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1510321) = 5668704 * k + 4530964 := by
    unfold C
    simp [show (1889568 * k + 1510321) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4530964) = 2834352 * k + 2265482 := by
    unfold C
    simp [show (5668704 * k + 4530964) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2265482) = 1417176 * k + 1132741 := by
    unfold C
    simp [show (2834352 * k + 2265482) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1132741) = 4251528 * k + 3398224 := by
    unfold C
    simp [show (1417176 * k + 1132741) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3398224) = 2125764 * k + 1699112 := by
    unfold C
    simp [show (4251528 * k + 3398224) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1699112) = 1062882 * k + 849556 := by
    unfold C
    simp [show (2125764 * k + 1699112) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 849556) = 531441 * k + 424778 := by
    unfold C
    simp [show (1062882 * k + 849556) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 838119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 838119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_838431 : ∀ k : Nat,
    iterate (1048576 * k + 838431) 32 = 531441 * k + 424936 ∧
      531441 * k + 424936 < 1048576 * k + 838431 := by
  intro k
  have h1 : C (1048576 * k + 838431) = 3145728 * k + 2515294 := by
    unfold C
    simp [show (1048576 * k + 838431) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2515294) = 1572864 * k + 1257647 := by
    unfold C
    simp [show (3145728 * k + 2515294) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1257647) = 4718592 * k + 3772942 := by
    unfold C
    simp [show (1572864 * k + 1257647) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3772942) = 2359296 * k + 1886471 := by
    unfold C
    simp [show (4718592 * k + 3772942) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1886471) = 7077888 * k + 5659414 := by
    unfold C
    simp [show (2359296 * k + 1886471) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5659414) = 3538944 * k + 2829707 := by
    unfold C
    simp [show (7077888 * k + 5659414) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2829707) = 10616832 * k + 8489122 := by
    unfold C
    simp [show (3538944 * k + 2829707) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8489122) = 5308416 * k + 4244561 := by
    unfold C
    simp [show (10616832 * k + 8489122) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4244561) = 15925248 * k + 12733684 := by
    unfold C
    simp [show (5308416 * k + 4244561) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12733684) = 7962624 * k + 6366842 := by
    unfold C
    simp [show (15925248 * k + 12733684) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6366842) = 3981312 * k + 3183421 := by
    unfold C
    simp [show (7962624 * k + 6366842) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3183421) = 11943936 * k + 9550264 := by
    unfold C
    simp [show (3981312 * k + 3183421) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9550264) = 5971968 * k + 4775132 := by
    unfold C
    simp [show (11943936 * k + 9550264) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4775132) = 2985984 * k + 2387566 := by
    unfold C
    simp [show (5971968 * k + 4775132) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2387566) = 1492992 * k + 1193783 := by
    unfold C
    simp [show (2985984 * k + 2387566) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1193783) = 4478976 * k + 3581350 := by
    unfold C
    simp [show (1492992 * k + 1193783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3581350) = 2239488 * k + 1790675 := by
    unfold C
    simp [show (4478976 * k + 3581350) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1790675) = 6718464 * k + 5372026 := by
    unfold C
    simp [show (2239488 * k + 1790675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5372026) = 3359232 * k + 2686013 := by
    unfold C
    simp [show (6718464 * k + 5372026) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2686013) = 10077696 * k + 8058040 := by
    unfold C
    simp [show (3359232 * k + 2686013) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8058040) = 5038848 * k + 4029020 := by
    unfold C
    simp [show (10077696 * k + 8058040) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4029020) = 2519424 * k + 2014510 := by
    unfold C
    simp [show (5038848 * k + 4029020) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2014510) = 1259712 * k + 1007255 := by
    unfold C
    simp [show (2519424 * k + 2014510) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1007255) = 3779136 * k + 3021766 := by
    unfold C
    simp [show (1259712 * k + 1007255) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3021766) = 1889568 * k + 1510883 := by
    unfold C
    simp [show (3779136 * k + 3021766) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1510883) = 5668704 * k + 4532650 := by
    unfold C
    simp [show (1889568 * k + 1510883) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4532650) = 2834352 * k + 2266325 := by
    unfold C
    simp [show (5668704 * k + 4532650) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2266325) = 8503056 * k + 6798976 := by
    unfold C
    simp [show (2834352 * k + 2266325) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6798976) = 4251528 * k + 3399488 := by
    unfold C
    simp [show (8503056 * k + 6798976) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3399488) = 2125764 * k + 1699744 := by
    unfold C
    simp [show (4251528 * k + 3399488) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1699744) = 1062882 * k + 849872 := by
    unfold C
    simp [show (2125764 * k + 1699744) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 849872) = 531441 * k + 424936 := by
    unfold C
    simp [show (1062882 * k + 849872) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 838431) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 838431)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_839327 : ∀ k : Nat,
    iterate (1048576 * k + 839327) 32 = 531441 * k + 425390 ∧
      531441 * k + 425390 < 1048576 * k + 839327 := by
  intro k
  have h1 : C (1048576 * k + 839327) = 3145728 * k + 2517982 := by
    unfold C
    simp [show (1048576 * k + 839327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2517982) = 1572864 * k + 1258991 := by
    unfold C
    simp [show (3145728 * k + 2517982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1258991) = 4718592 * k + 3776974 := by
    unfold C
    simp [show (1572864 * k + 1258991) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3776974) = 2359296 * k + 1888487 := by
    unfold C
    simp [show (4718592 * k + 3776974) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1888487) = 7077888 * k + 5665462 := by
    unfold C
    simp [show (2359296 * k + 1888487) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5665462) = 3538944 * k + 2832731 := by
    unfold C
    simp [show (7077888 * k + 5665462) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2832731) = 10616832 * k + 8498194 := by
    unfold C
    simp [show (3538944 * k + 2832731) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8498194) = 5308416 * k + 4249097 := by
    unfold C
    simp [show (10616832 * k + 8498194) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4249097) = 15925248 * k + 12747292 := by
    unfold C
    simp [show (5308416 * k + 4249097) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12747292) = 7962624 * k + 6373646 := by
    unfold C
    simp [show (15925248 * k + 12747292) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6373646) = 3981312 * k + 3186823 := by
    unfold C
    simp [show (7962624 * k + 6373646) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3186823) = 11943936 * k + 9560470 := by
    unfold C
    simp [show (3981312 * k + 3186823) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9560470) = 5971968 * k + 4780235 := by
    unfold C
    simp [show (11943936 * k + 9560470) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4780235) = 17915904 * k + 14340706 := by
    unfold C
    simp [show (5971968 * k + 4780235) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14340706) = 8957952 * k + 7170353 := by
    unfold C
    simp [show (17915904 * k + 14340706) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7170353) = 26873856 * k + 21511060 := by
    unfold C
    simp [show (8957952 * k + 7170353) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21511060) = 13436928 * k + 10755530 := by
    unfold C
    simp [show (26873856 * k + 21511060) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10755530) = 6718464 * k + 5377765 := by
    unfold C
    simp [show (13436928 * k + 10755530) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5377765) = 20155392 * k + 16133296 := by
    unfold C
    simp [show (6718464 * k + 5377765) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16133296) = 10077696 * k + 8066648 := by
    unfold C
    simp [show (20155392 * k + 16133296) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8066648) = 5038848 * k + 4033324 := by
    unfold C
    simp [show (10077696 * k + 8066648) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4033324) = 2519424 * k + 2016662 := by
    unfold C
    simp [show (5038848 * k + 4033324) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2016662) = 1259712 * k + 1008331 := by
    unfold C
    simp [show (2519424 * k + 2016662) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1008331) = 3779136 * k + 3024994 := by
    unfold C
    simp [show (1259712 * k + 1008331) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3024994) = 1889568 * k + 1512497 := by
    unfold C
    simp [show (3779136 * k + 3024994) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1512497) = 5668704 * k + 4537492 := by
    unfold C
    simp [show (1889568 * k + 1512497) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4537492) = 2834352 * k + 2268746 := by
    unfold C
    simp [show (5668704 * k + 4537492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2268746) = 1417176 * k + 1134373 := by
    unfold C
    simp [show (2834352 * k + 2268746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1134373) = 4251528 * k + 3403120 := by
    unfold C
    simp [show (1417176 * k + 1134373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3403120) = 2125764 * k + 1701560 := by
    unfold C
    simp [show (4251528 * k + 3403120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1701560) = 1062882 * k + 850780 := by
    unfold C
    simp [show (2125764 * k + 1701560) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 850780) = 531441 * k + 425390 := by
    unfold C
    simp [show (1062882 * k + 850780) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 839327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 839327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_839455 : ∀ k : Nat,
    iterate (1048576 * k + 839455) 32 = 531441 * k + 425455 ∧
      531441 * k + 425455 < 1048576 * k + 839455 := by
  intro k
  have h1 : C (1048576 * k + 839455) = 3145728 * k + 2518366 := by
    unfold C
    simp [show (1048576 * k + 839455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2518366) = 1572864 * k + 1259183 := by
    unfold C
    simp [show (3145728 * k + 2518366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1259183) = 4718592 * k + 3777550 := by
    unfold C
    simp [show (1572864 * k + 1259183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3777550) = 2359296 * k + 1888775 := by
    unfold C
    simp [show (4718592 * k + 3777550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1888775) = 7077888 * k + 5666326 := by
    unfold C
    simp [show (2359296 * k + 1888775) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5666326) = 3538944 * k + 2833163 := by
    unfold C
    simp [show (7077888 * k + 5666326) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2833163) = 10616832 * k + 8499490 := by
    unfold C
    simp [show (3538944 * k + 2833163) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8499490) = 5308416 * k + 4249745 := by
    unfold C
    simp [show (10616832 * k + 8499490) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4249745) = 15925248 * k + 12749236 := by
    unfold C
    simp [show (5308416 * k + 4249745) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12749236) = 7962624 * k + 6374618 := by
    unfold C
    simp [show (15925248 * k + 12749236) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6374618) = 3981312 * k + 3187309 := by
    unfold C
    simp [show (7962624 * k + 6374618) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3187309) = 11943936 * k + 9561928 := by
    unfold C
    simp [show (3981312 * k + 3187309) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9561928) = 5971968 * k + 4780964 := by
    unfold C
    simp [show (11943936 * k + 9561928) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4780964) = 2985984 * k + 2390482 := by
    unfold C
    simp [show (5971968 * k + 4780964) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2390482) = 1492992 * k + 1195241 := by
    unfold C
    simp [show (2985984 * k + 2390482) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1195241) = 4478976 * k + 3585724 := by
    unfold C
    simp [show (1492992 * k + 1195241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3585724) = 2239488 * k + 1792862 := by
    unfold C
    simp [show (4478976 * k + 3585724) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1792862) = 1119744 * k + 896431 := by
    unfold C
    simp [show (2239488 * k + 1792862) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 896431) = 3359232 * k + 2689294 := by
    unfold C
    simp [show (1119744 * k + 896431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2689294) = 1679616 * k + 1344647 := by
    unfold C
    simp [show (3359232 * k + 2689294) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1344647) = 5038848 * k + 4033942 := by
    unfold C
    simp [show (1679616 * k + 1344647) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4033942) = 2519424 * k + 2016971 := by
    unfold C
    simp [show (5038848 * k + 4033942) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2016971) = 7558272 * k + 6050914 := by
    unfold C
    simp [show (2519424 * k + 2016971) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6050914) = 3779136 * k + 3025457 := by
    unfold C
    simp [show (7558272 * k + 6050914) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3025457) = 11337408 * k + 9076372 := by
    unfold C
    simp [show (3779136 * k + 3025457) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9076372) = 5668704 * k + 4538186 := by
    unfold C
    simp [show (11337408 * k + 9076372) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4538186) = 2834352 * k + 2269093 := by
    unfold C
    simp [show (5668704 * k + 4538186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2269093) = 8503056 * k + 6807280 := by
    unfold C
    simp [show (2834352 * k + 2269093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6807280) = 4251528 * k + 3403640 := by
    unfold C
    simp [show (8503056 * k + 6807280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3403640) = 2125764 * k + 1701820 := by
    unfold C
    simp [show (4251528 * k + 3403640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1701820) = 1062882 * k + 850910 := by
    unfold C
    simp [show (2125764 * k + 1701820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 850910) = 531441 * k + 425455 := by
    unfold C
    simp [show (1062882 * k + 850910) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 839455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 839455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_839887 : ∀ k : Nat,
    iterate (1048576 * k + 839887) 32 = 531441 * k + 425674 ∧
      531441 * k + 425674 < 1048576 * k + 839887 := by
  intro k
  have h1 : C (1048576 * k + 839887) = 3145728 * k + 2519662 := by
    unfold C
    simp [show (1048576 * k + 839887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2519662) = 1572864 * k + 1259831 := by
    unfold C
    simp [show (3145728 * k + 2519662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1259831) = 4718592 * k + 3779494 := by
    unfold C
    simp [show (1572864 * k + 1259831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3779494) = 2359296 * k + 1889747 := by
    unfold C
    simp [show (4718592 * k + 3779494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1889747) = 7077888 * k + 5669242 := by
    unfold C
    simp [show (2359296 * k + 1889747) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5669242) = 3538944 * k + 2834621 := by
    unfold C
    simp [show (7077888 * k + 5669242) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2834621) = 10616832 * k + 8503864 := by
    unfold C
    simp [show (3538944 * k + 2834621) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8503864) = 5308416 * k + 4251932 := by
    unfold C
    simp [show (10616832 * k + 8503864) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4251932) = 2654208 * k + 2125966 := by
    unfold C
    simp [show (5308416 * k + 4251932) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2125966) = 1327104 * k + 1062983 := by
    unfold C
    simp [show (2654208 * k + 2125966) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1062983) = 3981312 * k + 3188950 := by
    unfold C
    simp [show (1327104 * k + 1062983) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3188950) = 1990656 * k + 1594475 := by
    unfold C
    simp [show (3981312 * k + 3188950) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1594475) = 5971968 * k + 4783426 := by
    unfold C
    simp [show (1990656 * k + 1594475) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 4783426) = 2985984 * k + 2391713 := by
    unfold C
    simp [show (5971968 * k + 4783426) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2391713) = 8957952 * k + 7175140 := by
    unfold C
    simp [show (2985984 * k + 2391713) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7175140) = 4478976 * k + 3587570 := by
    unfold C
    simp [show (8957952 * k + 7175140) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3587570) = 2239488 * k + 1793785 := by
    unfold C
    simp [show (4478976 * k + 3587570) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1793785) = 6718464 * k + 5381356 := by
    unfold C
    simp [show (2239488 * k + 1793785) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5381356) = 3359232 * k + 2690678 := by
    unfold C
    simp [show (6718464 * k + 5381356) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2690678) = 1679616 * k + 1345339 := by
    unfold C
    simp [show (3359232 * k + 2690678) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1345339) = 5038848 * k + 4036018 := by
    unfold C
    simp [show (1679616 * k + 1345339) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4036018) = 2519424 * k + 2018009 := by
    unfold C
    simp [show (5038848 * k + 4036018) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2018009) = 7558272 * k + 6054028 := by
    unfold C
    simp [show (2519424 * k + 2018009) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6054028) = 3779136 * k + 3027014 := by
    unfold C
    simp [show (7558272 * k + 6054028) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3027014) = 1889568 * k + 1513507 := by
    unfold C
    simp [show (3779136 * k + 3027014) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1513507) = 5668704 * k + 4540522 := by
    unfold C
    simp [show (1889568 * k + 1513507) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4540522) = 2834352 * k + 2270261 := by
    unfold C
    simp [show (5668704 * k + 4540522) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2270261) = 8503056 * k + 6810784 := by
    unfold C
    simp [show (2834352 * k + 2270261) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6810784) = 4251528 * k + 3405392 := by
    unfold C
    simp [show (8503056 * k + 6810784) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3405392) = 2125764 * k + 1702696 := by
    unfold C
    simp [show (4251528 * k + 3405392) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1702696) = 1062882 * k + 851348 := by
    unfold C
    simp [show (2125764 * k + 1702696) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 851348) = 531441 * k + 425674 := by
    unfold C
    simp [show (1062882 * k + 851348) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 839887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 839887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_839935 : ∀ k : Nat,
    iterate (1048576 * k + 839935) 32 = 531441 * k + 425698 ∧
      531441 * k + 425698 < 1048576 * k + 839935 := by
  intro k
  have h1 : C (1048576 * k + 839935) = 3145728 * k + 2519806 := by
    unfold C
    simp [show (1048576 * k + 839935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2519806) = 1572864 * k + 1259903 := by
    unfold C
    simp [show (3145728 * k + 2519806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1259903) = 4718592 * k + 3779710 := by
    unfold C
    simp [show (1572864 * k + 1259903) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3779710) = 2359296 * k + 1889855 := by
    unfold C
    simp [show (4718592 * k + 3779710) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1889855) = 7077888 * k + 5669566 := by
    unfold C
    simp [show (2359296 * k + 1889855) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5669566) = 3538944 * k + 2834783 := by
    unfold C
    simp [show (7077888 * k + 5669566) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2834783) = 10616832 * k + 8504350 := by
    unfold C
    simp [show (3538944 * k + 2834783) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8504350) = 5308416 * k + 4252175 := by
    unfold C
    simp [show (10616832 * k + 8504350) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4252175) = 15925248 * k + 12756526 := by
    unfold C
    simp [show (5308416 * k + 4252175) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12756526) = 7962624 * k + 6378263 := by
    unfold C
    simp [show (15925248 * k + 12756526) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6378263) = 23887872 * k + 19134790 := by
    unfold C
    simp [show (7962624 * k + 6378263) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19134790) = 11943936 * k + 9567395 := by
    unfold C
    simp [show (23887872 * k + 19134790) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9567395) = 35831808 * k + 28702186 := by
    unfold C
    simp [show (11943936 * k + 9567395) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28702186) = 17915904 * k + 14351093 := by
    unfold C
    simp [show (35831808 * k + 28702186) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14351093) = 53747712 * k + 43053280 := by
    unfold C
    simp [show (17915904 * k + 14351093) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 43053280) = 26873856 * k + 21526640 := by
    unfold C
    simp [show (53747712 * k + 43053280) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 21526640) = 13436928 * k + 10763320 := by
    unfold C
    simp [show (26873856 * k + 21526640) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10763320) = 6718464 * k + 5381660 := by
    unfold C
    simp [show (13436928 * k + 10763320) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5381660) = 3359232 * k + 2690830 := by
    unfold C
    simp [show (6718464 * k + 5381660) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2690830) = 1679616 * k + 1345415 := by
    unfold C
    simp [show (3359232 * k + 2690830) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1345415) = 5038848 * k + 4036246 := by
    unfold C
    simp [show (1679616 * k + 1345415) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4036246) = 2519424 * k + 2018123 := by
    unfold C
    simp [show (5038848 * k + 4036246) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2018123) = 7558272 * k + 6054370 := by
    unfold C
    simp [show (2519424 * k + 2018123) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6054370) = 3779136 * k + 3027185 := by
    unfold C
    simp [show (7558272 * k + 6054370) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3027185) = 11337408 * k + 9081556 := by
    unfold C
    simp [show (3779136 * k + 3027185) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9081556) = 5668704 * k + 4540778 := by
    unfold C
    simp [show (11337408 * k + 9081556) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4540778) = 2834352 * k + 2270389 := by
    unfold C
    simp [show (5668704 * k + 4540778) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2270389) = 8503056 * k + 6811168 := by
    unfold C
    simp [show (2834352 * k + 2270389) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6811168) = 4251528 * k + 3405584 := by
    unfold C
    simp [show (8503056 * k + 6811168) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3405584) = 2125764 * k + 1702792 := by
    unfold C
    simp [show (4251528 * k + 3405584) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1702792) = 1062882 * k + 851396 := by
    unfold C
    simp [show (2125764 * k + 1702792) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 851396) = 531441 * k + 425698 := by
    unfold C
    simp [show (1062882 * k + 851396) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 839935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 839935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_840095 : ∀ k : Nat,
    iterate (1048576 * k + 840095) 32 = 531441 * k + 425779 ∧
      531441 * k + 425779 < 1048576 * k + 840095 := by
  intro k
  have h1 : C (1048576 * k + 840095) = 3145728 * k + 2520286 := by
    unfold C
    simp [show (1048576 * k + 840095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2520286) = 1572864 * k + 1260143 := by
    unfold C
    simp [show (3145728 * k + 2520286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1260143) = 4718592 * k + 3780430 := by
    unfold C
    simp [show (1572864 * k + 1260143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3780430) = 2359296 * k + 1890215 := by
    unfold C
    simp [show (4718592 * k + 3780430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1890215) = 7077888 * k + 5670646 := by
    unfold C
    simp [show (2359296 * k + 1890215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5670646) = 3538944 * k + 2835323 := by
    unfold C
    simp [show (7077888 * k + 5670646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2835323) = 10616832 * k + 8505970 := by
    unfold C
    simp [show (3538944 * k + 2835323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8505970) = 5308416 * k + 4252985 := by
    unfold C
    simp [show (10616832 * k + 8505970) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4252985) = 15925248 * k + 12758956 := by
    unfold C
    simp [show (5308416 * k + 4252985) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12758956) = 7962624 * k + 6379478 := by
    unfold C
    simp [show (15925248 * k + 12758956) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6379478) = 3981312 * k + 3189739 := by
    unfold C
    simp [show (7962624 * k + 6379478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3189739) = 11943936 * k + 9569218 := by
    unfold C
    simp [show (3981312 * k + 3189739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9569218) = 5971968 * k + 4784609 := by
    unfold C
    simp [show (11943936 * k + 9569218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4784609) = 17915904 * k + 14353828 := by
    unfold C
    simp [show (5971968 * k + 4784609) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14353828) = 8957952 * k + 7176914 := by
    unfold C
    simp [show (17915904 * k + 14353828) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7176914) = 4478976 * k + 3588457 := by
    unfold C
    simp [show (8957952 * k + 7176914) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3588457) = 13436928 * k + 10765372 := by
    unfold C
    simp [show (4478976 * k + 3588457) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10765372) = 6718464 * k + 5382686 := by
    unfold C
    simp [show (13436928 * k + 10765372) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5382686) = 3359232 * k + 2691343 := by
    unfold C
    simp [show (6718464 * k + 5382686) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2691343) = 10077696 * k + 8074030 := by
    unfold C
    simp [show (3359232 * k + 2691343) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8074030) = 5038848 * k + 4037015 := by
    unfold C
    simp [show (10077696 * k + 8074030) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4037015) = 15116544 * k + 12111046 := by
    unfold C
    simp [show (5038848 * k + 4037015) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12111046) = 7558272 * k + 6055523 := by
    unfold C
    simp [show (15116544 * k + 12111046) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6055523) = 22674816 * k + 18166570 := by
    unfold C
    simp [show (7558272 * k + 6055523) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18166570) = 11337408 * k + 9083285 := by
    unfold C
    simp [show (22674816 * k + 18166570) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9083285) = 34012224 * k + 27249856 := by
    unfold C
    simp [show (11337408 * k + 9083285) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 27249856) = 17006112 * k + 13624928 := by
    unfold C
    simp [show (34012224 * k + 27249856) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 13624928) = 8503056 * k + 6812464 := by
    unfold C
    simp [show (17006112 * k + 13624928) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6812464) = 4251528 * k + 3406232 := by
    unfold C
    simp [show (8503056 * k + 6812464) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3406232) = 2125764 * k + 1703116 := by
    unfold C
    simp [show (4251528 * k + 3406232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1703116) = 1062882 * k + 851558 := by
    unfold C
    simp [show (2125764 * k + 1703116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 851558) = 531441 * k + 425779 := by
    unfold C
    simp [show (1062882 * k + 851558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 840095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 840095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_840935 : ∀ k : Nat,
    iterate (1048576 * k + 840935) 32 = 531441 * k + 426205 ∧
      531441 * k + 426205 < 1048576 * k + 840935 := by
  intro k
  have h1 : C (1048576 * k + 840935) = 3145728 * k + 2522806 := by
    unfold C
    simp [show (1048576 * k + 840935) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2522806) = 1572864 * k + 1261403 := by
    unfold C
    simp [show (3145728 * k + 2522806) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1261403) = 4718592 * k + 3784210 := by
    unfold C
    simp [show (1572864 * k + 1261403) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3784210) = 2359296 * k + 1892105 := by
    unfold C
    simp [show (4718592 * k + 3784210) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1892105) = 7077888 * k + 5676316 := by
    unfold C
    simp [show (2359296 * k + 1892105) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5676316) = 3538944 * k + 2838158 := by
    unfold C
    simp [show (7077888 * k + 5676316) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2838158) = 1769472 * k + 1419079 := by
    unfold C
    simp [show (3538944 * k + 2838158) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1419079) = 5308416 * k + 4257238 := by
    unfold C
    simp [show (1769472 * k + 1419079) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4257238) = 2654208 * k + 2128619 := by
    unfold C
    simp [show (5308416 * k + 4257238) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2128619) = 7962624 * k + 6385858 := by
    unfold C
    simp [show (2654208 * k + 2128619) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6385858) = 3981312 * k + 3192929 := by
    unfold C
    simp [show (7962624 * k + 6385858) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3192929) = 11943936 * k + 9578788 := by
    unfold C
    simp [show (3981312 * k + 3192929) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9578788) = 5971968 * k + 4789394 := by
    unfold C
    simp [show (11943936 * k + 9578788) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4789394) = 2985984 * k + 2394697 := by
    unfold C
    simp [show (5971968 * k + 4789394) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2394697) = 8957952 * k + 7184092 := by
    unfold C
    simp [show (2985984 * k + 2394697) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7184092) = 4478976 * k + 3592046 := by
    unfold C
    simp [show (8957952 * k + 7184092) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3592046) = 2239488 * k + 1796023 := by
    unfold C
    simp [show (4478976 * k + 3592046) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1796023) = 6718464 * k + 5388070 := by
    unfold C
    simp [show (2239488 * k + 1796023) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5388070) = 3359232 * k + 2694035 := by
    unfold C
    simp [show (6718464 * k + 5388070) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2694035) = 10077696 * k + 8082106 := by
    unfold C
    simp [show (3359232 * k + 2694035) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8082106) = 5038848 * k + 4041053 := by
    unfold C
    simp [show (10077696 * k + 8082106) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4041053) = 15116544 * k + 12123160 := by
    unfold C
    simp [show (5038848 * k + 4041053) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12123160) = 7558272 * k + 6061580 := by
    unfold C
    simp [show (15116544 * k + 12123160) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6061580) = 3779136 * k + 3030790 := by
    unfold C
    simp [show (7558272 * k + 6061580) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3030790) = 1889568 * k + 1515395 := by
    unfold C
    simp [show (3779136 * k + 3030790) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1515395) = 5668704 * k + 4546186 := by
    unfold C
    simp [show (1889568 * k + 1515395) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 4546186) = 2834352 * k + 2273093 := by
    unfold C
    simp [show (5668704 * k + 4546186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2273093) = 8503056 * k + 6819280 := by
    unfold C
    simp [show (2834352 * k + 2273093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6819280) = 4251528 * k + 3409640 := by
    unfold C
    simp [show (8503056 * k + 6819280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3409640) = 2125764 * k + 1704820 := by
    unfold C
    simp [show (4251528 * k + 3409640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1704820) = 1062882 * k + 852410 := by
    unfold C
    simp [show (2125764 * k + 1704820) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 852410) = 531441 * k + 426205 := by
    unfold C
    simp [show (1062882 * k + 852410) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 840935) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 840935)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_841831 : ∀ k : Nat,
    iterate (1048576 * k + 841831) 32 = 531441 * k + 426659 ∧
      531441 * k + 426659 < 1048576 * k + 841831 := by
  intro k
  have h1 : C (1048576 * k + 841831) = 3145728 * k + 2525494 := by
    unfold C
    simp [show (1048576 * k + 841831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2525494) = 1572864 * k + 1262747 := by
    unfold C
    simp [show (3145728 * k + 2525494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1262747) = 4718592 * k + 3788242 := by
    unfold C
    simp [show (1572864 * k + 1262747) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3788242) = 2359296 * k + 1894121 := by
    unfold C
    simp [show (4718592 * k + 3788242) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1894121) = 7077888 * k + 5682364 := by
    unfold C
    simp [show (2359296 * k + 1894121) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5682364) = 3538944 * k + 2841182 := by
    unfold C
    simp [show (7077888 * k + 5682364) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2841182) = 1769472 * k + 1420591 := by
    unfold C
    simp [show (3538944 * k + 2841182) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1420591) = 5308416 * k + 4261774 := by
    unfold C
    simp [show (1769472 * k + 1420591) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4261774) = 2654208 * k + 2130887 := by
    unfold C
    simp [show (5308416 * k + 4261774) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2130887) = 7962624 * k + 6392662 := by
    unfold C
    simp [show (2654208 * k + 2130887) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6392662) = 3981312 * k + 3196331 := by
    unfold C
    simp [show (7962624 * k + 6392662) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3196331) = 11943936 * k + 9588994 := by
    unfold C
    simp [show (3981312 * k + 3196331) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9588994) = 5971968 * k + 4794497 := by
    unfold C
    simp [show (11943936 * k + 9588994) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4794497) = 17915904 * k + 14383492 := by
    unfold C
    simp [show (5971968 * k + 4794497) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14383492) = 8957952 * k + 7191746 := by
    unfold C
    simp [show (17915904 * k + 14383492) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7191746) = 4478976 * k + 3595873 := by
    unfold C
    simp [show (8957952 * k + 7191746) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3595873) = 13436928 * k + 10787620 := by
    unfold C
    simp [show (4478976 * k + 3595873) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10787620) = 6718464 * k + 5393810 := by
    unfold C
    simp [show (13436928 * k + 10787620) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5393810) = 3359232 * k + 2696905 := by
    unfold C
    simp [show (6718464 * k + 5393810) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2696905) = 10077696 * k + 8090716 := by
    unfold C
    simp [show (3359232 * k + 2696905) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8090716) = 5038848 * k + 4045358 := by
    unfold C
    simp [show (10077696 * k + 8090716) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4045358) = 2519424 * k + 2022679 := by
    unfold C
    simp [show (5038848 * k + 4045358) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2022679) = 7558272 * k + 6068038 := by
    unfold C
    simp [show (2519424 * k + 2022679) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6068038) = 3779136 * k + 3034019 := by
    unfold C
    simp [show (7558272 * k + 6068038) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3034019) = 11337408 * k + 9102058 := by
    unfold C
    simp [show (3779136 * k + 3034019) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9102058) = 5668704 * k + 4551029 := by
    unfold C
    simp [show (11337408 * k + 9102058) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4551029) = 17006112 * k + 13653088 := by
    unfold C
    simp [show (5668704 * k + 4551029) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 13653088) = 8503056 * k + 6826544 := by
    unfold C
    simp [show (17006112 * k + 13653088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 6826544) = 4251528 * k + 3413272 := by
    unfold C
    simp [show (8503056 * k + 6826544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3413272) = 2125764 * k + 1706636 := by
    unfold C
    simp [show (4251528 * k + 3413272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1706636) = 1062882 * k + 853318 := by
    unfold C
    simp [show (2125764 * k + 1706636) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 853318) = 531441 * k + 426659 := by
    unfold C
    simp [show (1062882 * k + 853318) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 841831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 841831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_842855 : ∀ k : Nat,
    iterate (1048576 * k + 842855) 32 = 531441 * k + 427178 ∧
      531441 * k + 427178 < 1048576 * k + 842855 := by
  intro k
  have h1 : C (1048576 * k + 842855) = 3145728 * k + 2528566 := by
    unfold C
    simp [show (1048576 * k + 842855) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2528566) = 1572864 * k + 1264283 := by
    unfold C
    simp [show (3145728 * k + 2528566) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1264283) = 4718592 * k + 3792850 := by
    unfold C
    simp [show (1572864 * k + 1264283) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3792850) = 2359296 * k + 1896425 := by
    unfold C
    simp [show (4718592 * k + 3792850) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1896425) = 7077888 * k + 5689276 := by
    unfold C
    simp [show (2359296 * k + 1896425) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5689276) = 3538944 * k + 2844638 := by
    unfold C
    simp [show (7077888 * k + 5689276) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2844638) = 1769472 * k + 1422319 := by
    unfold C
    simp [show (3538944 * k + 2844638) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1422319) = 5308416 * k + 4266958 := by
    unfold C
    simp [show (1769472 * k + 1422319) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4266958) = 2654208 * k + 2133479 := by
    unfold C
    simp [show (5308416 * k + 4266958) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2133479) = 7962624 * k + 6400438 := by
    unfold C
    simp [show (2654208 * k + 2133479) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 6400438) = 3981312 * k + 3200219 := by
    unfold C
    simp [show (7962624 * k + 6400438) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3200219) = 11943936 * k + 9600658 := by
    unfold C
    simp [show (3981312 * k + 3200219) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9600658) = 5971968 * k + 4800329 := by
    unfold C
    simp [show (11943936 * k + 9600658) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4800329) = 17915904 * k + 14400988 := by
    unfold C
    simp [show (5971968 * k + 4800329) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14400988) = 8957952 * k + 7200494 := by
    unfold C
    simp [show (17915904 * k + 14400988) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7200494) = 4478976 * k + 3600247 := by
    unfold C
    simp [show (8957952 * k + 7200494) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3600247) = 13436928 * k + 10800742 := by
    unfold C
    simp [show (4478976 * k + 3600247) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10800742) = 6718464 * k + 5400371 := by
    unfold C
    simp [show (13436928 * k + 10800742) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5400371) = 20155392 * k + 16201114 := by
    unfold C
    simp [show (6718464 * k + 5400371) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16201114) = 10077696 * k + 8100557 := by
    unfold C
    simp [show (20155392 * k + 16201114) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8100557) = 30233088 * k + 24301672 := by
    unfold C
    simp [show (10077696 * k + 8100557) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24301672) = 15116544 * k + 12150836 := by
    unfold C
    simp [show (30233088 * k + 24301672) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12150836) = 7558272 * k + 6075418 := by
    unfold C
    simp [show (15116544 * k + 12150836) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6075418) = 3779136 * k + 3037709 := by
    unfold C
    simp [show (7558272 * k + 6075418) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3037709) = 11337408 * k + 9113128 := by
    unfold C
    simp [show (3779136 * k + 3037709) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9113128) = 5668704 * k + 4556564 := by
    unfold C
    simp [show (11337408 * k + 9113128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4556564) = 2834352 * k + 2278282 := by
    unfold C
    simp [show (5668704 * k + 4556564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2278282) = 1417176 * k + 1139141 := by
    unfold C
    simp [show (2834352 * k + 2278282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1139141) = 4251528 * k + 3417424 := by
    unfold C
    simp [show (1417176 * k + 1139141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3417424) = 2125764 * k + 1708712 := by
    unfold C
    simp [show (4251528 * k + 3417424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1708712) = 1062882 * k + 854356 := by
    unfold C
    simp [show (2125764 * k + 1708712) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 854356) = 531441 * k + 427178 := by
    unfold C
    simp [show (1062882 * k + 854356) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 842855) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 842855)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_842879 : ∀ k : Nat,
    iterate (1048576 * k + 842879) 32 = 531441 * k + 427190 ∧
      531441 * k + 427190 < 1048576 * k + 842879 := by
  intro k
  have h1 : C (1048576 * k + 842879) = 3145728 * k + 2528638 := by
    unfold C
    simp [show (1048576 * k + 842879) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2528638) = 1572864 * k + 1264319 := by
    unfold C
    simp [show (3145728 * k + 2528638) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1264319) = 4718592 * k + 3792958 := by
    unfold C
    simp [show (1572864 * k + 1264319) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3792958) = 2359296 * k + 1896479 := by
    unfold C
    simp [show (4718592 * k + 3792958) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1896479) = 7077888 * k + 5689438 := by
    unfold C
    simp [show (2359296 * k + 1896479) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5689438) = 3538944 * k + 2844719 := by
    unfold C
    simp [show (7077888 * k + 5689438) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2844719) = 10616832 * k + 8534158 := by
    unfold C
    simp [show (3538944 * k + 2844719) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8534158) = 5308416 * k + 4267079 := by
    unfold C
    simp [show (10616832 * k + 8534158) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4267079) = 15925248 * k + 12801238 := by
    unfold C
    simp [show (5308416 * k + 4267079) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12801238) = 7962624 * k + 6400619 := by
    unfold C
    simp [show (15925248 * k + 12801238) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6400619) = 23887872 * k + 19201858 := by
    unfold C
    simp [show (7962624 * k + 6400619) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 19201858) = 11943936 * k + 9600929 := by
    unfold C
    simp [show (23887872 * k + 19201858) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 9600929) = 35831808 * k + 28802788 := by
    unfold C
    simp [show (11943936 * k + 9600929) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 28802788) = 17915904 * k + 14401394 := by
    unfold C
    simp [show (35831808 * k + 28802788) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 14401394) = 8957952 * k + 7200697 := by
    unfold C
    simp [show (17915904 * k + 14401394) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7200697) = 26873856 * k + 21602092 := by
    unfold C
    simp [show (8957952 * k + 7200697) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 21602092) = 13436928 * k + 10801046 := by
    unfold C
    simp [show (26873856 * k + 21602092) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 10801046) = 6718464 * k + 5400523 := by
    unfold C
    simp [show (13436928 * k + 10801046) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5400523) = 20155392 * k + 16201570 := by
    unfold C
    simp [show (6718464 * k + 5400523) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16201570) = 10077696 * k + 8100785 := by
    unfold C
    simp [show (20155392 * k + 16201570) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8100785) = 30233088 * k + 24302356 := by
    unfold C
    simp [show (10077696 * k + 8100785) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 24302356) = 15116544 * k + 12151178 := by
    unfold C
    simp [show (30233088 * k + 24302356) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 12151178) = 7558272 * k + 6075589 := by
    unfold C
    simp [show (15116544 * k + 12151178) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6075589) = 22674816 * k + 18226768 := by
    unfold C
    simp [show (7558272 * k + 6075589) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 18226768) = 11337408 * k + 9113384 := by
    unfold C
    simp [show (22674816 * k + 18226768) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 9113384) = 5668704 * k + 4556692 := by
    unfold C
    simp [show (11337408 * k + 9113384) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4556692) = 2834352 * k + 2278346 := by
    unfold C
    simp [show (5668704 * k + 4556692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2278346) = 1417176 * k + 1139173 := by
    unfold C
    simp [show (2834352 * k + 2278346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1139173) = 4251528 * k + 3417520 := by
    unfold C
    simp [show (1417176 * k + 1139173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3417520) = 2125764 * k + 1708760 := by
    unfold C
    simp [show (4251528 * k + 3417520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1708760) = 1062882 * k + 854380 := by
    unfold C
    simp [show (2125764 * k + 1708760) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 854380) = 531441 * k + 427190 := by
    unfold C
    simp [show (1062882 * k + 854380) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 842879) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 842879)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_843167 : ∀ k : Nat,
    iterate (1048576 * k + 843167) 32 = 531441 * k + 427336 ∧
      531441 * k + 427336 < 1048576 * k + 843167 := by
  intro k
  have h1 : C (1048576 * k + 843167) = 3145728 * k + 2529502 := by
    unfold C
    simp [show (1048576 * k + 843167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2529502) = 1572864 * k + 1264751 := by
    unfold C
    simp [show (3145728 * k + 2529502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1264751) = 4718592 * k + 3794254 := by
    unfold C
    simp [show (1572864 * k + 1264751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 3794254) = 2359296 * k + 1897127 := by
    unfold C
    simp [show (4718592 * k + 3794254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 1897127) = 7077888 * k + 5691382 := by
    unfold C
    simp [show (2359296 * k + 1897127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 5691382) = 3538944 * k + 2845691 := by
    unfold C
    simp [show (7077888 * k + 5691382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 2845691) = 10616832 * k + 8537074 := by
    unfold C
    simp [show (3538944 * k + 2845691) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 8537074) = 5308416 * k + 4268537 := by
    unfold C
    simp [show (10616832 * k + 8537074) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4268537) = 15925248 * k + 12805612 := by
    unfold C
    simp [show (5308416 * k + 4268537) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 12805612) = 7962624 * k + 6402806 := by
    unfold C
    simp [show (15925248 * k + 12805612) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 6402806) = 3981312 * k + 3201403 := by
    unfold C
    simp [show (7962624 * k + 6402806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3201403) = 11943936 * k + 9604210 := by
    unfold C
    simp [show (3981312 * k + 3201403) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 9604210) = 5971968 * k + 4802105 := by
    unfold C
    simp [show (11943936 * k + 9604210) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 4802105) = 17915904 * k + 14406316 := by
    unfold C
    simp [show (5971968 * k + 4802105) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 14406316) = 8957952 * k + 7203158 := by
    unfold C
    simp [show (17915904 * k + 14406316) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7203158) = 4478976 * k + 3601579 := by
    unfold C
    simp [show (8957952 * k + 7203158) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3601579) = 13436928 * k + 10804738 := by
    unfold C
    simp [show (4478976 * k + 3601579) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 10804738) = 6718464 * k + 5402369 := by
    unfold C
    simp [show (13436928 * k + 10804738) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5402369) = 20155392 * k + 16207108 := by
    unfold C
    simp [show (6718464 * k + 5402369) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 16207108) = 10077696 * k + 8103554 := by
    unfold C
    simp [show (20155392 * k + 16207108) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8103554) = 5038848 * k + 4051777 := by
    unfold C
    simp [show (10077696 * k + 8103554) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4051777) = 15116544 * k + 12155332 := by
    unfold C
    simp [show (5038848 * k + 4051777) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 12155332) = 7558272 * k + 6077666 := by
    unfold C
    simp [show (15116544 * k + 12155332) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6077666) = 3779136 * k + 3038833 := by
    unfold C
    simp [show (7558272 * k + 6077666) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3038833) = 11337408 * k + 9116500 := by
    unfold C
    simp [show (3779136 * k + 3038833) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 9116500) = 5668704 * k + 4558250 := by
    unfold C
    simp [show (11337408 * k + 9116500) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 4558250) = 2834352 * k + 2279125 := by
    unfold C
    simp [show (5668704 * k + 4558250) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2279125) = 8503056 * k + 6837376 := by
    unfold C
    simp [show (2834352 * k + 2279125) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 6837376) = 4251528 * k + 3418688 := by
    unfold C
    simp [show (8503056 * k + 6837376) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3418688) = 2125764 * k + 1709344 := by
    unfold C
    simp [show (4251528 * k + 3418688) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1709344) = 1062882 * k + 854672 := by
    unfold C
    simp [show (2125764 * k + 1709344) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 854672) = 531441 * k + 427336 := by
    unfold C
    simp [show (1062882 * k + 854672) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 843167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 843167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard107
