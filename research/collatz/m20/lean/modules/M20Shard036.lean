import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard036

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_262939 : ∀ k : Nat,
    iterate (1048576 * k + 262939) 32 = 531441 * k + 133264 ∧
      531441 * k + 133264 < 1048576 * k + 262939 := by
  intro k
  have h1 : C (1048576 * k + 262939) = 3145728 * k + 788818 := by
    unfold C
    simp [show (1048576 * k + 262939) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 788818) = 1572864 * k + 394409 := by
    unfold C
    simp [show (3145728 * k + 788818) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 394409) = 4718592 * k + 1183228 := by
    unfold C
    simp [show (1572864 * k + 394409) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1183228) = 2359296 * k + 591614 := by
    unfold C
    simp [show (4718592 * k + 1183228) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 591614) = 1179648 * k + 295807 := by
    unfold C
    simp [show (2359296 * k + 591614) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 295807) = 3538944 * k + 887422 := by
    unfold C
    simp [show (1179648 * k + 295807) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 887422) = 1769472 * k + 443711 := by
    unfold C
    simp [show (3538944 * k + 887422) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 443711) = 5308416 * k + 1331134 := by
    unfold C
    simp [show (1769472 * k + 443711) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1331134) = 2654208 * k + 665567 := by
    unfold C
    simp [show (5308416 * k + 1331134) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 665567) = 7962624 * k + 1996702 := by
    unfold C
    simp [show (2654208 * k + 665567) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 1996702) = 3981312 * k + 998351 := by
    unfold C
    simp [show (7962624 * k + 1996702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 998351) = 11943936 * k + 2995054 := by
    unfold C
    simp [show (3981312 * k + 998351) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2995054) = 5971968 * k + 1497527 := by
    unfold C
    simp [show (11943936 * k + 2995054) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1497527) = 17915904 * k + 4492582 := by
    unfold C
    simp [show (5971968 * k + 1497527) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4492582) = 8957952 * k + 2246291 := by
    unfold C
    simp [show (17915904 * k + 4492582) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2246291) = 26873856 * k + 6738874 := by
    unfold C
    simp [show (8957952 * k + 2246291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6738874) = 13436928 * k + 3369437 := by
    unfold C
    simp [show (26873856 * k + 6738874) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3369437) = 40310784 * k + 10108312 := by
    unfold C
    simp [show (13436928 * k + 3369437) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10108312) = 20155392 * k + 5054156 := by
    unfold C
    simp [show (40310784 * k + 10108312) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5054156) = 10077696 * k + 2527078 := by
    unfold C
    simp [show (20155392 * k + 5054156) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2527078) = 5038848 * k + 1263539 := by
    unfold C
    simp [show (10077696 * k + 2527078) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1263539) = 15116544 * k + 3790618 := by
    unfold C
    simp [show (5038848 * k + 1263539) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3790618) = 7558272 * k + 1895309 := by
    unfold C
    simp [show (15116544 * k + 3790618) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1895309) = 22674816 * k + 5685928 := by
    unfold C
    simp [show (7558272 * k + 1895309) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 5685928) = 11337408 * k + 2842964 := by
    unfold C
    simp [show (22674816 * k + 5685928) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2842964) = 5668704 * k + 1421482 := by
    unfold C
    simp [show (11337408 * k + 2842964) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1421482) = 2834352 * k + 710741 := by
    unfold C
    simp [show (5668704 * k + 1421482) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 710741) = 8503056 * k + 2132224 := by
    unfold C
    simp [show (2834352 * k + 710741) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2132224) = 4251528 * k + 1066112 := by
    unfold C
    simp [show (8503056 * k + 2132224) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1066112) = 2125764 * k + 533056 := by
    unfold C
    simp [show (4251528 * k + 1066112) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 533056) = 1062882 * k + 266528 := by
    unfold C
    simp [show (2125764 * k + 533056) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 266528) = 531441 * k + 133264 := by
    unfold C
    simp [show (1062882 * k + 266528) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 262939) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 262939)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_263071 : ∀ k : Nat,
    iterate (1048576 * k + 263071) 32 = 531441 * k + 133331 ∧
      531441 * k + 133331 < 1048576 * k + 263071 := by
  intro k
  have h1 : C (1048576 * k + 263071) = 3145728 * k + 789214 := by
    unfold C
    simp [show (1048576 * k + 263071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 789214) = 1572864 * k + 394607 := by
    unfold C
    simp [show (3145728 * k + 789214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 394607) = 4718592 * k + 1183822 := by
    unfold C
    simp [show (1572864 * k + 394607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1183822) = 2359296 * k + 591911 := by
    unfold C
    simp [show (4718592 * k + 1183822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 591911) = 7077888 * k + 1775734 := by
    unfold C
    simp [show (2359296 * k + 591911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1775734) = 3538944 * k + 887867 := by
    unfold C
    simp [show (7077888 * k + 1775734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 887867) = 10616832 * k + 2663602 := by
    unfold C
    simp [show (3538944 * k + 887867) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2663602) = 5308416 * k + 1331801 := by
    unfold C
    simp [show (10616832 * k + 2663602) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1331801) = 15925248 * k + 3995404 := by
    unfold C
    simp [show (5308416 * k + 1331801) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 3995404) = 7962624 * k + 1997702 := by
    unfold C
    simp [show (15925248 * k + 3995404) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 1997702) = 3981312 * k + 998851 := by
    unfold C
    simp [show (7962624 * k + 1997702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 998851) = 11943936 * k + 2996554 := by
    unfold C
    simp [show (3981312 * k + 998851) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 2996554) = 5971968 * k + 1498277 := by
    unfold C
    simp [show (11943936 * k + 2996554) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1498277) = 17915904 * k + 4494832 := by
    unfold C
    simp [show (5971968 * k + 1498277) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4494832) = 8957952 * k + 2247416 := by
    unfold C
    simp [show (17915904 * k + 4494832) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2247416) = 4478976 * k + 1123708 := by
    unfold C
    simp [show (8957952 * k + 2247416) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1123708) = 2239488 * k + 561854 := by
    unfold C
    simp [show (4478976 * k + 1123708) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 561854) = 1119744 * k + 280927 := by
    unfold C
    simp [show (2239488 * k + 561854) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 280927) = 3359232 * k + 842782 := by
    unfold C
    simp [show (1119744 * k + 280927) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 842782) = 1679616 * k + 421391 := by
    unfold C
    simp [show (3359232 * k + 842782) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 421391) = 5038848 * k + 1264174 := by
    unfold C
    simp [show (1679616 * k + 421391) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1264174) = 2519424 * k + 632087 := by
    unfold C
    simp [show (5038848 * k + 1264174) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 632087) = 7558272 * k + 1896262 := by
    unfold C
    simp [show (2519424 * k + 632087) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1896262) = 3779136 * k + 948131 := by
    unfold C
    simp [show (7558272 * k + 1896262) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 948131) = 11337408 * k + 2844394 := by
    unfold C
    simp [show (3779136 * k + 948131) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2844394) = 5668704 * k + 1422197 := by
    unfold C
    simp [show (11337408 * k + 2844394) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1422197) = 17006112 * k + 4266592 := by
    unfold C
    simp [show (5668704 * k + 1422197) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 4266592) = 8503056 * k + 2133296 := by
    unfold C
    simp [show (17006112 * k + 4266592) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 2133296) = 4251528 * k + 1066648 := by
    unfold C
    simp [show (8503056 * k + 2133296) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1066648) = 2125764 * k + 533324 := by
    unfold C
    simp [show (4251528 * k + 1066648) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 533324) = 1062882 * k + 266662 := by
    unfold C
    simp [show (2125764 * k + 533324) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 266662) = 531441 * k + 133331 := by
    unfold C
    simp [show (1062882 * k + 266662) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 263071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 263071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_263631 : ∀ k : Nat,
    iterate (1048576 * k + 263631) 32 = 531441 * k + 133615 ∧
      531441 * k + 133615 < 1048576 * k + 263631 := by
  intro k
  have h1 : C (1048576 * k + 263631) = 3145728 * k + 790894 := by
    unfold C
    simp [show (1048576 * k + 263631) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 790894) = 1572864 * k + 395447 := by
    unfold C
    simp [show (3145728 * k + 790894) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 395447) = 4718592 * k + 1186342 := by
    unfold C
    simp [show (1572864 * k + 395447) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1186342) = 2359296 * k + 593171 := by
    unfold C
    simp [show (4718592 * k + 1186342) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 593171) = 7077888 * k + 1779514 := by
    unfold C
    simp [show (2359296 * k + 593171) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1779514) = 3538944 * k + 889757 := by
    unfold C
    simp [show (7077888 * k + 1779514) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 889757) = 10616832 * k + 2669272 := by
    unfold C
    simp [show (3538944 * k + 889757) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2669272) = 5308416 * k + 1334636 := by
    unfold C
    simp [show (10616832 * k + 2669272) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1334636) = 2654208 * k + 667318 := by
    unfold C
    simp [show (5308416 * k + 1334636) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 667318) = 1327104 * k + 333659 := by
    unfold C
    simp [show (2654208 * k + 667318) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 333659) = 3981312 * k + 1000978 := by
    unfold C
    simp [show (1327104 * k + 333659) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1000978) = 1990656 * k + 500489 := by
    unfold C
    simp [show (3981312 * k + 1000978) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 500489) = 5971968 * k + 1501468 := by
    unfold C
    simp [show (1990656 * k + 500489) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1501468) = 2985984 * k + 750734 := by
    unfold C
    simp [show (5971968 * k + 1501468) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 750734) = 1492992 * k + 375367 := by
    unfold C
    simp [show (2985984 * k + 750734) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 375367) = 4478976 * k + 1126102 := by
    unfold C
    simp [show (1492992 * k + 375367) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1126102) = 2239488 * k + 563051 := by
    unfold C
    simp [show (4478976 * k + 1126102) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 563051) = 6718464 * k + 1689154 := by
    unfold C
    simp [show (2239488 * k + 563051) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1689154) = 3359232 * k + 844577 := by
    unfold C
    simp [show (6718464 * k + 1689154) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 844577) = 10077696 * k + 2533732 := by
    unfold C
    simp [show (3359232 * k + 844577) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2533732) = 5038848 * k + 1266866 := by
    unfold C
    simp [show (10077696 * k + 2533732) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1266866) = 2519424 * k + 633433 := by
    unfold C
    simp [show (5038848 * k + 1266866) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 633433) = 7558272 * k + 1900300 := by
    unfold C
    simp [show (2519424 * k + 633433) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1900300) = 3779136 * k + 950150 := by
    unfold C
    simp [show (7558272 * k + 1900300) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 950150) = 1889568 * k + 475075 := by
    unfold C
    simp [show (3779136 * k + 950150) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 475075) = 5668704 * k + 1425226 := by
    unfold C
    simp [show (1889568 * k + 475075) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1425226) = 2834352 * k + 712613 := by
    unfold C
    simp [show (5668704 * k + 1425226) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 712613) = 8503056 * k + 2137840 := by
    unfold C
    simp [show (2834352 * k + 712613) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2137840) = 4251528 * k + 1068920 := by
    unfold C
    simp [show (8503056 * k + 2137840) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1068920) = 2125764 * k + 534460 := by
    unfold C
    simp [show (4251528 * k + 1068920) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 534460) = 1062882 * k + 267230 := by
    unfold C
    simp [show (2125764 * k + 534460) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 267230) = 531441 * k + 133615 := by
    unfold C
    simp [show (1062882 * k + 267230) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 263631) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 263631)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_263839 : ∀ k : Nat,
    iterate (1048576 * k + 263839) 32 = 531441 * k + 133720 ∧
      531441 * k + 133720 < 1048576 * k + 263839 := by
  intro k
  have h1 : C (1048576 * k + 263839) = 3145728 * k + 791518 := by
    unfold C
    simp [show (1048576 * k + 263839) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 791518) = 1572864 * k + 395759 := by
    unfold C
    simp [show (3145728 * k + 791518) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 395759) = 4718592 * k + 1187278 := by
    unfold C
    simp [show (1572864 * k + 395759) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1187278) = 2359296 * k + 593639 := by
    unfold C
    simp [show (4718592 * k + 1187278) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 593639) = 7077888 * k + 1780918 := by
    unfold C
    simp [show (2359296 * k + 593639) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1780918) = 3538944 * k + 890459 := by
    unfold C
    simp [show (7077888 * k + 1780918) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 890459) = 10616832 * k + 2671378 := by
    unfold C
    simp [show (3538944 * k + 890459) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2671378) = 5308416 * k + 1335689 := by
    unfold C
    simp [show (10616832 * k + 2671378) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1335689) = 15925248 * k + 4007068 := by
    unfold C
    simp [show (5308416 * k + 1335689) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4007068) = 7962624 * k + 2003534 := by
    unfold C
    simp [show (15925248 * k + 4007068) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2003534) = 3981312 * k + 1001767 := by
    unfold C
    simp [show (7962624 * k + 2003534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1001767) = 11943936 * k + 3005302 := by
    unfold C
    simp [show (3981312 * k + 1001767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3005302) = 5971968 * k + 1502651 := by
    unfold C
    simp [show (11943936 * k + 3005302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1502651) = 17915904 * k + 4507954 := by
    unfold C
    simp [show (5971968 * k + 1502651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4507954) = 8957952 * k + 2253977 := by
    unfold C
    simp [show (17915904 * k + 4507954) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2253977) = 26873856 * k + 6761932 := by
    unfold C
    simp [show (8957952 * k + 2253977) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6761932) = 13436928 * k + 3380966 := by
    unfold C
    simp [show (26873856 * k + 6761932) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3380966) = 6718464 * k + 1690483 := by
    unfold C
    simp [show (13436928 * k + 3380966) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1690483) = 20155392 * k + 5071450 := by
    unfold C
    simp [show (6718464 * k + 1690483) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5071450) = 10077696 * k + 2535725 := by
    unfold C
    simp [show (20155392 * k + 5071450) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2535725) = 30233088 * k + 7607176 := by
    unfold C
    simp [show (10077696 * k + 2535725) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7607176) = 15116544 * k + 3803588 := by
    unfold C
    simp [show (30233088 * k + 7607176) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3803588) = 7558272 * k + 1901794 := by
    unfold C
    simp [show (15116544 * k + 3803588) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1901794) = 3779136 * k + 950897 := by
    unfold C
    simp [show (7558272 * k + 1901794) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 950897) = 11337408 * k + 2852692 := by
    unfold C
    simp [show (3779136 * k + 950897) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2852692) = 5668704 * k + 1426346 := by
    unfold C
    simp [show (11337408 * k + 2852692) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1426346) = 2834352 * k + 713173 := by
    unfold C
    simp [show (5668704 * k + 1426346) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 713173) = 8503056 * k + 2139520 := by
    unfold C
    simp [show (2834352 * k + 713173) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2139520) = 4251528 * k + 1069760 := by
    unfold C
    simp [show (8503056 * k + 2139520) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1069760) = 2125764 * k + 534880 := by
    unfold C
    simp [show (4251528 * k + 1069760) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 534880) = 1062882 * k + 267440 := by
    unfold C
    simp [show (2125764 * k + 534880) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 267440) = 531441 * k + 133720 := by
    unfold C
    simp [show (1062882 * k + 267440) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 263839) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 263839)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_264095 : ∀ k : Nat,
    iterate (1048576 * k + 264095) 32 = 531441 * k + 133850 ∧
      531441 * k + 133850 < 1048576 * k + 264095 := by
  intro k
  have h1 : C (1048576 * k + 264095) = 3145728 * k + 792286 := by
    unfold C
    simp [show (1048576 * k + 264095) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 792286) = 1572864 * k + 396143 := by
    unfold C
    simp [show (3145728 * k + 792286) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 396143) = 4718592 * k + 1188430 := by
    unfold C
    simp [show (1572864 * k + 396143) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1188430) = 2359296 * k + 594215 := by
    unfold C
    simp [show (4718592 * k + 1188430) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 594215) = 7077888 * k + 1782646 := by
    unfold C
    simp [show (2359296 * k + 594215) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1782646) = 3538944 * k + 891323 := by
    unfold C
    simp [show (7077888 * k + 1782646) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 891323) = 10616832 * k + 2673970 := by
    unfold C
    simp [show (3538944 * k + 891323) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2673970) = 5308416 * k + 1336985 := by
    unfold C
    simp [show (10616832 * k + 2673970) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1336985) = 15925248 * k + 4010956 := by
    unfold C
    simp [show (5308416 * k + 1336985) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4010956) = 7962624 * k + 2005478 := by
    unfold C
    simp [show (15925248 * k + 4010956) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2005478) = 3981312 * k + 1002739 := by
    unfold C
    simp [show (7962624 * k + 2005478) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1002739) = 11943936 * k + 3008218 := by
    unfold C
    simp [show (3981312 * k + 1002739) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3008218) = 5971968 * k + 1504109 := by
    unfold C
    simp [show (11943936 * k + 3008218) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1504109) = 17915904 * k + 4512328 := by
    unfold C
    simp [show (5971968 * k + 1504109) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4512328) = 8957952 * k + 2256164 := by
    unfold C
    simp [show (17915904 * k + 4512328) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2256164) = 4478976 * k + 1128082 := by
    unfold C
    simp [show (8957952 * k + 2256164) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1128082) = 2239488 * k + 564041 := by
    unfold C
    simp [show (4478976 * k + 1128082) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 564041) = 6718464 * k + 1692124 := by
    unfold C
    simp [show (2239488 * k + 564041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1692124) = 3359232 * k + 846062 := by
    unfold C
    simp [show (6718464 * k + 1692124) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 846062) = 1679616 * k + 423031 := by
    unfold C
    simp [show (3359232 * k + 846062) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 423031) = 5038848 * k + 1269094 := by
    unfold C
    simp [show (1679616 * k + 423031) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1269094) = 2519424 * k + 634547 := by
    unfold C
    simp [show (5038848 * k + 1269094) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 634547) = 7558272 * k + 1903642 := by
    unfold C
    simp [show (2519424 * k + 634547) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1903642) = 3779136 * k + 951821 := by
    unfold C
    simp [show (7558272 * k + 1903642) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 951821) = 11337408 * k + 2855464 := by
    unfold C
    simp [show (3779136 * k + 951821) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2855464) = 5668704 * k + 1427732 := by
    unfold C
    simp [show (11337408 * k + 2855464) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1427732) = 2834352 * k + 713866 := by
    unfold C
    simp [show (5668704 * k + 1427732) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 713866) = 1417176 * k + 356933 := by
    unfold C
    simp [show (2834352 * k + 713866) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 356933) = 4251528 * k + 1070800 := by
    unfold C
    simp [show (1417176 * k + 356933) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1070800) = 2125764 * k + 535400 := by
    unfold C
    simp [show (4251528 * k + 1070800) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 535400) = 1062882 * k + 267700 := by
    unfold C
    simp [show (2125764 * k + 535400) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 267700) = 531441 * k + 133850 := by
    unfold C
    simp [show (1062882 * k + 267700) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 264095) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 264095)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_264687 : ∀ k : Nat,
    iterate (1048576 * k + 264687) 32 = 531441 * k + 134150 ∧
      531441 * k + 134150 < 1048576 * k + 264687 := by
  intro k
  have h1 : C (1048576 * k + 264687) = 3145728 * k + 794062 := by
    unfold C
    simp [show (1048576 * k + 264687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 794062) = 1572864 * k + 397031 := by
    unfold C
    simp [show (3145728 * k + 794062) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 397031) = 4718592 * k + 1191094 := by
    unfold C
    simp [show (1572864 * k + 397031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1191094) = 2359296 * k + 595547 := by
    unfold C
    simp [show (4718592 * k + 1191094) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 595547) = 7077888 * k + 1786642 := by
    unfold C
    simp [show (2359296 * k + 595547) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1786642) = 3538944 * k + 893321 := by
    unfold C
    simp [show (7077888 * k + 1786642) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 893321) = 10616832 * k + 2679964 := by
    unfold C
    simp [show (3538944 * k + 893321) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2679964) = 5308416 * k + 1339982 := by
    unfold C
    simp [show (10616832 * k + 2679964) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1339982) = 2654208 * k + 669991 := by
    unfold C
    simp [show (5308416 * k + 1339982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 669991) = 7962624 * k + 2009974 := by
    unfold C
    simp [show (2654208 * k + 669991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2009974) = 3981312 * k + 1004987 := by
    unfold C
    simp [show (7962624 * k + 2009974) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1004987) = 11943936 * k + 3014962 := by
    unfold C
    simp [show (3981312 * k + 1004987) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3014962) = 5971968 * k + 1507481 := by
    unfold C
    simp [show (11943936 * k + 3014962) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1507481) = 17915904 * k + 4522444 := by
    unfold C
    simp [show (5971968 * k + 1507481) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4522444) = 8957952 * k + 2261222 := by
    unfold C
    simp [show (17915904 * k + 4522444) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2261222) = 4478976 * k + 1130611 := by
    unfold C
    simp [show (8957952 * k + 2261222) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1130611) = 13436928 * k + 3391834 := by
    unfold C
    simp [show (4478976 * k + 1130611) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3391834) = 6718464 * k + 1695917 := by
    unfold C
    simp [show (13436928 * k + 3391834) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1695917) = 20155392 * k + 5087752 := by
    unfold C
    simp [show (6718464 * k + 1695917) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5087752) = 10077696 * k + 2543876 := by
    unfold C
    simp [show (20155392 * k + 5087752) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2543876) = 5038848 * k + 1271938 := by
    unfold C
    simp [show (10077696 * k + 2543876) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1271938) = 2519424 * k + 635969 := by
    unfold C
    simp [show (5038848 * k + 1271938) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 635969) = 7558272 * k + 1907908 := by
    unfold C
    simp [show (2519424 * k + 635969) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1907908) = 3779136 * k + 953954 := by
    unfold C
    simp [show (7558272 * k + 1907908) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 953954) = 1889568 * k + 476977 := by
    unfold C
    simp [show (3779136 * k + 953954) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 476977) = 5668704 * k + 1430932 := by
    unfold C
    simp [show (1889568 * k + 476977) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1430932) = 2834352 * k + 715466 := by
    unfold C
    simp [show (5668704 * k + 1430932) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 715466) = 1417176 * k + 357733 := by
    unfold C
    simp [show (2834352 * k + 715466) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 357733) = 4251528 * k + 1073200 := by
    unfold C
    simp [show (1417176 * k + 357733) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1073200) = 2125764 * k + 536600 := by
    unfold C
    simp [show (4251528 * k + 1073200) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 536600) = 1062882 * k + 268300 := by
    unfold C
    simp [show (2125764 * k + 536600) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 268300) = 531441 * k + 134150 := by
    unfold C
    simp [show (1062882 * k + 268300) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 264687) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 264687)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_265455 : ∀ k : Nat,
    iterate (1048576 * k + 265455) 32 = 531441 * k + 134539 ∧
      531441 * k + 134539 < 1048576 * k + 265455 := by
  intro k
  have h1 : C (1048576 * k + 265455) = 3145728 * k + 796366 := by
    unfold C
    simp [show (1048576 * k + 265455) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 796366) = 1572864 * k + 398183 := by
    unfold C
    simp [show (3145728 * k + 796366) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 398183) = 4718592 * k + 1194550 := by
    unfold C
    simp [show (1572864 * k + 398183) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1194550) = 2359296 * k + 597275 := by
    unfold C
    simp [show (4718592 * k + 1194550) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 597275) = 7077888 * k + 1791826 := by
    unfold C
    simp [show (2359296 * k + 597275) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1791826) = 3538944 * k + 895913 := by
    unfold C
    simp [show (7077888 * k + 1791826) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 895913) = 10616832 * k + 2687740 := by
    unfold C
    simp [show (3538944 * k + 895913) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2687740) = 5308416 * k + 1343870 := by
    unfold C
    simp [show (10616832 * k + 2687740) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1343870) = 2654208 * k + 671935 := by
    unfold C
    simp [show (5308416 * k + 1343870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 671935) = 7962624 * k + 2015806 := by
    unfold C
    simp [show (2654208 * k + 671935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2015806) = 3981312 * k + 1007903 := by
    unfold C
    simp [show (7962624 * k + 2015806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1007903) = 11943936 * k + 3023710 := by
    unfold C
    simp [show (3981312 * k + 1007903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3023710) = 5971968 * k + 1511855 := by
    unfold C
    simp [show (11943936 * k + 3023710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1511855) = 17915904 * k + 4535566 := by
    unfold C
    simp [show (5971968 * k + 1511855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4535566) = 8957952 * k + 2267783 := by
    unfold C
    simp [show (17915904 * k + 4535566) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2267783) = 26873856 * k + 6803350 := by
    unfold C
    simp [show (8957952 * k + 2267783) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6803350) = 13436928 * k + 3401675 := by
    unfold C
    simp [show (26873856 * k + 6803350) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3401675) = 40310784 * k + 10205026 := by
    unfold C
    simp [show (13436928 * k + 3401675) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10205026) = 20155392 * k + 5102513 := by
    unfold C
    simp [show (40310784 * k + 10205026) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5102513) = 60466176 * k + 15307540 := by
    unfold C
    simp [show (20155392 * k + 5102513) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 15307540) = 30233088 * k + 7653770 := by
    unfold C
    simp [show (60466176 * k + 15307540) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7653770) = 15116544 * k + 3826885 := by
    unfold C
    simp [show (30233088 * k + 7653770) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3826885) = 45349632 * k + 11480656 := by
    unfold C
    simp [show (15116544 * k + 3826885) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 11480656) = 22674816 * k + 5740328 := by
    unfold C
    simp [show (45349632 * k + 11480656) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 5740328) = 11337408 * k + 2870164 := by
    unfold C
    simp [show (22674816 * k + 5740328) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 2870164) = 5668704 * k + 1435082 := by
    unfold C
    simp [show (11337408 * k + 2870164) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1435082) = 2834352 * k + 717541 := by
    unfold C
    simp [show (5668704 * k + 1435082) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 717541) = 8503056 * k + 2152624 := by
    unfold C
    simp [show (2834352 * k + 717541) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2152624) = 4251528 * k + 1076312 := by
    unfold C
    simp [show (8503056 * k + 2152624) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1076312) = 2125764 * k + 538156 := by
    unfold C
    simp [show (4251528 * k + 1076312) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 538156) = 1062882 * k + 269078 := by
    unfold C
    simp [show (2125764 * k + 538156) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 269078) = 531441 * k + 134539 := by
    unfold C
    simp [show (1062882 * k + 269078) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 265455) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 265455)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_265543 : ∀ k : Nat,
    iterate (1048576 * k + 265543) 32 = 531441 * k + 134584 ∧
      531441 * k + 134584 < 1048576 * k + 265543 := by
  intro k
  have h1 : C (1048576 * k + 265543) = 3145728 * k + 796630 := by
    unfold C
    simp [show (1048576 * k + 265543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 796630) = 1572864 * k + 398315 := by
    unfold C
    simp [show (3145728 * k + 796630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 398315) = 4718592 * k + 1194946 := by
    unfold C
    simp [show (1572864 * k + 398315) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1194946) = 2359296 * k + 597473 := by
    unfold C
    simp [show (4718592 * k + 1194946) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 597473) = 7077888 * k + 1792420 := by
    unfold C
    simp [show (2359296 * k + 597473) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1792420) = 3538944 * k + 896210 := by
    unfold C
    simp [show (7077888 * k + 1792420) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 896210) = 1769472 * k + 448105 := by
    unfold C
    simp [show (3538944 * k + 896210) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 448105) = 5308416 * k + 1344316 := by
    unfold C
    simp [show (1769472 * k + 448105) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1344316) = 2654208 * k + 672158 := by
    unfold C
    simp [show (5308416 * k + 1344316) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 672158) = 1327104 * k + 336079 := by
    unfold C
    simp [show (2654208 * k + 672158) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 336079) = 3981312 * k + 1008238 := by
    unfold C
    simp [show (1327104 * k + 336079) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1008238) = 1990656 * k + 504119 := by
    unfold C
    simp [show (3981312 * k + 1008238) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 504119) = 5971968 * k + 1512358 := by
    unfold C
    simp [show (1990656 * k + 504119) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1512358) = 2985984 * k + 756179 := by
    unfold C
    simp [show (5971968 * k + 1512358) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 756179) = 8957952 * k + 2268538 := by
    unfold C
    simp [show (2985984 * k + 756179) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2268538) = 4478976 * k + 1134269 := by
    unfold C
    simp [show (8957952 * k + 2268538) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1134269) = 13436928 * k + 3402808 := by
    unfold C
    simp [show (4478976 * k + 1134269) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3402808) = 6718464 * k + 1701404 := by
    unfold C
    simp [show (13436928 * k + 3402808) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1701404) = 3359232 * k + 850702 := by
    unfold C
    simp [show (6718464 * k + 1701404) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 850702) = 1679616 * k + 425351 := by
    unfold C
    simp [show (3359232 * k + 850702) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 425351) = 5038848 * k + 1276054 := by
    unfold C
    simp [show (1679616 * k + 425351) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1276054) = 2519424 * k + 638027 := by
    unfold C
    simp [show (5038848 * k + 1276054) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 638027) = 7558272 * k + 1914082 := by
    unfold C
    simp [show (2519424 * k + 638027) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1914082) = 3779136 * k + 957041 := by
    unfold C
    simp [show (7558272 * k + 1914082) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 957041) = 11337408 * k + 2871124 := by
    unfold C
    simp [show (3779136 * k + 957041) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2871124) = 5668704 * k + 1435562 := by
    unfold C
    simp [show (11337408 * k + 2871124) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1435562) = 2834352 * k + 717781 := by
    unfold C
    simp [show (5668704 * k + 1435562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 717781) = 8503056 * k + 2153344 := by
    unfold C
    simp [show (2834352 * k + 717781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2153344) = 4251528 * k + 1076672 := by
    unfold C
    simp [show (8503056 * k + 2153344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1076672) = 2125764 * k + 538336 := by
    unfold C
    simp [show (4251528 * k + 1076672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 538336) = 1062882 * k + 269168 := by
    unfold C
    simp [show (2125764 * k + 538336) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 269168) = 531441 * k + 134584 := by
    unfold C
    simp [show (1062882 * k + 269168) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 265543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 265543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_266011 : ∀ k : Nat,
    iterate (1048576 * k + 266011) 32 = 531441 * k + 134821 ∧
      531441 * k + 134821 < 1048576 * k + 266011 := by
  intro k
  have h1 : C (1048576 * k + 266011) = 3145728 * k + 798034 := by
    unfold C
    simp [show (1048576 * k + 266011) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 798034) = 1572864 * k + 399017 := by
    unfold C
    simp [show (3145728 * k + 798034) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 399017) = 4718592 * k + 1197052 := by
    unfold C
    simp [show (1572864 * k + 399017) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1197052) = 2359296 * k + 598526 := by
    unfold C
    simp [show (4718592 * k + 1197052) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 598526) = 1179648 * k + 299263 := by
    unfold C
    simp [show (2359296 * k + 598526) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 299263) = 3538944 * k + 897790 := by
    unfold C
    simp [show (1179648 * k + 299263) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 897790) = 1769472 * k + 448895 := by
    unfold C
    simp [show (3538944 * k + 897790) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 448895) = 5308416 * k + 1346686 := by
    unfold C
    simp [show (1769472 * k + 448895) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1346686) = 2654208 * k + 673343 := by
    unfold C
    simp [show (5308416 * k + 1346686) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 673343) = 7962624 * k + 2020030 := by
    unfold C
    simp [show (2654208 * k + 673343) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2020030) = 3981312 * k + 1010015 := by
    unfold C
    simp [show (7962624 * k + 2020030) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1010015) = 11943936 * k + 3030046 := by
    unfold C
    simp [show (3981312 * k + 1010015) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3030046) = 5971968 * k + 1515023 := by
    unfold C
    simp [show (11943936 * k + 3030046) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1515023) = 17915904 * k + 4545070 := by
    unfold C
    simp [show (5971968 * k + 1515023) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4545070) = 8957952 * k + 2272535 := by
    unfold C
    simp [show (17915904 * k + 4545070) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2272535) = 26873856 * k + 6817606 := by
    unfold C
    simp [show (8957952 * k + 2272535) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6817606) = 13436928 * k + 3408803 := by
    unfold C
    simp [show (26873856 * k + 6817606) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3408803) = 40310784 * k + 10226410 := by
    unfold C
    simp [show (13436928 * k + 3408803) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10226410) = 20155392 * k + 5113205 := by
    unfold C
    simp [show (40310784 * k + 10226410) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5113205) = 60466176 * k + 15339616 := by
    unfold C
    simp [show (20155392 * k + 5113205) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 15339616) = 30233088 * k + 7669808 := by
    unfold C
    simp [show (60466176 * k + 15339616) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 7669808) = 15116544 * k + 3834904 := by
    unfold C
    simp [show (30233088 * k + 7669808) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3834904) = 7558272 * k + 1917452 := by
    unfold C
    simp [show (15116544 * k + 3834904) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1917452) = 3779136 * k + 958726 := by
    unfold C
    simp [show (7558272 * k + 1917452) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 958726) = 1889568 * k + 479363 := by
    unfold C
    simp [show (3779136 * k + 958726) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 479363) = 5668704 * k + 1438090 := by
    unfold C
    simp [show (1889568 * k + 479363) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1438090) = 2834352 * k + 719045 := by
    unfold C
    simp [show (5668704 * k + 1438090) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 719045) = 8503056 * k + 2157136 := by
    unfold C
    simp [show (2834352 * k + 719045) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2157136) = 4251528 * k + 1078568 := by
    unfold C
    simp [show (8503056 * k + 2157136) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1078568) = 2125764 * k + 539284 := by
    unfold C
    simp [show (4251528 * k + 1078568) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 539284) = 1062882 * k + 269642 := by
    unfold C
    simp [show (2125764 * k + 539284) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 269642) = 531441 * k + 134821 := by
    unfold C
    simp [show (1062882 * k + 269642) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 266011) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 266011)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_266267 : ∀ k : Nat,
    iterate (1048576 * k + 266267) 32 = 531441 * k + 134951 ∧
      531441 * k + 134951 < 1048576 * k + 266267 := by
  intro k
  have h1 : C (1048576 * k + 266267) = 3145728 * k + 798802 := by
    unfold C
    simp [show (1048576 * k + 266267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 798802) = 1572864 * k + 399401 := by
    unfold C
    simp [show (3145728 * k + 798802) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 399401) = 4718592 * k + 1198204 := by
    unfold C
    simp [show (1572864 * k + 399401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1198204) = 2359296 * k + 599102 := by
    unfold C
    simp [show (4718592 * k + 1198204) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 599102) = 1179648 * k + 299551 := by
    unfold C
    simp [show (2359296 * k + 599102) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 299551) = 3538944 * k + 898654 := by
    unfold C
    simp [show (1179648 * k + 299551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 898654) = 1769472 * k + 449327 := by
    unfold C
    simp [show (3538944 * k + 898654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 449327) = 5308416 * k + 1347982 := by
    unfold C
    simp [show (1769472 * k + 449327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1347982) = 2654208 * k + 673991 := by
    unfold C
    simp [show (5308416 * k + 1347982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 673991) = 7962624 * k + 2021974 := by
    unfold C
    simp [show (2654208 * k + 673991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2021974) = 3981312 * k + 1010987 := by
    unfold C
    simp [show (7962624 * k + 2021974) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1010987) = 11943936 * k + 3032962 := by
    unfold C
    simp [show (3981312 * k + 1010987) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3032962) = 5971968 * k + 1516481 := by
    unfold C
    simp [show (11943936 * k + 3032962) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1516481) = 17915904 * k + 4549444 := by
    unfold C
    simp [show (5971968 * k + 1516481) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4549444) = 8957952 * k + 2274722 := by
    unfold C
    simp [show (17915904 * k + 4549444) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2274722) = 4478976 * k + 1137361 := by
    unfold C
    simp [show (8957952 * k + 2274722) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1137361) = 13436928 * k + 3412084 := by
    unfold C
    simp [show (4478976 * k + 1137361) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 3412084) = 6718464 * k + 1706042 := by
    unfold C
    simp [show (13436928 * k + 3412084) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1706042) = 3359232 * k + 853021 := by
    unfold C
    simp [show (6718464 * k + 1706042) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 853021) = 10077696 * k + 2559064 := by
    unfold C
    simp [show (3359232 * k + 853021) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2559064) = 5038848 * k + 1279532 := by
    unfold C
    simp [show (10077696 * k + 2559064) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1279532) = 2519424 * k + 639766 := by
    unfold C
    simp [show (5038848 * k + 1279532) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 639766) = 1259712 * k + 319883 := by
    unfold C
    simp [show (2519424 * k + 639766) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 319883) = 3779136 * k + 959650 := by
    unfold C
    simp [show (1259712 * k + 319883) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 959650) = 1889568 * k + 479825 := by
    unfold C
    simp [show (3779136 * k + 959650) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 479825) = 5668704 * k + 1439476 := by
    unfold C
    simp [show (1889568 * k + 479825) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1439476) = 2834352 * k + 719738 := by
    unfold C
    simp [show (5668704 * k + 1439476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 719738) = 1417176 * k + 359869 := by
    unfold C
    simp [show (2834352 * k + 719738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 359869) = 4251528 * k + 1079608 := by
    unfold C
    simp [show (1417176 * k + 359869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1079608) = 2125764 * k + 539804 := by
    unfold C
    simp [show (4251528 * k + 1079608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 539804) = 1062882 * k + 269902 := by
    unfold C
    simp [show (2125764 * k + 539804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 269902) = 531441 * k + 134951 := by
    unfold C
    simp [show (1062882 * k + 269902) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 266267) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 266267)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_266543 : ∀ k : Nat,
    iterate (1048576 * k + 266543) 32 = 531441 * k + 135091 ∧
      531441 * k + 135091 < 1048576 * k + 266543 := by
  intro k
  have h1 : C (1048576 * k + 266543) = 3145728 * k + 799630 := by
    unfold C
    simp [show (1048576 * k + 266543) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 799630) = 1572864 * k + 399815 := by
    unfold C
    simp [show (3145728 * k + 799630) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 399815) = 4718592 * k + 1199446 := by
    unfold C
    simp [show (1572864 * k + 399815) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1199446) = 2359296 * k + 599723 := by
    unfold C
    simp [show (4718592 * k + 1199446) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 599723) = 7077888 * k + 1799170 := by
    unfold C
    simp [show (2359296 * k + 599723) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1799170) = 3538944 * k + 899585 := by
    unfold C
    simp [show (7077888 * k + 1799170) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 899585) = 10616832 * k + 2698756 := by
    unfold C
    simp [show (3538944 * k + 899585) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2698756) = 5308416 * k + 1349378 := by
    unfold C
    simp [show (10616832 * k + 2698756) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1349378) = 2654208 * k + 674689 := by
    unfold C
    simp [show (5308416 * k + 1349378) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 674689) = 7962624 * k + 2024068 := by
    unfold C
    simp [show (2654208 * k + 674689) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2024068) = 3981312 * k + 1012034 := by
    unfold C
    simp [show (7962624 * k + 2024068) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1012034) = 1990656 * k + 506017 := by
    unfold C
    simp [show (3981312 * k + 1012034) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 506017) = 5971968 * k + 1518052 := by
    unfold C
    simp [show (1990656 * k + 506017) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1518052) = 2985984 * k + 759026 := by
    unfold C
    simp [show (5971968 * k + 1518052) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 759026) = 1492992 * k + 379513 := by
    unfold C
    simp [show (2985984 * k + 759026) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 379513) = 4478976 * k + 1138540 := by
    unfold C
    simp [show (1492992 * k + 379513) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1138540) = 2239488 * k + 569270 := by
    unfold C
    simp [show (4478976 * k + 1138540) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 569270) = 1119744 * k + 284635 := by
    unfold C
    simp [show (2239488 * k + 569270) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 284635) = 3359232 * k + 853906 := by
    unfold C
    simp [show (1119744 * k + 284635) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 853906) = 1679616 * k + 426953 := by
    unfold C
    simp [show (3359232 * k + 853906) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 426953) = 5038848 * k + 1280860 := by
    unfold C
    simp [show (1679616 * k + 426953) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1280860) = 2519424 * k + 640430 := by
    unfold C
    simp [show (5038848 * k + 1280860) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 640430) = 1259712 * k + 320215 := by
    unfold C
    simp [show (2519424 * k + 640430) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 320215) = 3779136 * k + 960646 := by
    unfold C
    simp [show (1259712 * k + 320215) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 960646) = 1889568 * k + 480323 := by
    unfold C
    simp [show (3779136 * k + 960646) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 480323) = 5668704 * k + 1440970 := by
    unfold C
    simp [show (1889568 * k + 480323) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1440970) = 2834352 * k + 720485 := by
    unfold C
    simp [show (5668704 * k + 1440970) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 720485) = 8503056 * k + 2161456 := by
    unfold C
    simp [show (2834352 * k + 720485) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2161456) = 4251528 * k + 1080728 := by
    unfold C
    simp [show (8503056 * k + 2161456) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1080728) = 2125764 * k + 540364 := by
    unfold C
    simp [show (4251528 * k + 1080728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 540364) = 1062882 * k + 270182 := by
    unfold C
    simp [show (2125764 * k + 540364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 270182) = 531441 * k + 135091 := by
    unfold C
    simp [show (1062882 * k + 270182) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 266543) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 266543)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_266863 : ∀ k : Nat,
    iterate (1048576 * k + 266863) 32 = 531441 * k + 135253 ∧
      531441 * k + 135253 < 1048576 * k + 266863 := by
  intro k
  have h1 : C (1048576 * k + 266863) = 3145728 * k + 800590 := by
    unfold C
    simp [show (1048576 * k + 266863) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 800590) = 1572864 * k + 400295 := by
    unfold C
    simp [show (3145728 * k + 800590) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 400295) = 4718592 * k + 1200886 := by
    unfold C
    simp [show (1572864 * k + 400295) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1200886) = 2359296 * k + 600443 := by
    unfold C
    simp [show (4718592 * k + 1200886) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 600443) = 7077888 * k + 1801330 := by
    unfold C
    simp [show (2359296 * k + 600443) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1801330) = 3538944 * k + 900665 := by
    unfold C
    simp [show (7077888 * k + 1801330) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 900665) = 10616832 * k + 2701996 := by
    unfold C
    simp [show (3538944 * k + 900665) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2701996) = 5308416 * k + 1350998 := by
    unfold C
    simp [show (10616832 * k + 2701996) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1350998) = 2654208 * k + 675499 := by
    unfold C
    simp [show (5308416 * k + 1350998) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 675499) = 7962624 * k + 2026498 := by
    unfold C
    simp [show (2654208 * k + 675499) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2026498) = 3981312 * k + 1013249 := by
    unfold C
    simp [show (7962624 * k + 2026498) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1013249) = 11943936 * k + 3039748 := by
    unfold C
    simp [show (3981312 * k + 1013249) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3039748) = 5971968 * k + 1519874 := by
    unfold C
    simp [show (11943936 * k + 3039748) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1519874) = 2985984 * k + 759937 := by
    unfold C
    simp [show (5971968 * k + 1519874) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 759937) = 8957952 * k + 2279812 := by
    unfold C
    simp [show (2985984 * k + 759937) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 2279812) = 4478976 * k + 1139906 := by
    unfold C
    simp [show (8957952 * k + 2279812) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1139906) = 2239488 * k + 569953 := by
    unfold C
    simp [show (4478976 * k + 1139906) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 569953) = 6718464 * k + 1709860 := by
    unfold C
    simp [show (2239488 * k + 569953) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1709860) = 3359232 * k + 854930 := by
    unfold C
    simp [show (6718464 * k + 1709860) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 854930) = 1679616 * k + 427465 := by
    unfold C
    simp [show (3359232 * k + 854930) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 427465) = 5038848 * k + 1282396 := by
    unfold C
    simp [show (1679616 * k + 427465) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1282396) = 2519424 * k + 641198 := by
    unfold C
    simp [show (5038848 * k + 1282396) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 641198) = 1259712 * k + 320599 := by
    unfold C
    simp [show (2519424 * k + 641198) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 320599) = 3779136 * k + 961798 := by
    unfold C
    simp [show (1259712 * k + 320599) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 961798) = 1889568 * k + 480899 := by
    unfold C
    simp [show (3779136 * k + 961798) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 480899) = 5668704 * k + 1442698 := by
    unfold C
    simp [show (1889568 * k + 480899) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1442698) = 2834352 * k + 721349 := by
    unfold C
    simp [show (5668704 * k + 1442698) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 721349) = 8503056 * k + 2164048 := by
    unfold C
    simp [show (2834352 * k + 721349) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2164048) = 4251528 * k + 1082024 := by
    unfold C
    simp [show (8503056 * k + 2164048) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1082024) = 2125764 * k + 541012 := by
    unfold C
    simp [show (4251528 * k + 1082024) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 541012) = 1062882 * k + 270506 := by
    unfold C
    simp [show (2125764 * k + 541012) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 270506) = 531441 * k + 135253 := by
    unfold C
    simp [show (1062882 * k + 270506) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 266863) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 266863)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_266911 : ∀ k : Nat,
    iterate (1048576 * k + 266911) 32 = 531441 * k + 135277 ∧
      531441 * k + 135277 < 1048576 * k + 266911 := by
  intro k
  have h1 : C (1048576 * k + 266911) = 3145728 * k + 800734 := by
    unfold C
    simp [show (1048576 * k + 266911) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 800734) = 1572864 * k + 400367 := by
    unfold C
    simp [show (3145728 * k + 800734) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 400367) = 4718592 * k + 1201102 := by
    unfold C
    simp [show (1572864 * k + 400367) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1201102) = 2359296 * k + 600551 := by
    unfold C
    simp [show (4718592 * k + 1201102) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 600551) = 7077888 * k + 1801654 := by
    unfold C
    simp [show (2359296 * k + 600551) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1801654) = 3538944 * k + 900827 := by
    unfold C
    simp [show (7077888 * k + 1801654) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 900827) = 10616832 * k + 2702482 := by
    unfold C
    simp [show (3538944 * k + 900827) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2702482) = 5308416 * k + 1351241 := by
    unfold C
    simp [show (10616832 * k + 2702482) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1351241) = 15925248 * k + 4053724 := by
    unfold C
    simp [show (5308416 * k + 1351241) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4053724) = 7962624 * k + 2026862 := by
    unfold C
    simp [show (15925248 * k + 4053724) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2026862) = 3981312 * k + 1013431 := by
    unfold C
    simp [show (7962624 * k + 2026862) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1013431) = 11943936 * k + 3040294 := by
    unfold C
    simp [show (3981312 * k + 1013431) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3040294) = 5971968 * k + 1520147 := by
    unfold C
    simp [show (11943936 * k + 3040294) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1520147) = 17915904 * k + 4560442 := by
    unfold C
    simp [show (5971968 * k + 1520147) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4560442) = 8957952 * k + 2280221 := by
    unfold C
    simp [show (17915904 * k + 4560442) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2280221) = 26873856 * k + 6840664 := by
    unfold C
    simp [show (8957952 * k + 2280221) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6840664) = 13436928 * k + 3420332 := by
    unfold C
    simp [show (26873856 * k + 6840664) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3420332) = 6718464 * k + 1710166 := by
    unfold C
    simp [show (13436928 * k + 3420332) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1710166) = 3359232 * k + 855083 := by
    unfold C
    simp [show (6718464 * k + 1710166) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 855083) = 10077696 * k + 2565250 := by
    unfold C
    simp [show (3359232 * k + 855083) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2565250) = 5038848 * k + 1282625 := by
    unfold C
    simp [show (10077696 * k + 2565250) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1282625) = 15116544 * k + 3847876 := by
    unfold C
    simp [show (5038848 * k + 1282625) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3847876) = 7558272 * k + 1923938 := by
    unfold C
    simp [show (15116544 * k + 3847876) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1923938) = 3779136 * k + 961969 := by
    unfold C
    simp [show (7558272 * k + 1923938) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 961969) = 11337408 * k + 2885908 := by
    unfold C
    simp [show (3779136 * k + 961969) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2885908) = 5668704 * k + 1442954 := by
    unfold C
    simp [show (11337408 * k + 2885908) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1442954) = 2834352 * k + 721477 := by
    unfold C
    simp [show (5668704 * k + 1442954) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 721477) = 8503056 * k + 2164432 := by
    unfold C
    simp [show (2834352 * k + 721477) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2164432) = 4251528 * k + 1082216 := by
    unfold C
    simp [show (8503056 * k + 2164432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1082216) = 2125764 * k + 541108 := by
    unfold C
    simp [show (4251528 * k + 1082216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 541108) = 1062882 * k + 270554 := by
    unfold C
    simp [show (2125764 * k + 541108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 270554) = 531441 * k + 135277 := by
    unfold C
    simp [show (1062882 * k + 270554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 266911) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 266911)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_267035 : ∀ k : Nat,
    iterate (1048576 * k + 267035) 32 = 531441 * k + 135340 ∧
      531441 * k + 135340 < 1048576 * k + 267035 := by
  intro k
  have h1 : C (1048576 * k + 267035) = 3145728 * k + 801106 := by
    unfold C
    simp [show (1048576 * k + 267035) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 801106) = 1572864 * k + 400553 := by
    unfold C
    simp [show (3145728 * k + 801106) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 400553) = 4718592 * k + 1201660 := by
    unfold C
    simp [show (1572864 * k + 400553) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1201660) = 2359296 * k + 600830 := by
    unfold C
    simp [show (4718592 * k + 1201660) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 600830) = 1179648 * k + 300415 := by
    unfold C
    simp [show (2359296 * k + 600830) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 300415) = 3538944 * k + 901246 := by
    unfold C
    simp [show (1179648 * k + 300415) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 901246) = 1769472 * k + 450623 := by
    unfold C
    simp [show (3538944 * k + 901246) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 450623) = 5308416 * k + 1351870 := by
    unfold C
    simp [show (1769472 * k + 450623) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1351870) = 2654208 * k + 675935 := by
    unfold C
    simp [show (5308416 * k + 1351870) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 675935) = 7962624 * k + 2027806 := by
    unfold C
    simp [show (2654208 * k + 675935) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2027806) = 3981312 * k + 1013903 := by
    unfold C
    simp [show (7962624 * k + 2027806) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1013903) = 11943936 * k + 3041710 := by
    unfold C
    simp [show (3981312 * k + 1013903) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3041710) = 5971968 * k + 1520855 := by
    unfold C
    simp [show (11943936 * k + 3041710) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1520855) = 17915904 * k + 4562566 := by
    unfold C
    simp [show (5971968 * k + 1520855) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4562566) = 8957952 * k + 2281283 := by
    unfold C
    simp [show (17915904 * k + 4562566) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2281283) = 26873856 * k + 6843850 := by
    unfold C
    simp [show (8957952 * k + 2281283) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6843850) = 13436928 * k + 3421925 := by
    unfold C
    simp [show (26873856 * k + 6843850) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3421925) = 40310784 * k + 10265776 := by
    unfold C
    simp [show (13436928 * k + 3421925) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10265776) = 20155392 * k + 5132888 := by
    unfold C
    simp [show (40310784 * k + 10265776) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5132888) = 10077696 * k + 2566444 := by
    unfold C
    simp [show (20155392 * k + 5132888) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2566444) = 5038848 * k + 1283222 := by
    unfold C
    simp [show (10077696 * k + 2566444) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1283222) = 2519424 * k + 641611 := by
    unfold C
    simp [show (5038848 * k + 1283222) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 641611) = 7558272 * k + 1924834 := by
    unfold C
    simp [show (2519424 * k + 641611) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1924834) = 3779136 * k + 962417 := by
    unfold C
    simp [show (7558272 * k + 1924834) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 962417) = 11337408 * k + 2887252 := by
    unfold C
    simp [show (3779136 * k + 962417) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2887252) = 5668704 * k + 1443626 := by
    unfold C
    simp [show (11337408 * k + 2887252) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1443626) = 2834352 * k + 721813 := by
    unfold C
    simp [show (5668704 * k + 1443626) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 721813) = 8503056 * k + 2165440 := by
    unfold C
    simp [show (2834352 * k + 721813) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2165440) = 4251528 * k + 1082720 := by
    unfold C
    simp [show (8503056 * k + 2165440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1082720) = 2125764 * k + 541360 := by
    unfold C
    simp [show (4251528 * k + 1082720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 541360) = 1062882 * k + 270680 := by
    unfold C
    simp [show (2125764 * k + 541360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 270680) = 531441 * k + 135340 := by
    unfold C
    simp [show (1062882 * k + 270680) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 267035) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 267035)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_268527 : ∀ k : Nat,
    iterate (1048576 * k + 268527) 32 = 531441 * k + 136096 ∧
      531441 * k + 136096 < 1048576 * k + 268527 := by
  intro k
  have h1 : C (1048576 * k + 268527) = 3145728 * k + 805582 := by
    unfold C
    simp [show (1048576 * k + 268527) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 805582) = 1572864 * k + 402791 := by
    unfold C
    simp [show (3145728 * k + 805582) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 402791) = 4718592 * k + 1208374 := by
    unfold C
    simp [show (1572864 * k + 402791) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1208374) = 2359296 * k + 604187 := by
    unfold C
    simp [show (4718592 * k + 1208374) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 604187) = 7077888 * k + 1812562 := by
    unfold C
    simp [show (2359296 * k + 604187) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1812562) = 3538944 * k + 906281 := by
    unfold C
    simp [show (7077888 * k + 1812562) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 906281) = 10616832 * k + 2718844 := by
    unfold C
    simp [show (3538944 * k + 906281) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2718844) = 5308416 * k + 1359422 := by
    unfold C
    simp [show (10616832 * k + 2718844) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1359422) = 2654208 * k + 679711 := by
    unfold C
    simp [show (5308416 * k + 1359422) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 679711) = 7962624 * k + 2039134 := by
    unfold C
    simp [show (2654208 * k + 679711) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2039134) = 3981312 * k + 1019567 := by
    unfold C
    simp [show (7962624 * k + 2039134) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1019567) = 11943936 * k + 3058702 := by
    unfold C
    simp [show (3981312 * k + 1019567) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3058702) = 5971968 * k + 1529351 := by
    unfold C
    simp [show (11943936 * k + 3058702) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1529351) = 17915904 * k + 4588054 := by
    unfold C
    simp [show (5971968 * k + 1529351) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4588054) = 8957952 * k + 2294027 := by
    unfold C
    simp [show (17915904 * k + 4588054) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2294027) = 26873856 * k + 6882082 := by
    unfold C
    simp [show (8957952 * k + 2294027) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6882082) = 13436928 * k + 3441041 := by
    unfold C
    simp [show (26873856 * k + 6882082) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3441041) = 40310784 * k + 10323124 := by
    unfold C
    simp [show (13436928 * k + 3441041) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 10323124) = 20155392 * k + 5161562 := by
    unfold C
    simp [show (40310784 * k + 10323124) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 5161562) = 10077696 * k + 2580781 := by
    unfold C
    simp [show (20155392 * k + 5161562) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2580781) = 30233088 * k + 7742344 := by
    unfold C
    simp [show (10077696 * k + 2580781) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 7742344) = 15116544 * k + 3871172 := by
    unfold C
    simp [show (30233088 * k + 7742344) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 3871172) = 7558272 * k + 1935586 := by
    unfold C
    simp [show (15116544 * k + 3871172) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1935586) = 3779136 * k + 967793 := by
    unfold C
    simp [show (7558272 * k + 1935586) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 967793) = 11337408 * k + 2903380 := by
    unfold C
    simp [show (3779136 * k + 967793) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 2903380) = 5668704 * k + 1451690 := by
    unfold C
    simp [show (11337408 * k + 2903380) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 1451690) = 2834352 * k + 725845 := by
    unfold C
    simp [show (5668704 * k + 1451690) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 725845) = 8503056 * k + 2177536 := by
    unfold C
    simp [show (2834352 * k + 725845) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2177536) = 4251528 * k + 1088768 := by
    unfold C
    simp [show (8503056 * k + 2177536) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1088768) = 2125764 * k + 544384 := by
    unfold C
    simp [show (4251528 * k + 1088768) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 544384) = 1062882 * k + 272192 := by
    unfold C
    simp [show (2125764 * k + 544384) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 272192) = 531441 * k + 136096 := by
    unfold C
    simp [show (1062882 * k + 272192) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 268527) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 268527)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_270823 : ∀ k : Nat,
    iterate (1048576 * k + 270823) 32 = 531441 * k + 137260 ∧
      531441 * k + 137260 < 1048576 * k + 270823 := by
  intro k
  have h1 : C (1048576 * k + 270823) = 3145728 * k + 812470 := by
    unfold C
    simp [show (1048576 * k + 270823) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 812470) = 1572864 * k + 406235 := by
    unfold C
    simp [show (3145728 * k + 812470) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 406235) = 4718592 * k + 1218706 := by
    unfold C
    simp [show (1572864 * k + 406235) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1218706) = 2359296 * k + 609353 := by
    unfold C
    simp [show (4718592 * k + 1218706) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 609353) = 7077888 * k + 1828060 := by
    unfold C
    simp [show (2359296 * k + 609353) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1828060) = 3538944 * k + 914030 := by
    unfold C
    simp [show (7077888 * k + 1828060) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 914030) = 1769472 * k + 457015 := by
    unfold C
    simp [show (3538944 * k + 914030) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 457015) = 5308416 * k + 1371046 := by
    unfold C
    simp [show (1769472 * k + 457015) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1371046) = 2654208 * k + 685523 := by
    unfold C
    simp [show (5308416 * k + 1371046) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 685523) = 7962624 * k + 2056570 := by
    unfold C
    simp [show (2654208 * k + 685523) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2056570) = 3981312 * k + 1028285 := by
    unfold C
    simp [show (7962624 * k + 2056570) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1028285) = 11943936 * k + 3084856 := by
    unfold C
    simp [show (3981312 * k + 1028285) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3084856) = 5971968 * k + 1542428 := by
    unfold C
    simp [show (11943936 * k + 3084856) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1542428) = 2985984 * k + 771214 := by
    unfold C
    simp [show (5971968 * k + 1542428) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 771214) = 1492992 * k + 385607 := by
    unfold C
    simp [show (2985984 * k + 771214) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 385607) = 4478976 * k + 1156822 := by
    unfold C
    simp [show (1492992 * k + 385607) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1156822) = 2239488 * k + 578411 := by
    unfold C
    simp [show (4478976 * k + 1156822) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 578411) = 6718464 * k + 1735234 := by
    unfold C
    simp [show (2239488 * k + 578411) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1735234) = 3359232 * k + 867617 := by
    unfold C
    simp [show (6718464 * k + 1735234) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 867617) = 10077696 * k + 2602852 := by
    unfold C
    simp [show (3359232 * k + 867617) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2602852) = 5038848 * k + 1301426 := by
    unfold C
    simp [show (10077696 * k + 2602852) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1301426) = 2519424 * k + 650713 := by
    unfold C
    simp [show (5038848 * k + 1301426) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 650713) = 7558272 * k + 1952140 := by
    unfold C
    simp [show (2519424 * k + 650713) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1952140) = 3779136 * k + 976070 := by
    unfold C
    simp [show (7558272 * k + 1952140) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 976070) = 1889568 * k + 488035 := by
    unfold C
    simp [show (3779136 * k + 976070) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 488035) = 5668704 * k + 1464106 := by
    unfold C
    simp [show (1889568 * k + 488035) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1464106) = 2834352 * k + 732053 := by
    unfold C
    simp [show (5668704 * k + 1464106) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 732053) = 8503056 * k + 2196160 := by
    unfold C
    simp [show (2834352 * k + 732053) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2196160) = 4251528 * k + 1098080 := by
    unfold C
    simp [show (8503056 * k + 2196160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1098080) = 2125764 * k + 549040 := by
    unfold C
    simp [show (4251528 * k + 1098080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 549040) = 1062882 * k + 274520 := by
    unfold C
    simp [show (2125764 * k + 549040) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 274520) = 531441 * k + 137260 := by
    unfold C
    simp [show (1062882 * k + 274520) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 270823) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 270823)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_271719 : ∀ k : Nat,
    iterate (1048576 * k + 271719) 32 = 531441 * k + 137714 ∧
      531441 * k + 137714 < 1048576 * k + 271719 := by
  intro k
  have h1 : C (1048576 * k + 271719) = 3145728 * k + 815158 := by
    unfold C
    simp [show (1048576 * k + 271719) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 815158) = 1572864 * k + 407579 := by
    unfold C
    simp [show (3145728 * k + 815158) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 407579) = 4718592 * k + 1222738 := by
    unfold C
    simp [show (1572864 * k + 407579) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1222738) = 2359296 * k + 611369 := by
    unfold C
    simp [show (4718592 * k + 1222738) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 611369) = 7077888 * k + 1834108 := by
    unfold C
    simp [show (2359296 * k + 611369) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1834108) = 3538944 * k + 917054 := by
    unfold C
    simp [show (7077888 * k + 1834108) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 917054) = 1769472 * k + 458527 := by
    unfold C
    simp [show (3538944 * k + 917054) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 458527) = 5308416 * k + 1375582 := by
    unfold C
    simp [show (1769472 * k + 458527) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 1375582) = 2654208 * k + 687791 := by
    unfold C
    simp [show (5308416 * k + 1375582) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 687791) = 7962624 * k + 2063374 := by
    unfold C
    simp [show (2654208 * k + 687791) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 2063374) = 3981312 * k + 1031687 := by
    unfold C
    simp [show (7962624 * k + 2063374) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1031687) = 11943936 * k + 3095062 := by
    unfold C
    simp [show (3981312 * k + 1031687) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3095062) = 5971968 * k + 1547531 := by
    unfold C
    simp [show (11943936 * k + 3095062) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1547531) = 17915904 * k + 4642594 := by
    unfold C
    simp [show (5971968 * k + 1547531) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4642594) = 8957952 * k + 2321297 := by
    unfold C
    simp [show (17915904 * k + 4642594) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2321297) = 26873856 * k + 6963892 := by
    unfold C
    simp [show (8957952 * k + 2321297) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 6963892) = 13436928 * k + 3481946 := by
    unfold C
    simp [show (26873856 * k + 6963892) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 3481946) = 6718464 * k + 1740973 := by
    unfold C
    simp [show (13436928 * k + 3481946) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 1740973) = 20155392 * k + 5222920 := by
    unfold C
    simp [show (6718464 * k + 1740973) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 5222920) = 10077696 * k + 2611460 := by
    unfold C
    simp [show (20155392 * k + 5222920) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 2611460) = 5038848 * k + 1305730 := by
    unfold C
    simp [show (10077696 * k + 2611460) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1305730) = 2519424 * k + 652865 := by
    unfold C
    simp [show (5038848 * k + 1305730) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 652865) = 7558272 * k + 1958596 := by
    unfold C
    simp [show (2519424 * k + 652865) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1958596) = 3779136 * k + 979298 := by
    unfold C
    simp [show (7558272 * k + 1958596) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 979298) = 1889568 * k + 489649 := by
    unfold C
    simp [show (3779136 * k + 979298) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 489649) = 5668704 * k + 1468948 := by
    unfold C
    simp [show (1889568 * k + 489649) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1468948) = 2834352 * k + 734474 := by
    unfold C
    simp [show (5668704 * k + 1468948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 734474) = 1417176 * k + 367237 := by
    unfold C
    simp [show (2834352 * k + 734474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 367237) = 4251528 * k + 1101712 := by
    unfold C
    simp [show (1417176 * k + 367237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1101712) = 2125764 * k + 550856 := by
    unfold C
    simp [show (4251528 * k + 1101712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 550856) = 1062882 * k + 275428 := by
    unfold C
    simp [show (2125764 * k + 550856) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 275428) = 531441 * k + 137714 := by
    unfold C
    simp [show (1062882 * k + 275428) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 271719) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 271719)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_272287 : ∀ k : Nat,
    iterate (1048576 * k + 272287) 32 = 531441 * k + 138002 ∧
      531441 * k + 138002 < 1048576 * k + 272287 := by
  intro k
  have h1 : C (1048576 * k + 272287) = 3145728 * k + 816862 := by
    unfold C
    simp [show (1048576 * k + 272287) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 816862) = 1572864 * k + 408431 := by
    unfold C
    simp [show (3145728 * k + 816862) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 408431) = 4718592 * k + 1225294 := by
    unfold C
    simp [show (1572864 * k + 408431) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1225294) = 2359296 * k + 612647 := by
    unfold C
    simp [show (4718592 * k + 1225294) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 612647) = 7077888 * k + 1837942 := by
    unfold C
    simp [show (2359296 * k + 612647) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1837942) = 3538944 * k + 918971 := by
    unfold C
    simp [show (7077888 * k + 1837942) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 918971) = 10616832 * k + 2756914 := by
    unfold C
    simp [show (3538944 * k + 918971) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2756914) = 5308416 * k + 1378457 := by
    unfold C
    simp [show (10616832 * k + 2756914) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1378457) = 15925248 * k + 4135372 := by
    unfold C
    simp [show (5308416 * k + 1378457) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4135372) = 7962624 * k + 2067686 := by
    unfold C
    simp [show (15925248 * k + 4135372) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2067686) = 3981312 * k + 1033843 := by
    unfold C
    simp [show (7962624 * k + 2067686) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 1033843) = 11943936 * k + 3101530 := by
    unfold C
    simp [show (3981312 * k + 1033843) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 3101530) = 5971968 * k + 1550765 := by
    unfold C
    simp [show (11943936 * k + 3101530) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1550765) = 17915904 * k + 4652296 := by
    unfold C
    simp [show (5971968 * k + 1550765) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 4652296) = 8957952 * k + 2326148 := by
    unfold C
    simp [show (17915904 * k + 4652296) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 2326148) = 4478976 * k + 1163074 := by
    unfold C
    simp [show (8957952 * k + 2326148) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 1163074) = 2239488 * k + 581537 := by
    unfold C
    simp [show (4478976 * k + 1163074) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 581537) = 6718464 * k + 1744612 := by
    unfold C
    simp [show (2239488 * k + 581537) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1744612) = 3359232 * k + 872306 := by
    unfold C
    simp [show (6718464 * k + 1744612) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 872306) = 1679616 * k + 436153 := by
    unfold C
    simp [show (3359232 * k + 872306) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 436153) = 5038848 * k + 1308460 := by
    unfold C
    simp [show (1679616 * k + 436153) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1308460) = 2519424 * k + 654230 := by
    unfold C
    simp [show (5038848 * k + 1308460) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 654230) = 1259712 * k + 327115 := by
    unfold C
    simp [show (2519424 * k + 654230) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 327115) = 3779136 * k + 981346 := by
    unfold C
    simp [show (1259712 * k + 327115) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 981346) = 1889568 * k + 490673 := by
    unfold C
    simp [show (3779136 * k + 981346) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 490673) = 5668704 * k + 1472020 := by
    unfold C
    simp [show (1889568 * k + 490673) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1472020) = 2834352 * k + 736010 := by
    unfold C
    simp [show (5668704 * k + 1472020) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 736010) = 1417176 * k + 368005 := by
    unfold C
    simp [show (2834352 * k + 736010) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 368005) = 4251528 * k + 1104016 := by
    unfold C
    simp [show (1417176 * k + 368005) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1104016) = 2125764 * k + 552008 := by
    unfold C
    simp [show (4251528 * k + 1104016) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 552008) = 1062882 * k + 276004 := by
    unfold C
    simp [show (2125764 * k + 552008) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 276004) = 531441 * k + 138002 := by
    unfold C
    simp [show (1062882 * k + 276004) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 272287) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 272287)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_272447 : ∀ k : Nat,
    iterate (1048576 * k + 272447) 32 = 531441 * k + 138083 ∧
      531441 * k + 138083 < 1048576 * k + 272447 := by
  intro k
  have h1 : C (1048576 * k + 272447) = 3145728 * k + 817342 := by
    unfold C
    simp [show (1048576 * k + 272447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 817342) = 1572864 * k + 408671 := by
    unfold C
    simp [show (3145728 * k + 817342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 408671) = 4718592 * k + 1226014 := by
    unfold C
    simp [show (1572864 * k + 408671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1226014) = 2359296 * k + 613007 := by
    unfold C
    simp [show (4718592 * k + 1226014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 613007) = 7077888 * k + 1839022 := by
    unfold C
    simp [show (2359296 * k + 613007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1839022) = 3538944 * k + 919511 := by
    unfold C
    simp [show (7077888 * k + 1839022) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 919511) = 10616832 * k + 2758534 := by
    unfold C
    simp [show (3538944 * k + 919511) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2758534) = 5308416 * k + 1379267 := by
    unfold C
    simp [show (10616832 * k + 2758534) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1379267) = 15925248 * k + 4137802 := by
    unfold C
    simp [show (5308416 * k + 1379267) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 4137802) = 7962624 * k + 2068901 := by
    unfold C
    simp [show (15925248 * k + 4137802) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 2068901) = 23887872 * k + 6206704 := by
    unfold C
    simp [show (7962624 * k + 2068901) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 6206704) = 11943936 * k + 3103352 := by
    unfold C
    simp [show (23887872 * k + 6206704) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 3103352) = 5971968 * k + 1551676 := by
    unfold C
    simp [show (11943936 * k + 3103352) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 1551676) = 2985984 * k + 775838 := by
    unfold C
    simp [show (5971968 * k + 1551676) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 775838) = 1492992 * k + 387919 := by
    unfold C
    simp [show (2985984 * k + 775838) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 387919) = 4478976 * k + 1163758 := by
    unfold C
    simp [show (1492992 * k + 387919) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1163758) = 2239488 * k + 581879 := by
    unfold C
    simp [show (4478976 * k + 1163758) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 581879) = 6718464 * k + 1745638 := by
    unfold C
    simp [show (2239488 * k + 581879) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 1745638) = 3359232 * k + 872819 := by
    unfold C
    simp [show (6718464 * k + 1745638) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 872819) = 10077696 * k + 2618458 := by
    unfold C
    simp [show (3359232 * k + 872819) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 2618458) = 5038848 * k + 1309229 := by
    unfold C
    simp [show (10077696 * k + 2618458) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 1309229) = 15116544 * k + 3927688 := by
    unfold C
    simp [show (5038848 * k + 1309229) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 3927688) = 7558272 * k + 1963844 := by
    unfold C
    simp [show (15116544 * k + 3927688) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 1963844) = 3779136 * k + 981922 := by
    unfold C
    simp [show (7558272 * k + 1963844) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 981922) = 1889568 * k + 490961 := by
    unfold C
    simp [show (3779136 * k + 981922) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 490961) = 5668704 * k + 1472884 := by
    unfold C
    simp [show (1889568 * k + 490961) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1472884) = 2834352 * k + 736442 := by
    unfold C
    simp [show (5668704 * k + 1472884) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 736442) = 1417176 * k + 368221 := by
    unfold C
    simp [show (2834352 * k + 736442) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 368221) = 4251528 * k + 1104664 := by
    unfold C
    simp [show (1417176 * k + 368221) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 1104664) = 2125764 * k + 552332 := by
    unfold C
    simp [show (4251528 * k + 1104664) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 552332) = 1062882 * k + 276166 := by
    unfold C
    simp [show (2125764 * k + 552332) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 276166) = 531441 * k + 138083 := by
    unfold C
    simp [show (1062882 * k + 276166) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 272447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 272447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_272847 : ∀ k : Nat,
    iterate (1048576 * k + 272847) 32 = 531441 * k + 138286 ∧
      531441 * k + 138286 < 1048576 * k + 272847 := by
  intro k
  have h1 : C (1048576 * k + 272847) = 3145728 * k + 818542 := by
    unfold C
    simp [show (1048576 * k + 272847) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 818542) = 1572864 * k + 409271 := by
    unfold C
    simp [show (3145728 * k + 818542) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 409271) = 4718592 * k + 1227814 := by
    unfold C
    simp [show (1572864 * k + 409271) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 1227814) = 2359296 * k + 613907 := by
    unfold C
    simp [show (4718592 * k + 1227814) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 613907) = 7077888 * k + 1841722 := by
    unfold C
    simp [show (2359296 * k + 613907) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 1841722) = 3538944 * k + 920861 := by
    unfold C
    simp [show (7077888 * k + 1841722) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 920861) = 10616832 * k + 2762584 := by
    unfold C
    simp [show (3538944 * k + 920861) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 2762584) = 5308416 * k + 1381292 := by
    unfold C
    simp [show (10616832 * k + 2762584) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 1381292) = 2654208 * k + 690646 := by
    unfold C
    simp [show (5308416 * k + 1381292) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 690646) = 1327104 * k + 345323 := by
    unfold C
    simp [show (2654208 * k + 690646) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 345323) = 3981312 * k + 1035970 := by
    unfold C
    simp [show (1327104 * k + 345323) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 1035970) = 1990656 * k + 517985 := by
    unfold C
    simp [show (3981312 * k + 1035970) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 517985) = 5971968 * k + 1553956 := by
    unfold C
    simp [show (1990656 * k + 517985) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 1553956) = 2985984 * k + 776978 := by
    unfold C
    simp [show (5971968 * k + 1553956) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 776978) = 1492992 * k + 388489 := by
    unfold C
    simp [show (2985984 * k + 776978) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 388489) = 4478976 * k + 1165468 := by
    unfold C
    simp [show (1492992 * k + 388489) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 1165468) = 2239488 * k + 582734 := by
    unfold C
    simp [show (4478976 * k + 1165468) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 582734) = 1119744 * k + 291367 := by
    unfold C
    simp [show (2239488 * k + 582734) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 291367) = 3359232 * k + 874102 := by
    unfold C
    simp [show (1119744 * k + 291367) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 874102) = 1679616 * k + 437051 := by
    unfold C
    simp [show (3359232 * k + 874102) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 437051) = 5038848 * k + 1311154 := by
    unfold C
    simp [show (1679616 * k + 437051) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 1311154) = 2519424 * k + 655577 := by
    unfold C
    simp [show (5038848 * k + 1311154) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 655577) = 7558272 * k + 1966732 := by
    unfold C
    simp [show (2519424 * k + 655577) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 1966732) = 3779136 * k + 983366 := by
    unfold C
    simp [show (7558272 * k + 1966732) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 983366) = 1889568 * k + 491683 := by
    unfold C
    simp [show (3779136 * k + 983366) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 491683) = 5668704 * k + 1475050 := by
    unfold C
    simp [show (1889568 * k + 491683) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 1475050) = 2834352 * k + 737525 := by
    unfold C
    simp [show (5668704 * k + 1475050) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 737525) = 8503056 * k + 2212576 := by
    unfold C
    simp [show (2834352 * k + 737525) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 2212576) = 4251528 * k + 1106288 := by
    unfold C
    simp [show (8503056 * k + 2212576) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 1106288) = 2125764 * k + 553144 := by
    unfold C
    simp [show (4251528 * k + 1106288) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 553144) = 1062882 * k + 276572 := by
    unfold C
    simp [show (2125764 * k + 553144) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 276572) = 531441 * k + 138286 := by
    unfold C
    simp [show (1062882 * k + 276572) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 272847) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 272847)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard036
