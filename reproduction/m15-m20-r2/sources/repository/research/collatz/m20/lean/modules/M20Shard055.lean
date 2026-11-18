import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard055

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_433119 : ∀ k : Nat,
    iterate (1048576 * k + 433119) 32 = 531441 * k + 219515 ∧
      531441 * k + 219515 < 1048576 * k + 433119 := by
  intro k
  have h1 : C (1048576 * k + 433119) = 3145728 * k + 1299358 := by
    unfold C
    simp [show (1048576 * k + 433119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1299358) = 1572864 * k + 649679 := by
    unfold C
    simp [show (3145728 * k + 1299358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 649679) = 4718592 * k + 1949038 := by
    unfold C
    simp [show (1572864 * k + 649679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1949038) = 2359296 * k + 974519 := by
    unfold C
    simp [show (4718592 * k + 1949038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 974519) = 7077888 * k + 2923558 := by
    unfold C
    simp [show (2359296 * k + 974519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2923558) = 3538944 * k + 1461779 := by
    unfold C
    simp [show (7077888 * k + 2923558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1461779) = 10616832 * k + 4385338 := by
    unfold C
    simp [show (3538944 * k + 1461779) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4385338) = 5308416 * k + 2192669 := by
    unfold C
    simp [show (10616832 * k + 4385338) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2192669) = 15925248 * k + 6578008 := by
    unfold C
    simp [show (5308416 * k + 2192669) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6578008) = 7962624 * k + 3289004 := by
    unfold C
    simp [show (15925248 * k + 6578008) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3289004) = 3981312 * k + 1644502 := by
    unfold C
    simp [show (7962624 * k + 3289004) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1644502) = 1990656 * k + 822251 := by
    unfold C
    simp [show (3981312 * k + 1644502) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 822251) = 5971968 * k + 2466754 := by
    unfold C
    simp [show (1990656 * k + 822251) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2466754) = 2985984 * k + 1233377 := by
    unfold C
    simp [show (5971968 * k + 2466754) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1233377) = 8957952 * k + 3700132 := by
    unfold C
    simp [show (2985984 * k + 1233377) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3700132) = 4478976 * k + 1850066 := by
    unfold C
    simp [show (8957952 * k + 3700132) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1850066) = 2239488 * k + 925033 := by
    unfold C
    simp [show (4478976 * k + 1850066) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 925033) = 6718464 * k + 2775100 := by
    unfold C
    simp [show (2239488 * k + 925033) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2775100) = 3359232 * k + 1387550 := by
    unfold C
    simp [show (6718464 * k + 2775100) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1387550) = 1679616 * k + 693775 := by
    unfold C
    simp [show (3359232 * k + 1387550) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 693775) = 5038848 * k + 2081326 := by
    unfold C
    simp [show (1679616 * k + 693775) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2081326) = 2519424 * k + 1040663 := by
    unfold C
    simp [show (5038848 * k + 2081326) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1040663) = 7558272 * k + 3121990 := by
    unfold C
    simp [show (2519424 * k + 1040663) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3121990) = 3779136 * k + 1560995 := by
    unfold C
    simp [show (7558272 * k + 3121990) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1560995) = 11337408 * k + 4682986 := by
    unfold C
    simp [show (3779136 * k + 1560995) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4682986) = 5668704 * k + 2341493 := by
    unfold C
    simp [show (11337408 * k + 4682986) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2341493) = 17006112 * k + 7024480 := by
    unfold C
    simp [show (5668704 * k + 2341493) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7024480) = 8503056 * k + 3512240 := by
    unfold C
    simp [show (17006112 * k + 7024480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3512240) = 4251528 * k + 1756120 := by
    unfold C
    simp [show (8503056 * k + 3512240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1756120) = 2125764 * k + 878060 := by
    unfold C
    simp [show (4251528 * k + 1756120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 878060) = 1062882 * k + 439030 := by
    unfold C
    simp [show (2125764 * k + 878060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 439030) = 531441 * k + 219515 := by
    unfold C
    simp [show (1062882 * k + 439030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 433119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 433119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_433871 : ∀ k : Nat,
    iterate (1048576 * k + 433871) 32 = 531441 * k + 219896 ∧
      531441 * k + 219896 < 1048576 * k + 433871 := by
  intro k
  have h1 : C (1048576 * k + 433871) = 3145728 * k + 1301614 := by
    unfold C
    simp [show (1048576 * k + 433871) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1301614) = 1572864 * k + 650807 := by
    unfold C
    simp [show (3145728 * k + 1301614) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 650807) = 4718592 * k + 1952422 := by
    unfold C
    simp [show (1572864 * k + 650807) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1952422) = 2359296 * k + 976211 := by
    unfold C
    simp [show (4718592 * k + 1952422) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 976211) = 7077888 * k + 2928634 := by
    unfold C
    simp [show (2359296 * k + 976211) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2928634) = 3538944 * k + 1464317 := by
    unfold C
    simp [show (7077888 * k + 2928634) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1464317) = 10616832 * k + 4392952 := by
    unfold C
    simp [show (3538944 * k + 1464317) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4392952) = 5308416 * k + 2196476 := by
    unfold C
    simp [show (10616832 * k + 4392952) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2196476) = 2654208 * k + 1098238 := by
    unfold C
    simp [show (5308416 * k + 2196476) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1098238) = 1327104 * k + 549119 := by
    unfold C
    simp [show (2654208 * k + 1098238) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 549119) = 3981312 * k + 1647358 := by
    unfold C
    simp [show (1327104 * k + 549119) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1647358) = 1990656 * k + 823679 := by
    unfold C
    simp [show (3981312 * k + 1647358) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 823679) = 5971968 * k + 2471038 := by
    unfold C
    simp [show (1990656 * k + 823679) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2471038) = 2985984 * k + 1235519 := by
    unfold C
    simp [show (5971968 * k + 2471038) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1235519) = 8957952 * k + 3706558 := by
    unfold C
    simp [show (2985984 * k + 1235519) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3706558) = 4478976 * k + 1853279 := by
    unfold C
    simp [show (8957952 * k + 3706558) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1853279) = 13436928 * k + 5559838 := by
    unfold C
    simp [show (4478976 * k + 1853279) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5559838) = 6718464 * k + 2779919 := by
    unfold C
    simp [show (13436928 * k + 5559838) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2779919) = 20155392 * k + 8339758 := by
    unfold C
    simp [show (6718464 * k + 2779919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8339758) = 10077696 * k + 4169879 := by
    unfold C
    simp [show (20155392 * k + 8339758) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4169879) = 30233088 * k + 12509638 := by
    unfold C
    simp [show (10077696 * k + 4169879) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12509638) = 15116544 * k + 6254819 := by
    unfold C
    simp [show (30233088 * k + 12509638) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6254819) = 45349632 * k + 18764458 := by
    unfold C
    simp [show (15116544 * k + 6254819) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 18764458) = 22674816 * k + 9382229 := by
    unfold C
    simp [show (45349632 * k + 18764458) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9382229) = 68024448 * k + 28146688 := by
    unfold C
    simp [show (22674816 * k + 9382229) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 28146688) = 34012224 * k + 14073344 := by
    unfold C
    simp [show (68024448 * k + 28146688) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 14073344) = 17006112 * k + 7036672 := by
    unfold C
    simp [show (34012224 * k + 14073344) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7036672) = 8503056 * k + 3518336 := by
    unfold C
    simp [show (17006112 * k + 7036672) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3518336) = 4251528 * k + 1759168 := by
    unfold C
    simp [show (8503056 * k + 3518336) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1759168) = 2125764 * k + 879584 := by
    unfold C
    simp [show (4251528 * k + 1759168) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 879584) = 1062882 * k + 439792 := by
    unfold C
    simp [show (2125764 * k + 879584) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 439792) = 531441 * k + 219896 := by
    unfold C
    simp [show (1062882 * k + 439792) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 433871) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 433871)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_433983 : ∀ k : Nat,
    iterate (1048576 * k + 433983) 32 = 531441 * k + 219953 ∧
      531441 * k + 219953 < 1048576 * k + 433983 := by
  intro k
  have h1 : C (1048576 * k + 433983) = 3145728 * k + 1301950 := by
    unfold C
    simp [show (1048576 * k + 433983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1301950) = 1572864 * k + 650975 := by
    unfold C
    simp [show (3145728 * k + 1301950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 650975) = 4718592 * k + 1952926 := by
    unfold C
    simp [show (1572864 * k + 650975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1952926) = 2359296 * k + 976463 := by
    unfold C
    simp [show (4718592 * k + 1952926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 976463) = 7077888 * k + 2929390 := by
    unfold C
    simp [show (2359296 * k + 976463) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2929390) = 3538944 * k + 1464695 := by
    unfold C
    simp [show (7077888 * k + 2929390) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1464695) = 10616832 * k + 4394086 := by
    unfold C
    simp [show (3538944 * k + 1464695) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4394086) = 5308416 * k + 2197043 := by
    unfold C
    simp [show (10616832 * k + 4394086) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2197043) = 15925248 * k + 6591130 := by
    unfold C
    simp [show (5308416 * k + 2197043) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6591130) = 7962624 * k + 3295565 := by
    unfold C
    simp [show (15925248 * k + 6591130) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3295565) = 23887872 * k + 9886696 := by
    unfold C
    simp [show (7962624 * k + 3295565) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9886696) = 11943936 * k + 4943348 := by
    unfold C
    simp [show (23887872 * k + 9886696) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4943348) = 5971968 * k + 2471674 := by
    unfold C
    simp [show (11943936 * k + 4943348) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2471674) = 2985984 * k + 1235837 := by
    unfold C
    simp [show (5971968 * k + 2471674) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1235837) = 8957952 * k + 3707512 := by
    unfold C
    simp [show (2985984 * k + 1235837) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3707512) = 4478976 * k + 1853756 := by
    unfold C
    simp [show (8957952 * k + 3707512) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1853756) = 2239488 * k + 926878 := by
    unfold C
    simp [show (4478976 * k + 1853756) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 926878) = 1119744 * k + 463439 := by
    unfold C
    simp [show (2239488 * k + 926878) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 463439) = 3359232 * k + 1390318 := by
    unfold C
    simp [show (1119744 * k + 463439) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1390318) = 1679616 * k + 695159 := by
    unfold C
    simp [show (3359232 * k + 1390318) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 695159) = 5038848 * k + 2085478 := by
    unfold C
    simp [show (1679616 * k + 695159) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2085478) = 2519424 * k + 1042739 := by
    unfold C
    simp [show (5038848 * k + 2085478) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1042739) = 7558272 * k + 3128218 := by
    unfold C
    simp [show (2519424 * k + 1042739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3128218) = 3779136 * k + 1564109 := by
    unfold C
    simp [show (7558272 * k + 3128218) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1564109) = 11337408 * k + 4692328 := by
    unfold C
    simp [show (3779136 * k + 1564109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4692328) = 5668704 * k + 2346164 := by
    unfold C
    simp [show (11337408 * k + 4692328) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2346164) = 2834352 * k + 1173082 := by
    unfold C
    simp [show (5668704 * k + 2346164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1173082) = 1417176 * k + 586541 := by
    unfold C
    simp [show (2834352 * k + 1173082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 586541) = 4251528 * k + 1759624 := by
    unfold C
    simp [show (1417176 * k + 586541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1759624) = 2125764 * k + 879812 := by
    unfold C
    simp [show (4251528 * k + 1759624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 879812) = 1062882 * k + 439906 := by
    unfold C
    simp [show (2125764 * k + 879812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 439906) = 531441 * k + 219953 := by
    unfold C
    simp [show (1062882 * k + 439906) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 433983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 433983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_434247 : ∀ k : Nat,
    iterate (1048576 * k + 434247) 32 = 531441 * k + 220087 ∧
      531441 * k + 220087 < 1048576 * k + 434247 := by
  intro k
  have h1 : C (1048576 * k + 434247) = 3145728 * k + 1302742 := by
    unfold C
    simp [show (1048576 * k + 434247) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1302742) = 1572864 * k + 651371 := by
    unfold C
    simp [show (3145728 * k + 1302742) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 651371) = 4718592 * k + 1954114 := by
    unfold C
    simp [show (1572864 * k + 651371) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1954114) = 2359296 * k + 977057 := by
    unfold C
    simp [show (4718592 * k + 1954114) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 977057) = 7077888 * k + 2931172 := by
    unfold C
    simp [show (2359296 * k + 977057) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2931172) = 3538944 * k + 1465586 := by
    unfold C
    simp [show (7077888 * k + 2931172) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1465586) = 1769472 * k + 732793 := by
    unfold C
    simp [show (3538944 * k + 1465586) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 732793) = 5308416 * k + 2198380 := by
    unfold C
    simp [show (1769472 * k + 732793) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2198380) = 2654208 * k + 1099190 := by
    unfold C
    simp [show (5308416 * k + 2198380) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1099190) = 1327104 * k + 549595 := by
    unfold C
    simp [show (2654208 * k + 1099190) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 549595) = 3981312 * k + 1648786 := by
    unfold C
    simp [show (1327104 * k + 549595) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1648786) = 1990656 * k + 824393 := by
    unfold C
    simp [show (3981312 * k + 1648786) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 824393) = 5971968 * k + 2473180 := by
    unfold C
    simp [show (1990656 * k + 824393) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2473180) = 2985984 * k + 1236590 := by
    unfold C
    simp [show (5971968 * k + 2473180) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1236590) = 1492992 * k + 618295 := by
    unfold C
    simp [show (2985984 * k + 1236590) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 618295) = 4478976 * k + 1854886 := by
    unfold C
    simp [show (1492992 * k + 618295) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1854886) = 2239488 * k + 927443 := by
    unfold C
    simp [show (4478976 * k + 1854886) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 927443) = 6718464 * k + 2782330 := by
    unfold C
    simp [show (2239488 * k + 927443) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2782330) = 3359232 * k + 1391165 := by
    unfold C
    simp [show (6718464 * k + 2782330) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1391165) = 10077696 * k + 4173496 := by
    unfold C
    simp [show (3359232 * k + 1391165) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4173496) = 5038848 * k + 2086748 := by
    unfold C
    simp [show (10077696 * k + 4173496) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2086748) = 2519424 * k + 1043374 := by
    unfold C
    simp [show (5038848 * k + 2086748) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1043374) = 1259712 * k + 521687 := by
    unfold C
    simp [show (2519424 * k + 1043374) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 521687) = 3779136 * k + 1565062 := by
    unfold C
    simp [show (1259712 * k + 521687) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1565062) = 1889568 * k + 782531 := by
    unfold C
    simp [show (3779136 * k + 1565062) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 782531) = 5668704 * k + 2347594 := by
    unfold C
    simp [show (1889568 * k + 782531) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2347594) = 2834352 * k + 1173797 := by
    unfold C
    simp [show (5668704 * k + 2347594) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1173797) = 8503056 * k + 3521392 := by
    unfold C
    simp [show (2834352 * k + 1173797) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3521392) = 4251528 * k + 1760696 := by
    unfold C
    simp [show (8503056 * k + 3521392) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1760696) = 2125764 * k + 880348 := by
    unfold C
    simp [show (4251528 * k + 1760696) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 880348) = 1062882 * k + 440174 := by
    unfold C
    simp [show (2125764 * k + 880348) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 440174) = 531441 * k + 220087 := by
    unfold C
    simp [show (1062882 * k + 440174) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 434247) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 434247)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_434303 : ∀ k : Nat,
    iterate (1048576 * k + 434303) 32 = 531441 * k + 220115 ∧
      531441 * k + 220115 < 1048576 * k + 434303 := by
  intro k
  have h1 : C (1048576 * k + 434303) = 3145728 * k + 1302910 := by
    unfold C
    simp [show (1048576 * k + 434303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1302910) = 1572864 * k + 651455 := by
    unfold C
    simp [show (3145728 * k + 1302910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 651455) = 4718592 * k + 1954366 := by
    unfold C
    simp [show (1572864 * k + 651455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1954366) = 2359296 * k + 977183 := by
    unfold C
    simp [show (4718592 * k + 1954366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 977183) = 7077888 * k + 2931550 := by
    unfold C
    simp [show (2359296 * k + 977183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2931550) = 3538944 * k + 1465775 := by
    unfold C
    simp [show (7077888 * k + 2931550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1465775) = 10616832 * k + 4397326 := by
    unfold C
    simp [show (3538944 * k + 1465775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4397326) = 5308416 * k + 2198663 := by
    unfold C
    simp [show (10616832 * k + 4397326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2198663) = 15925248 * k + 6595990 := by
    unfold C
    simp [show (5308416 * k + 2198663) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6595990) = 7962624 * k + 3297995 := by
    unfold C
    simp [show (15925248 * k + 6595990) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3297995) = 23887872 * k + 9893986 := by
    unfold C
    simp [show (7962624 * k + 3297995) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9893986) = 11943936 * k + 4946993 := by
    unfold C
    simp [show (23887872 * k + 9893986) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4946993) = 35831808 * k + 14840980 := by
    unfold C
    simp [show (11943936 * k + 4946993) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14840980) = 17915904 * k + 7420490 := by
    unfold C
    simp [show (35831808 * k + 14840980) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7420490) = 8957952 * k + 3710245 := by
    unfold C
    simp [show (17915904 * k + 7420490) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3710245) = 26873856 * k + 11130736 := by
    unfold C
    simp [show (8957952 * k + 3710245) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11130736) = 13436928 * k + 5565368 := by
    unfold C
    simp [show (26873856 * k + 11130736) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5565368) = 6718464 * k + 2782684 := by
    unfold C
    simp [show (13436928 * k + 5565368) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2782684) = 3359232 * k + 1391342 := by
    unfold C
    simp [show (6718464 * k + 2782684) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1391342) = 1679616 * k + 695671 := by
    unfold C
    simp [show (3359232 * k + 1391342) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 695671) = 5038848 * k + 2087014 := by
    unfold C
    simp [show (1679616 * k + 695671) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2087014) = 2519424 * k + 1043507 := by
    unfold C
    simp [show (5038848 * k + 2087014) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1043507) = 7558272 * k + 3130522 := by
    unfold C
    simp [show (2519424 * k + 1043507) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3130522) = 3779136 * k + 1565261 := by
    unfold C
    simp [show (7558272 * k + 3130522) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1565261) = 11337408 * k + 4695784 := by
    unfold C
    simp [show (3779136 * k + 1565261) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4695784) = 5668704 * k + 2347892 := by
    unfold C
    simp [show (11337408 * k + 4695784) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2347892) = 2834352 * k + 1173946 := by
    unfold C
    simp [show (5668704 * k + 2347892) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1173946) = 1417176 * k + 586973 := by
    unfold C
    simp [show (2834352 * k + 1173946) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 586973) = 4251528 * k + 1760920 := by
    unfold C
    simp [show (1417176 * k + 586973) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1760920) = 2125764 * k + 880460 := by
    unfold C
    simp [show (4251528 * k + 1760920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 880460) = 1062882 * k + 440230 := by
    unfold C
    simp [show (2125764 * k + 880460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 440230) = 531441 * k + 220115 := by
    unfold C
    simp [show (1062882 * k + 440230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 434303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 434303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_434735 : ∀ k : Nat,
    iterate (1048576 * k + 434735) 32 = 531441 * k + 220334 ∧
      531441 * k + 220334 < 1048576 * k + 434735 := by
  intro k
  have h1 : C (1048576 * k + 434735) = 3145728 * k + 1304206 := by
    unfold C
    simp [show (1048576 * k + 434735) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1304206) = 1572864 * k + 652103 := by
    unfold C
    simp [show (3145728 * k + 1304206) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 652103) = 4718592 * k + 1956310 := by
    unfold C
    simp [show (1572864 * k + 652103) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1956310) = 2359296 * k + 978155 := by
    unfold C
    simp [show (4718592 * k + 1956310) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 978155) = 7077888 * k + 2934466 := by
    unfold C
    simp [show (2359296 * k + 978155) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2934466) = 3538944 * k + 1467233 := by
    unfold C
    simp [show (7077888 * k + 2934466) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1467233) = 10616832 * k + 4401700 := by
    unfold C
    simp [show (3538944 * k + 1467233) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4401700) = 5308416 * k + 2200850 := by
    unfold C
    simp [show (10616832 * k + 4401700) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2200850) = 2654208 * k + 1100425 := by
    unfold C
    simp [show (5308416 * k + 2200850) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1100425) = 7962624 * k + 3301276 := by
    unfold C
    simp [show (2654208 * k + 1100425) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3301276) = 3981312 * k + 1650638 := by
    unfold C
    simp [show (7962624 * k + 3301276) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1650638) = 1990656 * k + 825319 := by
    unfold C
    simp [show (3981312 * k + 1650638) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 825319) = 5971968 * k + 2475958 := by
    unfold C
    simp [show (1990656 * k + 825319) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2475958) = 2985984 * k + 1237979 := by
    unfold C
    simp [show (5971968 * k + 2475958) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1237979) = 8957952 * k + 3713938 := by
    unfold C
    simp [show (2985984 * k + 1237979) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3713938) = 4478976 * k + 1856969 := by
    unfold C
    simp [show (8957952 * k + 3713938) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1856969) = 13436928 * k + 5570908 := by
    unfold C
    simp [show (4478976 * k + 1856969) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5570908) = 6718464 * k + 2785454 := by
    unfold C
    simp [show (13436928 * k + 5570908) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2785454) = 3359232 * k + 1392727 := by
    unfold C
    simp [show (6718464 * k + 2785454) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1392727) = 10077696 * k + 4178182 := by
    unfold C
    simp [show (3359232 * k + 1392727) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4178182) = 5038848 * k + 2089091 := by
    unfold C
    simp [show (10077696 * k + 4178182) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2089091) = 15116544 * k + 6267274 := by
    unfold C
    simp [show (5038848 * k + 2089091) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6267274) = 7558272 * k + 3133637 := by
    unfold C
    simp [show (15116544 * k + 6267274) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3133637) = 22674816 * k + 9400912 := by
    unfold C
    simp [show (7558272 * k + 3133637) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9400912) = 11337408 * k + 4700456 := by
    unfold C
    simp [show (22674816 * k + 9400912) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4700456) = 5668704 * k + 2350228 := by
    unfold C
    simp [show (11337408 * k + 4700456) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2350228) = 2834352 * k + 1175114 := by
    unfold C
    simp [show (5668704 * k + 2350228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1175114) = 1417176 * k + 587557 := by
    unfold C
    simp [show (2834352 * k + 1175114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 587557) = 4251528 * k + 1762672 := by
    unfold C
    simp [show (1417176 * k + 587557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1762672) = 2125764 * k + 881336 := by
    unfold C
    simp [show (4251528 * k + 1762672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 881336) = 1062882 * k + 440668 := by
    unfold C
    simp [show (2125764 * k + 881336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 440668) = 531441 * k + 220334 := by
    unfold C
    simp [show (1062882 * k + 440668) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 434735) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 434735)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_435271 : ∀ k : Nat,
    iterate (1048576 * k + 435271) 32 = 531441 * k + 220606 ∧
      531441 * k + 220606 < 1048576 * k + 435271 := by
  intro k
  have h1 : C (1048576 * k + 435271) = 3145728 * k + 1305814 := by
    unfold C
    simp [show (1048576 * k + 435271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1305814) = 1572864 * k + 652907 := by
    unfold C
    simp [show (3145728 * k + 1305814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 652907) = 4718592 * k + 1958722 := by
    unfold C
    simp [show (1572864 * k + 652907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1958722) = 2359296 * k + 979361 := by
    unfold C
    simp [show (4718592 * k + 1958722) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 979361) = 7077888 * k + 2938084 := by
    unfold C
    simp [show (2359296 * k + 979361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2938084) = 3538944 * k + 1469042 := by
    unfold C
    simp [show (7077888 * k + 2938084) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1469042) = 1769472 * k + 734521 := by
    unfold C
    simp [show (3538944 * k + 1469042) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 734521) = 5308416 * k + 2203564 := by
    unfold C
    simp [show (1769472 * k + 734521) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2203564) = 2654208 * k + 1101782 := by
    unfold C
    simp [show (5308416 * k + 2203564) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1101782) = 1327104 * k + 550891 := by
    unfold C
    simp [show (2654208 * k + 1101782) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 550891) = 3981312 * k + 1652674 := by
    unfold C
    simp [show (1327104 * k + 550891) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1652674) = 1990656 * k + 826337 := by
    unfold C
    simp [show (3981312 * k + 1652674) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 826337) = 5971968 * k + 2479012 := by
    unfold C
    simp [show (1990656 * k + 826337) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2479012) = 2985984 * k + 1239506 := by
    unfold C
    simp [show (5971968 * k + 2479012) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1239506) = 1492992 * k + 619753 := by
    unfold C
    simp [show (2985984 * k + 1239506) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 619753) = 4478976 * k + 1859260 := by
    unfold C
    simp [show (1492992 * k + 619753) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1859260) = 2239488 * k + 929630 := by
    unfold C
    simp [show (4478976 * k + 1859260) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 929630) = 1119744 * k + 464815 := by
    unfold C
    simp [show (2239488 * k + 929630) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 464815) = 3359232 * k + 1394446 := by
    unfold C
    simp [show (1119744 * k + 464815) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 1394446) = 1679616 * k + 697223 := by
    unfold C
    simp [show (3359232 * k + 1394446) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 697223) = 5038848 * k + 2091670 := by
    unfold C
    simp [show (1679616 * k + 697223) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2091670) = 2519424 * k + 1045835 := by
    unfold C
    simp [show (5038848 * k + 2091670) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1045835) = 7558272 * k + 3137506 := by
    unfold C
    simp [show (2519424 * k + 1045835) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3137506) = 3779136 * k + 1568753 := by
    unfold C
    simp [show (7558272 * k + 3137506) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1568753) = 11337408 * k + 4706260 := by
    unfold C
    simp [show (3779136 * k + 1568753) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4706260) = 5668704 * k + 2353130 := by
    unfold C
    simp [show (11337408 * k + 4706260) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2353130) = 2834352 * k + 1176565 := by
    unfold C
    simp [show (5668704 * k + 2353130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1176565) = 8503056 * k + 3529696 := by
    unfold C
    simp [show (2834352 * k + 1176565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3529696) = 4251528 * k + 1764848 := by
    unfold C
    simp [show (8503056 * k + 3529696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1764848) = 2125764 * k + 882424 := by
    unfold C
    simp [show (4251528 * k + 1764848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 882424) = 1062882 * k + 441212 := by
    unfold C
    simp [show (2125764 * k + 882424) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 441212) = 531441 * k + 220606 := by
    unfold C
    simp [show (1062882 * k + 441212) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 435271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 435271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_435303 : ∀ k : Nat,
    iterate (1048576 * k + 435303) 32 = 531441 * k + 220622 ∧
      531441 * k + 220622 < 1048576 * k + 435303 := by
  intro k
  have h1 : C (1048576 * k + 435303) = 3145728 * k + 1305910 := by
    unfold C
    simp [show (1048576 * k + 435303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1305910) = 1572864 * k + 652955 := by
    unfold C
    simp [show (3145728 * k + 1305910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 652955) = 4718592 * k + 1958866 := by
    unfold C
    simp [show (1572864 * k + 652955) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1958866) = 2359296 * k + 979433 := by
    unfold C
    simp [show (4718592 * k + 1958866) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 979433) = 7077888 * k + 2938300 := by
    unfold C
    simp [show (2359296 * k + 979433) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2938300) = 3538944 * k + 1469150 := by
    unfold C
    simp [show (7077888 * k + 2938300) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1469150) = 1769472 * k + 734575 := by
    unfold C
    simp [show (3538944 * k + 1469150) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 734575) = 5308416 * k + 2203726 := by
    unfold C
    simp [show (1769472 * k + 734575) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2203726) = 2654208 * k + 1101863 := by
    unfold C
    simp [show (5308416 * k + 2203726) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1101863) = 7962624 * k + 3305590 := by
    unfold C
    simp [show (2654208 * k + 1101863) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3305590) = 3981312 * k + 1652795 := by
    unfold C
    simp [show (7962624 * k + 3305590) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1652795) = 11943936 * k + 4958386 := by
    unfold C
    simp [show (3981312 * k + 1652795) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4958386) = 5971968 * k + 2479193 := by
    unfold C
    simp [show (11943936 * k + 4958386) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2479193) = 17915904 * k + 7437580 := by
    unfold C
    simp [show (5971968 * k + 2479193) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7437580) = 8957952 * k + 3718790 := by
    unfold C
    simp [show (17915904 * k + 7437580) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3718790) = 4478976 * k + 1859395 := by
    unfold C
    simp [show (8957952 * k + 3718790) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1859395) = 13436928 * k + 5578186 := by
    unfold C
    simp [show (4478976 * k + 1859395) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5578186) = 6718464 * k + 2789093 := by
    unfold C
    simp [show (13436928 * k + 5578186) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2789093) = 20155392 * k + 8367280 := by
    unfold C
    simp [show (6718464 * k + 2789093) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8367280) = 10077696 * k + 4183640 := by
    unfold C
    simp [show (20155392 * k + 8367280) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4183640) = 5038848 * k + 2091820 := by
    unfold C
    simp [show (10077696 * k + 4183640) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2091820) = 2519424 * k + 1045910 := by
    unfold C
    simp [show (5038848 * k + 2091820) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1045910) = 1259712 * k + 522955 := by
    unfold C
    simp [show (2519424 * k + 1045910) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 522955) = 3779136 * k + 1568866 := by
    unfold C
    simp [show (1259712 * k + 522955) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 1568866) = 1889568 * k + 784433 := by
    unfold C
    simp [show (3779136 * k + 1568866) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 784433) = 5668704 * k + 2353300 := by
    unfold C
    simp [show (1889568 * k + 784433) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2353300) = 2834352 * k + 1176650 := by
    unfold C
    simp [show (5668704 * k + 2353300) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1176650) = 1417176 * k + 588325 := by
    unfold C
    simp [show (2834352 * k + 1176650) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 588325) = 4251528 * k + 1764976 := by
    unfold C
    simp [show (1417176 * k + 588325) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1764976) = 2125764 * k + 882488 := by
    unfold C
    simp [show (4251528 * k + 1764976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 882488) = 1062882 * k + 441244 := by
    unfold C
    simp [show (2125764 * k + 882488) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 441244) = 531441 * k + 220622 := by
    unfold C
    simp [show (1062882 * k + 441244) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 435303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 435303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_436475 : ∀ k : Nat,
    iterate (1048576 * k + 436475) 32 = 531441 * k + 221216 ∧
      531441 * k + 221216 < 1048576 * k + 436475 := by
  intro k
  have h1 : C (1048576 * k + 436475) = 3145728 * k + 1309426 := by
    unfold C
    simp [show (1048576 * k + 436475) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1309426) = 1572864 * k + 654713 := by
    unfold C
    simp [show (3145728 * k + 1309426) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 654713) = 4718592 * k + 1964140 := by
    unfold C
    simp [show (1572864 * k + 654713) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1964140) = 2359296 * k + 982070 := by
    unfold C
    simp [show (4718592 * k + 1964140) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 982070) = 1179648 * k + 491035 := by
    unfold C
    simp [show (2359296 * k + 982070) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 491035) = 3538944 * k + 1473106 := by
    unfold C
    simp [show (1179648 * k + 491035) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1473106) = 1769472 * k + 736553 := by
    unfold C
    simp [show (3538944 * k + 1473106) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 736553) = 5308416 * k + 2209660 := by
    unfold C
    simp [show (1769472 * k + 736553) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2209660) = 2654208 * k + 1104830 := by
    unfold C
    simp [show (5308416 * k + 2209660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1104830) = 1327104 * k + 552415 := by
    unfold C
    simp [show (2654208 * k + 1104830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 552415) = 3981312 * k + 1657246 := by
    unfold C
    simp [show (1327104 * k + 552415) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1657246) = 1990656 * k + 828623 := by
    unfold C
    simp [show (3981312 * k + 1657246) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 828623) = 5971968 * k + 2485870 := by
    unfold C
    simp [show (1990656 * k + 828623) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2485870) = 2985984 * k + 1242935 := by
    unfold C
    simp [show (5971968 * k + 2485870) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1242935) = 8957952 * k + 3728806 := by
    unfold C
    simp [show (2985984 * k + 1242935) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3728806) = 4478976 * k + 1864403 := by
    unfold C
    simp [show (8957952 * k + 3728806) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1864403) = 13436928 * k + 5593210 := by
    unfold C
    simp [show (4478976 * k + 1864403) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5593210) = 6718464 * k + 2796605 := by
    unfold C
    simp [show (13436928 * k + 5593210) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2796605) = 20155392 * k + 8389816 := by
    unfold C
    simp [show (6718464 * k + 2796605) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8389816) = 10077696 * k + 4194908 := by
    unfold C
    simp [show (20155392 * k + 8389816) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4194908) = 5038848 * k + 2097454 := by
    unfold C
    simp [show (10077696 * k + 4194908) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2097454) = 2519424 * k + 1048727 := by
    unfold C
    simp [show (5038848 * k + 2097454) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1048727) = 7558272 * k + 3146182 := by
    unfold C
    simp [show (2519424 * k + 1048727) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3146182) = 3779136 * k + 1573091 := by
    unfold C
    simp [show (7558272 * k + 3146182) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1573091) = 11337408 * k + 4719274 := by
    unfold C
    simp [show (3779136 * k + 1573091) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4719274) = 5668704 * k + 2359637 := by
    unfold C
    simp [show (11337408 * k + 4719274) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2359637) = 17006112 * k + 7078912 := by
    unfold C
    simp [show (5668704 * k + 2359637) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7078912) = 8503056 * k + 3539456 := by
    unfold C
    simp [show (17006112 * k + 7078912) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3539456) = 4251528 * k + 1769728 := by
    unfold C
    simp [show (8503056 * k + 3539456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1769728) = 2125764 * k + 884864 := by
    unfold C
    simp [show (4251528 * k + 1769728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 884864) = 1062882 * k + 442432 := by
    unfold C
    simp [show (2125764 * k + 884864) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 442432) = 531441 * k + 221216 := by
    unfold C
    simp [show (1062882 * k + 442432) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 436475) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 436475)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_436671 : ∀ k : Nat,
    iterate (1048576 * k + 436671) 32 = 531441 * k + 221315 ∧
      531441 * k + 221315 < 1048576 * k + 436671 := by
  intro k
  have h1 : C (1048576 * k + 436671) = 3145728 * k + 1310014 := by
    unfold C
    simp [show (1048576 * k + 436671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1310014) = 1572864 * k + 655007 := by
    unfold C
    simp [show (3145728 * k + 1310014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 655007) = 4718592 * k + 1965022 := by
    unfold C
    simp [show (1572864 * k + 655007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1965022) = 2359296 * k + 982511 := by
    unfold C
    simp [show (4718592 * k + 1965022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 982511) = 7077888 * k + 2947534 := by
    unfold C
    simp [show (2359296 * k + 982511) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2947534) = 3538944 * k + 1473767 := by
    unfold C
    simp [show (7077888 * k + 2947534) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1473767) = 10616832 * k + 4421302 := by
    unfold C
    simp [show (3538944 * k + 1473767) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4421302) = 5308416 * k + 2210651 := by
    unfold C
    simp [show (10616832 * k + 4421302) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2210651) = 15925248 * k + 6631954 := by
    unfold C
    simp [show (5308416 * k + 2210651) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6631954) = 7962624 * k + 3315977 := by
    unfold C
    simp [show (15925248 * k + 6631954) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3315977) = 23887872 * k + 9947932 := by
    unfold C
    simp [show (7962624 * k + 3315977) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9947932) = 11943936 * k + 4973966 := by
    unfold C
    simp [show (23887872 * k + 9947932) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4973966) = 5971968 * k + 2486983 := by
    unfold C
    simp [show (11943936 * k + 4973966) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2486983) = 17915904 * k + 7460950 := by
    unfold C
    simp [show (5971968 * k + 2486983) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7460950) = 8957952 * k + 3730475 := by
    unfold C
    simp [show (17915904 * k + 7460950) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3730475) = 26873856 * k + 11191426 := by
    unfold C
    simp [show (8957952 * k + 3730475) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11191426) = 13436928 * k + 5595713 := by
    unfold C
    simp [show (26873856 * k + 11191426) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5595713) = 40310784 * k + 16787140 := by
    unfold C
    simp [show (13436928 * k + 5595713) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16787140) = 20155392 * k + 8393570 := by
    unfold C
    simp [show (40310784 * k + 16787140) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8393570) = 10077696 * k + 4196785 := by
    unfold C
    simp [show (20155392 * k + 8393570) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4196785) = 30233088 * k + 12590356 := by
    unfold C
    simp [show (10077696 * k + 4196785) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12590356) = 15116544 * k + 6295178 := by
    unfold C
    simp [show (30233088 * k + 12590356) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6295178) = 7558272 * k + 3147589 := by
    unfold C
    simp [show (15116544 * k + 6295178) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3147589) = 22674816 * k + 9442768 := by
    unfold C
    simp [show (7558272 * k + 3147589) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9442768) = 11337408 * k + 4721384 := by
    unfold C
    simp [show (22674816 * k + 9442768) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4721384) = 5668704 * k + 2360692 := by
    unfold C
    simp [show (11337408 * k + 4721384) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2360692) = 2834352 * k + 1180346 := by
    unfold C
    simp [show (5668704 * k + 2360692) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1180346) = 1417176 * k + 590173 := by
    unfold C
    simp [show (2834352 * k + 1180346) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 590173) = 4251528 * k + 1770520 := by
    unfold C
    simp [show (1417176 * k + 590173) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1770520) = 2125764 * k + 885260 := by
    unfold C
    simp [show (4251528 * k + 1770520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 885260) = 1062882 * k + 442630 := by
    unfold C
    simp [show (2125764 * k + 885260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 442630) = 531441 * k + 221315 := by
    unfold C
    simp [show (1062882 * k + 442630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 436671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 436671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_437119 : ∀ k : Nat,
    iterate (1048576 * k + 437119) 32 = 531441 * k + 221542 ∧
      531441 * k + 221542 < 1048576 * k + 437119 := by
  intro k
  have h1 : C (1048576 * k + 437119) = 3145728 * k + 1311358 := by
    unfold C
    simp [show (1048576 * k + 437119) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1311358) = 1572864 * k + 655679 := by
    unfold C
    simp [show (3145728 * k + 1311358) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 655679) = 4718592 * k + 1967038 := by
    unfold C
    simp [show (1572864 * k + 655679) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1967038) = 2359296 * k + 983519 := by
    unfold C
    simp [show (4718592 * k + 1967038) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 983519) = 7077888 * k + 2950558 := by
    unfold C
    simp [show (2359296 * k + 983519) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2950558) = 3538944 * k + 1475279 := by
    unfold C
    simp [show (7077888 * k + 2950558) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1475279) = 10616832 * k + 4425838 := by
    unfold C
    simp [show (3538944 * k + 1475279) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4425838) = 5308416 * k + 2212919 := by
    unfold C
    simp [show (10616832 * k + 4425838) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2212919) = 15925248 * k + 6638758 := by
    unfold C
    simp [show (5308416 * k + 2212919) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6638758) = 7962624 * k + 3319379 := by
    unfold C
    simp [show (15925248 * k + 6638758) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3319379) = 23887872 * k + 9958138 := by
    unfold C
    simp [show (7962624 * k + 3319379) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9958138) = 11943936 * k + 4979069 := by
    unfold C
    simp [show (23887872 * k + 9958138) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4979069) = 35831808 * k + 14937208 := by
    unfold C
    simp [show (11943936 * k + 4979069) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14937208) = 17915904 * k + 7468604 := by
    unfold C
    simp [show (35831808 * k + 14937208) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7468604) = 8957952 * k + 3734302 := by
    unfold C
    simp [show (17915904 * k + 7468604) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3734302) = 4478976 * k + 1867151 := by
    unfold C
    simp [show (8957952 * k + 3734302) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1867151) = 13436928 * k + 5601454 := by
    unfold C
    simp [show (4478976 * k + 1867151) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5601454) = 6718464 * k + 2800727 := by
    unfold C
    simp [show (13436928 * k + 5601454) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2800727) = 20155392 * k + 8402182 := by
    unfold C
    simp [show (6718464 * k + 2800727) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8402182) = 10077696 * k + 4201091 := by
    unfold C
    simp [show (20155392 * k + 8402182) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4201091) = 30233088 * k + 12603274 := by
    unfold C
    simp [show (10077696 * k + 4201091) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12603274) = 15116544 * k + 6301637 := by
    unfold C
    simp [show (30233088 * k + 12603274) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6301637) = 45349632 * k + 18904912 := by
    unfold C
    simp [show (15116544 * k + 6301637) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 18904912) = 22674816 * k + 9452456 := by
    unfold C
    simp [show (45349632 * k + 18904912) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9452456) = 11337408 * k + 4726228 := by
    unfold C
    simp [show (22674816 * k + 9452456) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4726228) = 5668704 * k + 2363114 := by
    unfold C
    simp [show (11337408 * k + 4726228) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2363114) = 2834352 * k + 1181557 := by
    unfold C
    simp [show (5668704 * k + 2363114) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1181557) = 8503056 * k + 3544672 := by
    unfold C
    simp [show (2834352 * k + 1181557) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3544672) = 4251528 * k + 1772336 := by
    unfold C
    simp [show (8503056 * k + 3544672) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1772336) = 2125764 * k + 886168 := by
    unfold C
    simp [show (4251528 * k + 1772336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 886168) = 1062882 * k + 443084 := by
    unfold C
    simp [show (2125764 * k + 886168) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443084) = 531441 * k + 221542 := by
    unfold C
    simp [show (1062882 * k + 443084) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 437119) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 437119)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_437231 : ∀ k : Nat,
    iterate (1048576 * k + 437231) 32 = 531441 * k + 221599 ∧
      531441 * k + 221599 < 1048576 * k + 437231 := by
  intro k
  have h1 : C (1048576 * k + 437231) = 3145728 * k + 1311694 := by
    unfold C
    simp [show (1048576 * k + 437231) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1311694) = 1572864 * k + 655847 := by
    unfold C
    simp [show (3145728 * k + 1311694) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 655847) = 4718592 * k + 1967542 := by
    unfold C
    simp [show (1572864 * k + 655847) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1967542) = 2359296 * k + 983771 := by
    unfold C
    simp [show (4718592 * k + 1967542) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 983771) = 7077888 * k + 2951314 := by
    unfold C
    simp [show (2359296 * k + 983771) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2951314) = 3538944 * k + 1475657 := by
    unfold C
    simp [show (7077888 * k + 2951314) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1475657) = 10616832 * k + 4426972 := by
    unfold C
    simp [show (3538944 * k + 1475657) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4426972) = 5308416 * k + 2213486 := by
    unfold C
    simp [show (10616832 * k + 4426972) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2213486) = 2654208 * k + 1106743 := by
    unfold C
    simp [show (5308416 * k + 2213486) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1106743) = 7962624 * k + 3320230 := by
    unfold C
    simp [show (2654208 * k + 1106743) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3320230) = 3981312 * k + 1660115 := by
    unfold C
    simp [show (7962624 * k + 3320230) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1660115) = 11943936 * k + 4980346 := by
    unfold C
    simp [show (3981312 * k + 1660115) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 4980346) = 5971968 * k + 2490173 := by
    unfold C
    simp [show (11943936 * k + 4980346) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2490173) = 17915904 * k + 7470520 := by
    unfold C
    simp [show (5971968 * k + 2490173) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7470520) = 8957952 * k + 3735260 := by
    unfold C
    simp [show (17915904 * k + 7470520) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3735260) = 4478976 * k + 1867630 := by
    unfold C
    simp [show (8957952 * k + 3735260) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1867630) = 2239488 * k + 933815 := by
    unfold C
    simp [show (4478976 * k + 1867630) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 933815) = 6718464 * k + 2801446 := by
    unfold C
    simp [show (2239488 * k + 933815) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 2801446) = 3359232 * k + 1400723 := by
    unfold C
    simp [show (6718464 * k + 2801446) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1400723) = 10077696 * k + 4202170 := by
    unfold C
    simp [show (3359232 * k + 1400723) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4202170) = 5038848 * k + 2101085 := by
    unfold C
    simp [show (10077696 * k + 4202170) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2101085) = 15116544 * k + 6303256 := by
    unfold C
    simp [show (5038848 * k + 2101085) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6303256) = 7558272 * k + 3151628 := by
    unfold C
    simp [show (15116544 * k + 6303256) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3151628) = 3779136 * k + 1575814 := by
    unfold C
    simp [show (7558272 * k + 3151628) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1575814) = 1889568 * k + 787907 := by
    unfold C
    simp [show (3779136 * k + 1575814) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 787907) = 5668704 * k + 2363722 := by
    unfold C
    simp [show (1889568 * k + 787907) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2363722) = 2834352 * k + 1181861 := by
    unfold C
    simp [show (5668704 * k + 2363722) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1181861) = 8503056 * k + 3545584 := by
    unfold C
    simp [show (2834352 * k + 1181861) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3545584) = 4251528 * k + 1772792 := by
    unfold C
    simp [show (8503056 * k + 3545584) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1772792) = 2125764 * k + 886396 := by
    unfold C
    simp [show (4251528 * k + 1772792) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 886396) = 1062882 * k + 443198 := by
    unfold C
    simp [show (2125764 * k + 886396) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443198) = 531441 * k + 221599 := by
    unfold C
    simp [show (1062882 * k + 443198) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 437231) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 437231)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_437339 : ∀ k : Nat,
    iterate (1048576 * k + 437339) 32 = 531441 * k + 221654 ∧
      531441 * k + 221654 < 1048576 * k + 437339 := by
  intro k
  have h1 : C (1048576 * k + 437339) = 3145728 * k + 1312018 := by
    unfold C
    simp [show (1048576 * k + 437339) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1312018) = 1572864 * k + 656009 := by
    unfold C
    simp [show (3145728 * k + 1312018) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 656009) = 4718592 * k + 1968028 := by
    unfold C
    simp [show (1572864 * k + 656009) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1968028) = 2359296 * k + 984014 := by
    unfold C
    simp [show (4718592 * k + 1968028) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 984014) = 1179648 * k + 492007 := by
    unfold C
    simp [show (2359296 * k + 984014) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 492007) = 3538944 * k + 1476022 := by
    unfold C
    simp [show (1179648 * k + 492007) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 1476022) = 1769472 * k + 738011 := by
    unfold C
    simp [show (3538944 * k + 1476022) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 738011) = 5308416 * k + 2214034 := by
    unfold C
    simp [show (1769472 * k + 738011) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 2214034) = 2654208 * k + 1107017 := by
    unfold C
    simp [show (5308416 * k + 2214034) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1107017) = 7962624 * k + 3321052 := by
    unfold C
    simp [show (2654208 * k + 1107017) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3321052) = 3981312 * k + 1660526 := by
    unfold C
    simp [show (7962624 * k + 3321052) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1660526) = 1990656 * k + 830263 := by
    unfold C
    simp [show (3981312 * k + 1660526) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 830263) = 5971968 * k + 2490790 := by
    unfold C
    simp [show (1990656 * k + 830263) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2490790) = 2985984 * k + 1245395 := by
    unfold C
    simp [show (5971968 * k + 2490790) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1245395) = 8957952 * k + 3736186 := by
    unfold C
    simp [show (2985984 * k + 1245395) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3736186) = 4478976 * k + 1868093 := by
    unfold C
    simp [show (8957952 * k + 3736186) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1868093) = 13436928 * k + 5604280 := by
    unfold C
    simp [show (4478976 * k + 1868093) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5604280) = 6718464 * k + 2802140 := by
    unfold C
    simp [show (13436928 * k + 5604280) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2802140) = 3359232 * k + 1401070 := by
    unfold C
    simp [show (6718464 * k + 2802140) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1401070) = 1679616 * k + 700535 := by
    unfold C
    simp [show (3359232 * k + 1401070) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 700535) = 5038848 * k + 2101606 := by
    unfold C
    simp [show (1679616 * k + 700535) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 2101606) = 2519424 * k + 1050803 := by
    unfold C
    simp [show (5038848 * k + 2101606) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1050803) = 7558272 * k + 3152410 := by
    unfold C
    simp [show (2519424 * k + 1050803) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3152410) = 3779136 * k + 1576205 := by
    unfold C
    simp [show (7558272 * k + 3152410) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1576205) = 11337408 * k + 4728616 := by
    unfold C
    simp [show (3779136 * k + 1576205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4728616) = 5668704 * k + 2364308 := by
    unfold C
    simp [show (11337408 * k + 4728616) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2364308) = 2834352 * k + 1182154 := by
    unfold C
    simp [show (5668704 * k + 2364308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1182154) = 1417176 * k + 591077 := by
    unfold C
    simp [show (2834352 * k + 1182154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 591077) = 4251528 * k + 1773232 := by
    unfold C
    simp [show (1417176 * k + 591077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1773232) = 2125764 * k + 886616 := by
    unfold C
    simp [show (4251528 * k + 1773232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 886616) = 1062882 * k + 443308 := by
    unfold C
    simp [show (2125764 * k + 886616) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443308) = 531441 * k + 221654 := by
    unfold C
    simp [show (1062882 * k + 443308) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 437339) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 437339)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_437695 : ∀ k : Nat,
    iterate (1048576 * k + 437695) 32 = 531441 * k + 221834 ∧
      531441 * k + 221834 < 1048576 * k + 437695 := by
  intro k
  have h1 : C (1048576 * k + 437695) = 3145728 * k + 1313086 := by
    unfold C
    simp [show (1048576 * k + 437695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1313086) = 1572864 * k + 656543 := by
    unfold C
    simp [show (3145728 * k + 1313086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 656543) = 4718592 * k + 1969630 := by
    unfold C
    simp [show (1572864 * k + 656543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1969630) = 2359296 * k + 984815 := by
    unfold C
    simp [show (4718592 * k + 1969630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 984815) = 7077888 * k + 2954446 := by
    unfold C
    simp [show (2359296 * k + 984815) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2954446) = 3538944 * k + 1477223 := by
    unfold C
    simp [show (7077888 * k + 2954446) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1477223) = 10616832 * k + 4431670 := by
    unfold C
    simp [show (3538944 * k + 1477223) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4431670) = 5308416 * k + 2215835 := by
    unfold C
    simp [show (10616832 * k + 4431670) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2215835) = 15925248 * k + 6647506 := by
    unfold C
    simp [show (5308416 * k + 2215835) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6647506) = 7962624 * k + 3323753 := by
    unfold C
    simp [show (15925248 * k + 6647506) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3323753) = 23887872 * k + 9971260 := by
    unfold C
    simp [show (7962624 * k + 3323753) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9971260) = 11943936 * k + 4985630 := by
    unfold C
    simp [show (23887872 * k + 9971260) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4985630) = 5971968 * k + 2492815 := by
    unfold C
    simp [show (11943936 * k + 4985630) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 2492815) = 17915904 * k + 7478446 := by
    unfold C
    simp [show (5971968 * k + 2492815) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 7478446) = 8957952 * k + 3739223 := by
    unfold C
    simp [show (17915904 * k + 7478446) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3739223) = 26873856 * k + 11217670 := by
    unfold C
    simp [show (8957952 * k + 3739223) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 11217670) = 13436928 * k + 5608835 := by
    unfold C
    simp [show (26873856 * k + 11217670) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5608835) = 40310784 * k + 16826506 := by
    unfold C
    simp [show (13436928 * k + 5608835) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16826506) = 20155392 * k + 8413253 := by
    unfold C
    simp [show (40310784 * k + 16826506) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8413253) = 60466176 * k + 25239760 := by
    unfold C
    simp [show (20155392 * k + 8413253) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 25239760) = 30233088 * k + 12619880 := by
    unfold C
    simp [show (60466176 * k + 25239760) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12619880) = 15116544 * k + 6309940 := by
    unfold C
    simp [show (30233088 * k + 12619880) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6309940) = 7558272 * k + 3154970 := by
    unfold C
    simp [show (15116544 * k + 6309940) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3154970) = 3779136 * k + 1577485 := by
    unfold C
    simp [show (7558272 * k + 3154970) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1577485) = 11337408 * k + 4732456 := by
    unfold C
    simp [show (3779136 * k + 1577485) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4732456) = 5668704 * k + 2366228 := by
    unfold C
    simp [show (11337408 * k + 4732456) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2366228) = 2834352 * k + 1183114 := by
    unfold C
    simp [show (5668704 * k + 2366228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1183114) = 1417176 * k + 591557 := by
    unfold C
    simp [show (2834352 * k + 1183114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 591557) = 4251528 * k + 1774672 := by
    unfold C
    simp [show (1417176 * k + 591557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1774672) = 2125764 * k + 887336 := by
    unfold C
    simp [show (4251528 * k + 1774672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 887336) = 1062882 * k + 443668 := by
    unfold C
    simp [show (2125764 * k + 887336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443668) = 531441 * k + 221834 := by
    unfold C
    simp [show (1062882 * k + 443668) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 437695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 437695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_437807 : ∀ k : Nat,
    iterate (1048576 * k + 437807) 32 = 531441 * k + 221891 ∧
      531441 * k + 221891 < 1048576 * k + 437807 := by
  intro k
  have h1 : C (1048576 * k + 437807) = 3145728 * k + 1313422 := by
    unfold C
    simp [show (1048576 * k + 437807) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1313422) = 1572864 * k + 656711 := by
    unfold C
    simp [show (3145728 * k + 1313422) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 656711) = 4718592 * k + 1970134 := by
    unfold C
    simp [show (1572864 * k + 656711) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1970134) = 2359296 * k + 985067 := by
    unfold C
    simp [show (4718592 * k + 1970134) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 985067) = 7077888 * k + 2955202 := by
    unfold C
    simp [show (2359296 * k + 985067) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2955202) = 3538944 * k + 1477601 := by
    unfold C
    simp [show (7077888 * k + 2955202) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1477601) = 10616832 * k + 4432804 := by
    unfold C
    simp [show (3538944 * k + 1477601) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4432804) = 5308416 * k + 2216402 := by
    unfold C
    simp [show (10616832 * k + 4432804) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2216402) = 2654208 * k + 1108201 := by
    unfold C
    simp [show (5308416 * k + 2216402) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1108201) = 7962624 * k + 3324604 := by
    unfold C
    simp [show (2654208 * k + 1108201) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3324604) = 3981312 * k + 1662302 := by
    unfold C
    simp [show (7962624 * k + 3324604) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1662302) = 1990656 * k + 831151 := by
    unfold C
    simp [show (3981312 * k + 1662302) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 831151) = 5971968 * k + 2493454 := by
    unfold C
    simp [show (1990656 * k + 831151) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2493454) = 2985984 * k + 1246727 := by
    unfold C
    simp [show (5971968 * k + 2493454) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1246727) = 8957952 * k + 3740182 := by
    unfold C
    simp [show (2985984 * k + 1246727) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3740182) = 4478976 * k + 1870091 := by
    unfold C
    simp [show (8957952 * k + 3740182) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1870091) = 13436928 * k + 5610274 := by
    unfold C
    simp [show (4478976 * k + 1870091) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5610274) = 6718464 * k + 2805137 := by
    unfold C
    simp [show (13436928 * k + 5610274) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2805137) = 20155392 * k + 8415412 := by
    unfold C
    simp [show (6718464 * k + 2805137) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8415412) = 10077696 * k + 4207706 := by
    unfold C
    simp [show (20155392 * k + 8415412) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4207706) = 5038848 * k + 2103853 := by
    unfold C
    simp [show (10077696 * k + 4207706) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2103853) = 15116544 * k + 6311560 := by
    unfold C
    simp [show (5038848 * k + 2103853) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6311560) = 7558272 * k + 3155780 := by
    unfold C
    simp [show (15116544 * k + 6311560) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3155780) = 3779136 * k + 1577890 := by
    unfold C
    simp [show (7558272 * k + 3155780) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1577890) = 1889568 * k + 788945 := by
    unfold C
    simp [show (3779136 * k + 1577890) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 788945) = 5668704 * k + 2366836 := by
    unfold C
    simp [show (1889568 * k + 788945) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 2366836) = 2834352 * k + 1183418 := by
    unfold C
    simp [show (5668704 * k + 2366836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1183418) = 1417176 * k + 591709 := by
    unfold C
    simp [show (2834352 * k + 1183418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 591709) = 4251528 * k + 1775128 := by
    unfold C
    simp [show (1417176 * k + 591709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1775128) = 2125764 * k + 887564 := by
    unfold C
    simp [show (4251528 * k + 1775128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 887564) = 1062882 * k + 443782 := by
    unfold C
    simp [show (2125764 * k + 887564) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443782) = 531441 * k + 221891 := by
    unfold C
    simp [show (1062882 * k + 443782) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 437807) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 437807)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_437967 : ∀ k : Nat,
    iterate (1048576 * k + 437967) 32 = 531441 * k + 221972 ∧
      531441 * k + 221972 < 1048576 * k + 437967 := by
  intro k
  have h1 : C (1048576 * k + 437967) = 3145728 * k + 1313902 := by
    unfold C
    simp [show (1048576 * k + 437967) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1313902) = 1572864 * k + 656951 := by
    unfold C
    simp [show (3145728 * k + 1313902) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 656951) = 4718592 * k + 1970854 := by
    unfold C
    simp [show (1572864 * k + 656951) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1970854) = 2359296 * k + 985427 := by
    unfold C
    simp [show (4718592 * k + 1970854) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 985427) = 7077888 * k + 2956282 := by
    unfold C
    simp [show (2359296 * k + 985427) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2956282) = 3538944 * k + 1478141 := by
    unfold C
    simp [show (7077888 * k + 2956282) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1478141) = 10616832 * k + 4434424 := by
    unfold C
    simp [show (3538944 * k + 1478141) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4434424) = 5308416 * k + 2217212 := by
    unfold C
    simp [show (10616832 * k + 4434424) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2217212) = 2654208 * k + 1108606 := by
    unfold C
    simp [show (5308416 * k + 2217212) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1108606) = 1327104 * k + 554303 := by
    unfold C
    simp [show (2654208 * k + 1108606) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 554303) = 3981312 * k + 1662910 := by
    unfold C
    simp [show (1327104 * k + 554303) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1662910) = 1990656 * k + 831455 := by
    unfold C
    simp [show (3981312 * k + 1662910) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 831455) = 5971968 * k + 2494366 := by
    unfold C
    simp [show (1990656 * k + 831455) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2494366) = 2985984 * k + 1247183 := by
    unfold C
    simp [show (5971968 * k + 2494366) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1247183) = 8957952 * k + 3741550 := by
    unfold C
    simp [show (2985984 * k + 1247183) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3741550) = 4478976 * k + 1870775 := by
    unfold C
    simp [show (8957952 * k + 3741550) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1870775) = 13436928 * k + 5612326 := by
    unfold C
    simp [show (4478976 * k + 1870775) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5612326) = 6718464 * k + 2806163 := by
    unfold C
    simp [show (13436928 * k + 5612326) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2806163) = 20155392 * k + 8418490 := by
    unfold C
    simp [show (6718464 * k + 2806163) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8418490) = 10077696 * k + 4209245 := by
    unfold C
    simp [show (20155392 * k + 8418490) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4209245) = 30233088 * k + 12627736 := by
    unfold C
    simp [show (10077696 * k + 4209245) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12627736) = 15116544 * k + 6313868 := by
    unfold C
    simp [show (30233088 * k + 12627736) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6313868) = 7558272 * k + 3156934 := by
    unfold C
    simp [show (15116544 * k + 6313868) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3156934) = 3779136 * k + 1578467 := by
    unfold C
    simp [show (7558272 * k + 3156934) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1578467) = 11337408 * k + 4735402 := by
    unfold C
    simp [show (3779136 * k + 1578467) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4735402) = 5668704 * k + 2367701 := by
    unfold C
    simp [show (11337408 * k + 4735402) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2367701) = 17006112 * k + 7103104 := by
    unfold C
    simp [show (5668704 * k + 2367701) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 7103104) = 8503056 * k + 3551552 := by
    unfold C
    simp [show (17006112 * k + 7103104) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3551552) = 4251528 * k + 1775776 := by
    unfold C
    simp [show (8503056 * k + 3551552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1775776) = 2125764 * k + 887888 := by
    unfold C
    simp [show (4251528 * k + 1775776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 887888) = 1062882 * k + 443944 := by
    unfold C
    simp [show (2125764 * k + 887888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443944) = 531441 * k + 221972 := by
    unfold C
    simp [show (1062882 * k + 443944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 437967) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 437967)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_438015 : ∀ k : Nat,
    iterate (1048576 * k + 438015) 32 = 531441 * k + 221996 ∧
      531441 * k + 221996 < 1048576 * k + 438015 := by
  intro k
  have h1 : C (1048576 * k + 438015) = 3145728 * k + 1314046 := by
    unfold C
    simp [show (1048576 * k + 438015) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1314046) = 1572864 * k + 657023 := by
    unfold C
    simp [show (3145728 * k + 1314046) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 657023) = 4718592 * k + 1971070 := by
    unfold C
    simp [show (1572864 * k + 657023) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1971070) = 2359296 * k + 985535 := by
    unfold C
    simp [show (4718592 * k + 1971070) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 985535) = 7077888 * k + 2956606 := by
    unfold C
    simp [show (2359296 * k + 985535) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2956606) = 3538944 * k + 1478303 := by
    unfold C
    simp [show (7077888 * k + 2956606) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1478303) = 10616832 * k + 4434910 := by
    unfold C
    simp [show (3538944 * k + 1478303) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4434910) = 5308416 * k + 2217455 := by
    unfold C
    simp [show (10616832 * k + 4434910) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2217455) = 15925248 * k + 6652366 := by
    unfold C
    simp [show (5308416 * k + 2217455) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6652366) = 7962624 * k + 3326183 := by
    unfold C
    simp [show (15925248 * k + 6652366) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3326183) = 23887872 * k + 9978550 := by
    unfold C
    simp [show (7962624 * k + 3326183) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 9978550) = 11943936 * k + 4989275 := by
    unfold C
    simp [show (23887872 * k + 9978550) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 4989275) = 35831808 * k + 14967826 := by
    unfold C
    simp [show (11943936 * k + 4989275) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 14967826) = 17915904 * k + 7483913 := by
    unfold C
    simp [show (35831808 * k + 14967826) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7483913) = 53747712 * k + 22451740 := by
    unfold C
    simp [show (17915904 * k + 7483913) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 22451740) = 26873856 * k + 11225870 := by
    unfold C
    simp [show (53747712 * k + 22451740) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11225870) = 13436928 * k + 5612935 := by
    unfold C
    simp [show (26873856 * k + 11225870) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5612935) = 40310784 * k + 16838806 := by
    unfold C
    simp [show (13436928 * k + 5612935) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16838806) = 20155392 * k + 8419403 := by
    unfold C
    simp [show (40310784 * k + 16838806) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8419403) = 60466176 * k + 25258210 := by
    unfold C
    simp [show (20155392 * k + 8419403) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 25258210) = 30233088 * k + 12629105 := by
    unfold C
    simp [show (60466176 * k + 25258210) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 12629105) = 90699264 * k + 37887316 := by
    unfold C
    simp [show (30233088 * k + 12629105) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 37887316) = 45349632 * k + 18943658 := by
    unfold C
    simp [show (90699264 * k + 37887316) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 18943658) = 22674816 * k + 9471829 := by
    unfold C
    simp [show (45349632 * k + 18943658) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9471829) = 68024448 * k + 28415488 := by
    unfold C
    simp [show (22674816 * k + 9471829) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 28415488) = 34012224 * k + 14207744 := by
    unfold C
    simp [show (68024448 * k + 28415488) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 14207744) = 17006112 * k + 7103872 := by
    unfold C
    simp [show (34012224 * k + 14207744) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7103872) = 8503056 * k + 3551936 := by
    unfold C
    simp [show (17006112 * k + 7103872) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3551936) = 4251528 * k + 1775968 := by
    unfold C
    simp [show (8503056 * k + 3551936) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1775968) = 2125764 * k + 887984 := by
    unfold C
    simp [show (4251528 * k + 1775968) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 887984) = 1062882 * k + 443992 := by
    unfold C
    simp [show (2125764 * k + 887984) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 443992) = 531441 * k + 221996 := by
    unfold C
    simp [show (1062882 * k + 443992) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 438015) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 438015)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_438831 : ∀ k : Nat,
    iterate (1048576 * k + 438831) 32 = 531441 * k + 222410 ∧
      531441 * k + 222410 < 1048576 * k + 438831 := by
  intro k
  have h1 : C (1048576 * k + 438831) = 3145728 * k + 1316494 := by
    unfold C
    simp [show (1048576 * k + 438831) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1316494) = 1572864 * k + 658247 := by
    unfold C
    simp [show (3145728 * k + 1316494) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 658247) = 4718592 * k + 1974742 := by
    unfold C
    simp [show (1572864 * k + 658247) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1974742) = 2359296 * k + 987371 := by
    unfold C
    simp [show (4718592 * k + 1974742) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 987371) = 7077888 * k + 2962114 := by
    unfold C
    simp [show (2359296 * k + 987371) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2962114) = 3538944 * k + 1481057 := by
    unfold C
    simp [show (7077888 * k + 2962114) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1481057) = 10616832 * k + 4443172 := by
    unfold C
    simp [show (3538944 * k + 1481057) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4443172) = 5308416 * k + 2221586 := by
    unfold C
    simp [show (10616832 * k + 4443172) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2221586) = 2654208 * k + 1110793 := by
    unfold C
    simp [show (5308416 * k + 2221586) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 1110793) = 7962624 * k + 3332380 := by
    unfold C
    simp [show (2654208 * k + 1110793) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 3332380) = 3981312 * k + 1666190 := by
    unfold C
    simp [show (7962624 * k + 3332380) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1666190) = 1990656 * k + 833095 := by
    unfold C
    simp [show (3981312 * k + 1666190) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 833095) = 5971968 * k + 2499286 := by
    unfold C
    simp [show (1990656 * k + 833095) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 2499286) = 2985984 * k + 1249643 := by
    unfold C
    simp [show (5971968 * k + 2499286) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 1249643) = 8957952 * k + 3748930 := by
    unfold C
    simp [show (2985984 * k + 1249643) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 3748930) = 4478976 * k + 1874465 := by
    unfold C
    simp [show (8957952 * k + 3748930) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1874465) = 13436928 * k + 5623396 := by
    unfold C
    simp [show (4478976 * k + 1874465) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5623396) = 6718464 * k + 2811698 := by
    unfold C
    simp [show (13436928 * k + 5623396) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2811698) = 3359232 * k + 1405849 := by
    unfold C
    simp [show (6718464 * k + 2811698) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 1405849) = 10077696 * k + 4217548 := by
    unfold C
    simp [show (3359232 * k + 1405849) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 4217548) = 5038848 * k + 2108774 := by
    unfold C
    simp [show (10077696 * k + 4217548) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2108774) = 2519424 * k + 1054387 := by
    unfold C
    simp [show (5038848 * k + 2108774) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 1054387) = 7558272 * k + 3163162 := by
    unfold C
    simp [show (2519424 * k + 1054387) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 3163162) = 3779136 * k + 1581581 := by
    unfold C
    simp [show (7558272 * k + 3163162) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 1581581) = 11337408 * k + 4744744 := by
    unfold C
    simp [show (3779136 * k + 1581581) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 4744744) = 5668704 * k + 2372372 := by
    unfold C
    simp [show (11337408 * k + 4744744) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2372372) = 2834352 * k + 1186186 := by
    unfold C
    simp [show (5668704 * k + 2372372) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1186186) = 1417176 * k + 593093 := by
    unfold C
    simp [show (2834352 * k + 1186186) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 593093) = 4251528 * k + 1779280 := by
    unfold C
    simp [show (1417176 * k + 593093) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1779280) = 2125764 * k + 889640 := by
    unfold C
    simp [show (4251528 * k + 1779280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 889640) = 1062882 * k + 444820 := by
    unfold C
    simp [show (2125764 * k + 889640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 444820) = 531441 * k + 222410 := by
    unfold C
    simp [show (1062882 * k + 444820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 438831) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 438831)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_439039 : ∀ k : Nat,
    iterate (1048576 * k + 439039) 32 = 531441 * k + 222515 ∧
      531441 * k + 222515 < 1048576 * k + 439039 := by
  intro k
  have h1 : C (1048576 * k + 439039) = 3145728 * k + 1317118 := by
    unfold C
    simp [show (1048576 * k + 439039) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1317118) = 1572864 * k + 658559 := by
    unfold C
    simp [show (3145728 * k + 1317118) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 658559) = 4718592 * k + 1975678 := by
    unfold C
    simp [show (1572864 * k + 658559) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1975678) = 2359296 * k + 987839 := by
    unfold C
    simp [show (4718592 * k + 1975678) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 987839) = 7077888 * k + 2963518 := by
    unfold C
    simp [show (2359296 * k + 987839) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2963518) = 3538944 * k + 1481759 := by
    unfold C
    simp [show (7077888 * k + 2963518) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1481759) = 10616832 * k + 4445278 := by
    unfold C
    simp [show (3538944 * k + 1481759) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4445278) = 5308416 * k + 2222639 := by
    unfold C
    simp [show (10616832 * k + 4445278) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2222639) = 15925248 * k + 6667918 := by
    unfold C
    simp [show (5308416 * k + 2222639) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6667918) = 7962624 * k + 3333959 := by
    unfold C
    simp [show (15925248 * k + 6667918) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3333959) = 23887872 * k + 10001878 := by
    unfold C
    simp [show (7962624 * k + 3333959) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10001878) = 11943936 * k + 5000939 := by
    unfold C
    simp [show (23887872 * k + 10001878) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5000939) = 35831808 * k + 15002818 := by
    unfold C
    simp [show (11943936 * k + 5000939) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15002818) = 17915904 * k + 7501409 := by
    unfold C
    simp [show (35831808 * k + 15002818) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7501409) = 53747712 * k + 22504228 := by
    unfold C
    simp [show (17915904 * k + 7501409) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 22504228) = 26873856 * k + 11252114 := by
    unfold C
    simp [show (53747712 * k + 22504228) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 11252114) = 13436928 * k + 5626057 := by
    unfold C
    simp [show (26873856 * k + 11252114) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 5626057) = 40310784 * k + 16878172 := by
    unfold C
    simp [show (13436928 * k + 5626057) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 16878172) = 20155392 * k + 8439086 := by
    unfold C
    simp [show (40310784 * k + 16878172) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 8439086) = 10077696 * k + 4219543 := by
    unfold C
    simp [show (20155392 * k + 8439086) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4219543) = 30233088 * k + 12658630 := by
    unfold C
    simp [show (10077696 * k + 4219543) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 12658630) = 15116544 * k + 6329315 := by
    unfold C
    simp [show (30233088 * k + 12658630) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 6329315) = 45349632 * k + 18987946 := by
    unfold C
    simp [show (15116544 * k + 6329315) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 18987946) = 22674816 * k + 9493973 := by
    unfold C
    simp [show (45349632 * k + 18987946) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 9493973) = 68024448 * k + 28481920 := by
    unfold C
    simp [show (22674816 * k + 9493973) % 2 ≠ 0 by omega]
    omega
  have h26 : C (68024448 * k + 28481920) = 34012224 * k + 14240960 := by
    unfold C
    simp [show (68024448 * k + 28481920) % 2 = 0 by omega]
    omega
  have h27 : C (34012224 * k + 14240960) = 17006112 * k + 7120480 := by
    unfold C
    simp [show (34012224 * k + 14240960) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 7120480) = 8503056 * k + 3560240 := by
    unfold C
    simp [show (17006112 * k + 7120480) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 3560240) = 4251528 * k + 1780120 := by
    unfold C
    simp [show (8503056 * k + 3560240) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1780120) = 2125764 * k + 890060 := by
    unfold C
    simp [show (4251528 * k + 1780120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 890060) = 1062882 * k + 445030 := by
    unfold C
    simp [show (2125764 * k + 890060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 445030) = 531441 * k + 222515 := by
    unfold C
    simp [show (1062882 * k + 445030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 439039) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 439039)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_439167 : ∀ k : Nat,
    iterate (1048576 * k + 439167) 32 = 531441 * k + 222580 ∧
      531441 * k + 222580 < 1048576 * k + 439167 := by
  intro k
  have h1 : C (1048576 * k + 439167) = 3145728 * k + 1317502 := by
    unfold C
    simp [show (1048576 * k + 439167) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 1317502) = 1572864 * k + 658751 := by
    unfold C
    simp [show (3145728 * k + 1317502) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 658751) = 4718592 * k + 1976254 := by
    unfold C
    simp [show (1572864 * k + 658751) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1976254) = 2359296 * k + 988127 := by
    unfold C
    simp [show (4718592 * k + 1976254) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 988127) = 7077888 * k + 2964382 := by
    unfold C
    simp [show (2359296 * k + 988127) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 2964382) = 3538944 * k + 1482191 := by
    unfold C
    simp [show (7077888 * k + 2964382) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 1482191) = 10616832 * k + 4446574 := by
    unfold C
    simp [show (3538944 * k + 1482191) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 4446574) = 5308416 * k + 2223287 := by
    unfold C
    simp [show (10616832 * k + 4446574) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 2223287) = 15925248 * k + 6669862 := by
    unfold C
    simp [show (5308416 * k + 2223287) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 6669862) = 7962624 * k + 3334931 := by
    unfold C
    simp [show (15925248 * k + 6669862) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 3334931) = 23887872 * k + 10004794 := by
    unfold C
    simp [show (7962624 * k + 3334931) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 10004794) = 11943936 * k + 5002397 := by
    unfold C
    simp [show (23887872 * k + 10004794) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 5002397) = 35831808 * k + 15007192 := by
    unfold C
    simp [show (11943936 * k + 5002397) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 15007192) = 17915904 * k + 7503596 := by
    unfold C
    simp [show (35831808 * k + 15007192) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 7503596) = 8957952 * k + 3751798 := by
    unfold C
    simp [show (17915904 * k + 7503596) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 3751798) = 4478976 * k + 1875899 := by
    unfold C
    simp [show (8957952 * k + 3751798) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1875899) = 13436928 * k + 5627698 := by
    unfold C
    simp [show (4478976 * k + 1875899) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 5627698) = 6718464 * k + 2813849 := by
    unfold C
    simp [show (13436928 * k + 5627698) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 2813849) = 20155392 * k + 8441548 := by
    unfold C
    simp [show (6718464 * k + 2813849) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 8441548) = 10077696 * k + 4220774 := by
    unfold C
    simp [show (20155392 * k + 8441548) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 4220774) = 5038848 * k + 2110387 := by
    unfold C
    simp [show (10077696 * k + 4220774) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 2110387) = 15116544 * k + 6331162 := by
    unfold C
    simp [show (5038848 * k + 2110387) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 6331162) = 7558272 * k + 3165581 := by
    unfold C
    simp [show (15116544 * k + 6331162) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 3165581) = 22674816 * k + 9496744 := by
    unfold C
    simp [show (7558272 * k + 3165581) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 9496744) = 11337408 * k + 4748372 := by
    unfold C
    simp [show (22674816 * k + 9496744) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 4748372) = 5668704 * k + 2374186 := by
    unfold C
    simp [show (11337408 * k + 4748372) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 2374186) = 2834352 * k + 1187093 := by
    unfold C
    simp [show (5668704 * k + 2374186) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 1187093) = 8503056 * k + 3561280 := by
    unfold C
    simp [show (2834352 * k + 1187093) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 3561280) = 4251528 * k + 1780640 := by
    unfold C
    simp [show (8503056 * k + 3561280) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1780640) = 2125764 * k + 890320 := by
    unfold C
    simp [show (4251528 * k + 1780640) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 890320) = 1062882 * k + 445160 := by
    unfold C
    simp [show (2125764 * k + 890320) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 445160) = 531441 * k + 222580 := by
    unfold C
    simp [show (1062882 * k + 445160) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 439167) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 439167)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard055
