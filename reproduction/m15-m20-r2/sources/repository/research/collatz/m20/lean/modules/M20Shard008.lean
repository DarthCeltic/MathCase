import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard008

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_46591 : ∀ k : Nat,
    iterate (1048576 * k + 46591) 32 = 531441 * k + 23614 ∧
      531441 * k + 23614 < 1048576 * k + 46591 := by
  intro k
  have h1 : C (1048576 * k + 46591) = 3145728 * k + 139774 := by
    unfold C
    simp [show (1048576 * k + 46591) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 139774) = 1572864 * k + 69887 := by
    unfold C
    simp [show (3145728 * k + 139774) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 69887) = 4718592 * k + 209662 := by
    unfold C
    simp [show (1572864 * k + 69887) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 209662) = 2359296 * k + 104831 := by
    unfold C
    simp [show (4718592 * k + 209662) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 104831) = 7077888 * k + 314494 := by
    unfold C
    simp [show (2359296 * k + 104831) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 314494) = 3538944 * k + 157247 := by
    unfold C
    simp [show (7077888 * k + 314494) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 157247) = 10616832 * k + 471742 := by
    unfold C
    simp [show (3538944 * k + 157247) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 471742) = 5308416 * k + 235871 := by
    unfold C
    simp [show (10616832 * k + 471742) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 235871) = 15925248 * k + 707614 := by
    unfold C
    simp [show (5308416 * k + 235871) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 707614) = 7962624 * k + 353807 := by
    unfold C
    simp [show (15925248 * k + 707614) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 353807) = 23887872 * k + 1061422 := by
    unfold C
    simp [show (7962624 * k + 353807) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1061422) = 11943936 * k + 530711 := by
    unfold C
    simp [show (23887872 * k + 1061422) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 530711) = 35831808 * k + 1592134 := by
    unfold C
    simp [show (11943936 * k + 530711) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 1592134) = 17915904 * k + 796067 := by
    unfold C
    simp [show (35831808 * k + 1592134) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 796067) = 53747712 * k + 2388202 := by
    unfold C
    simp [show (17915904 * k + 796067) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 2388202) = 26873856 * k + 1194101 := by
    unfold C
    simp [show (53747712 * k + 2388202) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 1194101) = 80621568 * k + 3582304 := by
    unfold C
    simp [show (26873856 * k + 1194101) % 2 ≠ 0 by omega]
    omega
  have h18 : C (80621568 * k + 3582304) = 40310784 * k + 1791152 := by
    unfold C
    simp [show (80621568 * k + 3582304) % 2 = 0 by omega]
    omega
  have h19 : C (40310784 * k + 1791152) = 20155392 * k + 895576 := by
    unfold C
    simp [show (40310784 * k + 1791152) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 895576) = 10077696 * k + 447788 := by
    unfold C
    simp [show (20155392 * k + 895576) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 447788) = 5038848 * k + 223894 := by
    unfold C
    simp [show (10077696 * k + 447788) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 223894) = 2519424 * k + 111947 := by
    unfold C
    simp [show (5038848 * k + 223894) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 111947) = 7558272 * k + 335842 := by
    unfold C
    simp [show (2519424 * k + 111947) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 335842) = 3779136 * k + 167921 := by
    unfold C
    simp [show (7558272 * k + 335842) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 167921) = 11337408 * k + 503764 := by
    unfold C
    simp [show (3779136 * k + 167921) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 503764) = 5668704 * k + 251882 := by
    unfold C
    simp [show (11337408 * k + 503764) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 251882) = 2834352 * k + 125941 := by
    unfold C
    simp [show (5668704 * k + 251882) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 125941) = 8503056 * k + 377824 := by
    unfold C
    simp [show (2834352 * k + 125941) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 377824) = 4251528 * k + 188912 := by
    unfold C
    simp [show (8503056 * k + 377824) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 188912) = 2125764 * k + 94456 := by
    unfold C
    simp [show (4251528 * k + 188912) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 94456) = 1062882 * k + 47228 := by
    unfold C
    simp [show (2125764 * k + 94456) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 47228) = 531441 * k + 23614 := by
    unfold C
    simp [show (1062882 * k + 47228) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 46591) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 46591)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_46875 : ∀ k : Nat,
    iterate (1048576 * k + 46875) 32 = 531441 * k + 23758 ∧
      531441 * k + 23758 < 1048576 * k + 46875 := by
  intro k
  have h1 : C (1048576 * k + 46875) = 3145728 * k + 140626 := by
    unfold C
    simp [show (1048576 * k + 46875) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 140626) = 1572864 * k + 70313 := by
    unfold C
    simp [show (3145728 * k + 140626) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 70313) = 4718592 * k + 210940 := by
    unfold C
    simp [show (1572864 * k + 70313) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 210940) = 2359296 * k + 105470 := by
    unfold C
    simp [show (4718592 * k + 210940) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 105470) = 1179648 * k + 52735 := by
    unfold C
    simp [show (2359296 * k + 105470) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 52735) = 3538944 * k + 158206 := by
    unfold C
    simp [show (1179648 * k + 52735) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 158206) = 1769472 * k + 79103 := by
    unfold C
    simp [show (3538944 * k + 158206) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 79103) = 5308416 * k + 237310 := by
    unfold C
    simp [show (1769472 * k + 79103) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 237310) = 2654208 * k + 118655 := by
    unfold C
    simp [show (5308416 * k + 237310) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 118655) = 7962624 * k + 355966 := by
    unfold C
    simp [show (2654208 * k + 118655) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 355966) = 3981312 * k + 177983 := by
    unfold C
    simp [show (7962624 * k + 355966) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 177983) = 11943936 * k + 533950 := by
    unfold C
    simp [show (3981312 * k + 177983) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 533950) = 5971968 * k + 266975 := by
    unfold C
    simp [show (11943936 * k + 533950) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 266975) = 17915904 * k + 800926 := by
    unfold C
    simp [show (5971968 * k + 266975) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 800926) = 8957952 * k + 400463 := by
    unfold C
    simp [show (17915904 * k + 800926) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 400463) = 26873856 * k + 1201390 := by
    unfold C
    simp [show (8957952 * k + 400463) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1201390) = 13436928 * k + 600695 := by
    unfold C
    simp [show (26873856 * k + 1201390) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 600695) = 40310784 * k + 1802086 := by
    unfold C
    simp [show (13436928 * k + 600695) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1802086) = 20155392 * k + 901043 := by
    unfold C
    simp [show (40310784 * k + 1802086) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 901043) = 60466176 * k + 2703130 := by
    unfold C
    simp [show (20155392 * k + 901043) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 2703130) = 30233088 * k + 1351565 := by
    unfold C
    simp [show (60466176 * k + 2703130) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1351565) = 90699264 * k + 4054696 := by
    unfold C
    simp [show (30233088 * k + 1351565) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 4054696) = 45349632 * k + 2027348 := by
    unfold C
    simp [show (90699264 * k + 4054696) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 2027348) = 22674816 * k + 1013674 := by
    unfold C
    simp [show (45349632 * k + 2027348) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1013674) = 11337408 * k + 506837 := by
    unfold C
    simp [show (22674816 * k + 1013674) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 506837) = 34012224 * k + 1520512 := by
    unfold C
    simp [show (11337408 * k + 506837) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 1520512) = 17006112 * k + 760256 := by
    unfold C
    simp [show (34012224 * k + 1520512) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 760256) = 8503056 * k + 380128 := by
    unfold C
    simp [show (17006112 * k + 760256) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 380128) = 4251528 * k + 190064 := by
    unfold C
    simp [show (8503056 * k + 380128) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 190064) = 2125764 * k + 95032 := by
    unfold C
    simp [show (4251528 * k + 190064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 95032) = 1062882 * k + 47516 := by
    unfold C
    simp [show (2125764 * k + 95032) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 47516) = 531441 * k + 23758 := by
    unfold C
    simp [show (1062882 * k + 47516) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 46875) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 46875)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_47271 : ∀ k : Nat,
    iterate (1048576 * k + 47271) 32 = 531441 * k + 23959 ∧
      531441 * k + 23959 < 1048576 * k + 47271 := by
  intro k
  have h1 : C (1048576 * k + 47271) = 3145728 * k + 141814 := by
    unfold C
    simp [show (1048576 * k + 47271) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 141814) = 1572864 * k + 70907 := by
    unfold C
    simp [show (3145728 * k + 141814) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 70907) = 4718592 * k + 212722 := by
    unfold C
    simp [show (1572864 * k + 70907) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 212722) = 2359296 * k + 106361 := by
    unfold C
    simp [show (4718592 * k + 212722) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 106361) = 7077888 * k + 319084 := by
    unfold C
    simp [show (2359296 * k + 106361) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 319084) = 3538944 * k + 159542 := by
    unfold C
    simp [show (7077888 * k + 319084) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 159542) = 1769472 * k + 79771 := by
    unfold C
    simp [show (3538944 * k + 159542) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 79771) = 5308416 * k + 239314 := by
    unfold C
    simp [show (1769472 * k + 79771) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 239314) = 2654208 * k + 119657 := by
    unfold C
    simp [show (5308416 * k + 239314) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 119657) = 7962624 * k + 358972 := by
    unfold C
    simp [show (2654208 * k + 119657) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 358972) = 3981312 * k + 179486 := by
    unfold C
    simp [show (7962624 * k + 358972) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 179486) = 1990656 * k + 89743 := by
    unfold C
    simp [show (3981312 * k + 179486) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 89743) = 5971968 * k + 269230 := by
    unfold C
    simp [show (1990656 * k + 89743) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 269230) = 2985984 * k + 134615 := by
    unfold C
    simp [show (5971968 * k + 269230) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 134615) = 8957952 * k + 403846 := by
    unfold C
    simp [show (2985984 * k + 134615) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 403846) = 4478976 * k + 201923 := by
    unfold C
    simp [show (8957952 * k + 403846) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 201923) = 13436928 * k + 605770 := by
    unfold C
    simp [show (4478976 * k + 201923) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 605770) = 6718464 * k + 302885 := by
    unfold C
    simp [show (13436928 * k + 605770) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 302885) = 20155392 * k + 908656 := by
    unfold C
    simp [show (6718464 * k + 302885) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 908656) = 10077696 * k + 454328 := by
    unfold C
    simp [show (20155392 * k + 908656) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 454328) = 5038848 * k + 227164 := by
    unfold C
    simp [show (10077696 * k + 454328) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 227164) = 2519424 * k + 113582 := by
    unfold C
    simp [show (5038848 * k + 227164) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 113582) = 1259712 * k + 56791 := by
    unfold C
    simp [show (2519424 * k + 113582) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 56791) = 3779136 * k + 170374 := by
    unfold C
    simp [show (1259712 * k + 56791) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 170374) = 1889568 * k + 85187 := by
    unfold C
    simp [show (3779136 * k + 170374) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 85187) = 5668704 * k + 255562 := by
    unfold C
    simp [show (1889568 * k + 85187) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 255562) = 2834352 * k + 127781 := by
    unfold C
    simp [show (5668704 * k + 255562) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 127781) = 8503056 * k + 383344 := by
    unfold C
    simp [show (2834352 * k + 127781) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 383344) = 4251528 * k + 191672 := by
    unfold C
    simp [show (8503056 * k + 383344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 191672) = 2125764 * k + 95836 := by
    unfold C
    simp [show (4251528 * k + 191672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 95836) = 1062882 * k + 47918 := by
    unfold C
    simp [show (2125764 * k + 95836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 47918) = 531441 * k + 23959 := by
    unfold C
    simp [show (1062882 * k + 47918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 47271) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 47271)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_47599 : ∀ k : Nat,
    iterate (1048576 * k + 47599) 32 = 531441 * k + 24125 ∧
      531441 * k + 24125 < 1048576 * k + 47599 := by
  intro k
  have h1 : C (1048576 * k + 47599) = 3145728 * k + 142798 := by
    unfold C
    simp [show (1048576 * k + 47599) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 142798) = 1572864 * k + 71399 := by
    unfold C
    simp [show (3145728 * k + 142798) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 71399) = 4718592 * k + 214198 := by
    unfold C
    simp [show (1572864 * k + 71399) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 214198) = 2359296 * k + 107099 := by
    unfold C
    simp [show (4718592 * k + 214198) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 107099) = 7077888 * k + 321298 := by
    unfold C
    simp [show (2359296 * k + 107099) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 321298) = 3538944 * k + 160649 := by
    unfold C
    simp [show (7077888 * k + 321298) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 160649) = 10616832 * k + 481948 := by
    unfold C
    simp [show (3538944 * k + 160649) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 481948) = 5308416 * k + 240974 := by
    unfold C
    simp [show (10616832 * k + 481948) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 240974) = 2654208 * k + 120487 := by
    unfold C
    simp [show (5308416 * k + 240974) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 120487) = 7962624 * k + 361462 := by
    unfold C
    simp [show (2654208 * k + 120487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 361462) = 3981312 * k + 180731 := by
    unfold C
    simp [show (7962624 * k + 361462) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 180731) = 11943936 * k + 542194 := by
    unfold C
    simp [show (3981312 * k + 180731) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 542194) = 5971968 * k + 271097 := by
    unfold C
    simp [show (11943936 * k + 542194) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 271097) = 17915904 * k + 813292 := by
    unfold C
    simp [show (5971968 * k + 271097) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 813292) = 8957952 * k + 406646 := by
    unfold C
    simp [show (17915904 * k + 813292) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 406646) = 4478976 * k + 203323 := by
    unfold C
    simp [show (8957952 * k + 406646) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 203323) = 13436928 * k + 609970 := by
    unfold C
    simp [show (4478976 * k + 203323) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 609970) = 6718464 * k + 304985 := by
    unfold C
    simp [show (13436928 * k + 609970) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 304985) = 20155392 * k + 914956 := by
    unfold C
    simp [show (6718464 * k + 304985) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 914956) = 10077696 * k + 457478 := by
    unfold C
    simp [show (20155392 * k + 914956) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 457478) = 5038848 * k + 228739 := by
    unfold C
    simp [show (10077696 * k + 457478) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 228739) = 15116544 * k + 686218 := by
    unfold C
    simp [show (5038848 * k + 228739) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 686218) = 7558272 * k + 343109 := by
    unfold C
    simp [show (15116544 * k + 686218) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 343109) = 22674816 * k + 1029328 := by
    unfold C
    simp [show (7558272 * k + 343109) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1029328) = 11337408 * k + 514664 := by
    unfold C
    simp [show (22674816 * k + 1029328) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 514664) = 5668704 * k + 257332 := by
    unfold C
    simp [show (11337408 * k + 514664) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 257332) = 2834352 * k + 128666 := by
    unfold C
    simp [show (5668704 * k + 257332) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 128666) = 1417176 * k + 64333 := by
    unfold C
    simp [show (2834352 * k + 128666) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 64333) = 4251528 * k + 193000 := by
    unfold C
    simp [show (1417176 * k + 64333) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 193000) = 2125764 * k + 96500 := by
    unfold C
    simp [show (4251528 * k + 193000) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 96500) = 1062882 * k + 48250 := by
    unfold C
    simp [show (2125764 * k + 96500) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 48250) = 531441 * k + 24125 := by
    unfold C
    simp [show (1062882 * k + 48250) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 47599) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 47599)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_47899 : ∀ k : Nat,
    iterate (1048576 * k + 47899) 32 = 531441 * k + 24277 ∧
      531441 * k + 24277 < 1048576 * k + 47899 := by
  intro k
  have h1 : C (1048576 * k + 47899) = 3145728 * k + 143698 := by
    unfold C
    simp [show (1048576 * k + 47899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 143698) = 1572864 * k + 71849 := by
    unfold C
    simp [show (3145728 * k + 143698) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 71849) = 4718592 * k + 215548 := by
    unfold C
    simp [show (1572864 * k + 71849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 215548) = 2359296 * k + 107774 := by
    unfold C
    simp [show (4718592 * k + 215548) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 107774) = 1179648 * k + 53887 := by
    unfold C
    simp [show (2359296 * k + 107774) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 53887) = 3538944 * k + 161662 := by
    unfold C
    simp [show (1179648 * k + 53887) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 161662) = 1769472 * k + 80831 := by
    unfold C
    simp [show (3538944 * k + 161662) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 80831) = 5308416 * k + 242494 := by
    unfold C
    simp [show (1769472 * k + 80831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 242494) = 2654208 * k + 121247 := by
    unfold C
    simp [show (5308416 * k + 242494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 121247) = 7962624 * k + 363742 := by
    unfold C
    simp [show (2654208 * k + 121247) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 363742) = 3981312 * k + 181871 := by
    unfold C
    simp [show (7962624 * k + 363742) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 181871) = 11943936 * k + 545614 := by
    unfold C
    simp [show (3981312 * k + 181871) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 545614) = 5971968 * k + 272807 := by
    unfold C
    simp [show (11943936 * k + 545614) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 272807) = 17915904 * k + 818422 := by
    unfold C
    simp [show (5971968 * k + 272807) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 818422) = 8957952 * k + 409211 := by
    unfold C
    simp [show (17915904 * k + 818422) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 409211) = 26873856 * k + 1227634 := by
    unfold C
    simp [show (8957952 * k + 409211) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1227634) = 13436928 * k + 613817 := by
    unfold C
    simp [show (26873856 * k + 1227634) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 613817) = 40310784 * k + 1841452 := by
    unfold C
    simp [show (13436928 * k + 613817) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1841452) = 20155392 * k + 920726 := by
    unfold C
    simp [show (40310784 * k + 1841452) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 920726) = 10077696 * k + 460363 := by
    unfold C
    simp [show (20155392 * k + 920726) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 460363) = 30233088 * k + 1381090 := by
    unfold C
    simp [show (10077696 * k + 460363) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1381090) = 15116544 * k + 690545 := by
    unfold C
    simp [show (30233088 * k + 1381090) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 690545) = 45349632 * k + 2071636 := by
    unfold C
    simp [show (15116544 * k + 690545) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 2071636) = 22674816 * k + 1035818 := by
    unfold C
    simp [show (45349632 * k + 2071636) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1035818) = 11337408 * k + 517909 := by
    unfold C
    simp [show (22674816 * k + 1035818) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 517909) = 34012224 * k + 1553728 := by
    unfold C
    simp [show (11337408 * k + 517909) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 1553728) = 17006112 * k + 776864 := by
    unfold C
    simp [show (34012224 * k + 1553728) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 776864) = 8503056 * k + 388432 := by
    unfold C
    simp [show (17006112 * k + 776864) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 388432) = 4251528 * k + 194216 := by
    unfold C
    simp [show (8503056 * k + 388432) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 194216) = 2125764 * k + 97108 := by
    unfold C
    simp [show (4251528 * k + 194216) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 97108) = 1062882 * k + 48554 := by
    unfold C
    simp [show (2125764 * k + 97108) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 48554) = 531441 * k + 24277 := by
    unfold C
    simp [show (1062882 * k + 48554) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 47899) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 47899)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_48283 : ∀ k : Nat,
    iterate (1048576 * k + 48283) 32 = 531441 * k + 24472 ∧
      531441 * k + 24472 < 1048576 * k + 48283 := by
  intro k
  have h1 : C (1048576 * k + 48283) = 3145728 * k + 144850 := by
    unfold C
    simp [show (1048576 * k + 48283) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 144850) = 1572864 * k + 72425 := by
    unfold C
    simp [show (3145728 * k + 144850) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 72425) = 4718592 * k + 217276 := by
    unfold C
    simp [show (1572864 * k + 72425) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 217276) = 2359296 * k + 108638 := by
    unfold C
    simp [show (4718592 * k + 217276) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 108638) = 1179648 * k + 54319 := by
    unfold C
    simp [show (2359296 * k + 108638) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 54319) = 3538944 * k + 162958 := by
    unfold C
    simp [show (1179648 * k + 54319) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 162958) = 1769472 * k + 81479 := by
    unfold C
    simp [show (3538944 * k + 162958) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 81479) = 5308416 * k + 244438 := by
    unfold C
    simp [show (1769472 * k + 81479) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 244438) = 2654208 * k + 122219 := by
    unfold C
    simp [show (5308416 * k + 244438) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 122219) = 7962624 * k + 366658 := by
    unfold C
    simp [show (2654208 * k + 122219) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 366658) = 3981312 * k + 183329 := by
    unfold C
    simp [show (7962624 * k + 366658) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 183329) = 11943936 * k + 549988 := by
    unfold C
    simp [show (3981312 * k + 183329) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 549988) = 5971968 * k + 274994 := by
    unfold C
    simp [show (11943936 * k + 549988) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 274994) = 2985984 * k + 137497 := by
    unfold C
    simp [show (5971968 * k + 274994) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 137497) = 8957952 * k + 412492 := by
    unfold C
    simp [show (2985984 * k + 137497) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 412492) = 4478976 * k + 206246 := by
    unfold C
    simp [show (8957952 * k + 412492) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 206246) = 2239488 * k + 103123 := by
    unfold C
    simp [show (4478976 * k + 206246) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 103123) = 6718464 * k + 309370 := by
    unfold C
    simp [show (2239488 * k + 103123) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 309370) = 3359232 * k + 154685 := by
    unfold C
    simp [show (6718464 * k + 309370) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 154685) = 10077696 * k + 464056 := by
    unfold C
    simp [show (3359232 * k + 154685) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 464056) = 5038848 * k + 232028 := by
    unfold C
    simp [show (10077696 * k + 464056) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 232028) = 2519424 * k + 116014 := by
    unfold C
    simp [show (5038848 * k + 232028) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 116014) = 1259712 * k + 58007 := by
    unfold C
    simp [show (2519424 * k + 116014) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 58007) = 3779136 * k + 174022 := by
    unfold C
    simp [show (1259712 * k + 58007) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 174022) = 1889568 * k + 87011 := by
    unfold C
    simp [show (3779136 * k + 174022) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 87011) = 5668704 * k + 261034 := by
    unfold C
    simp [show (1889568 * k + 87011) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 261034) = 2834352 * k + 130517 := by
    unfold C
    simp [show (5668704 * k + 261034) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 130517) = 8503056 * k + 391552 := by
    unfold C
    simp [show (2834352 * k + 130517) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 391552) = 4251528 * k + 195776 := by
    unfold C
    simp [show (8503056 * k + 391552) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 195776) = 2125764 * k + 97888 := by
    unfold C
    simp [show (4251528 * k + 195776) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 97888) = 1062882 * k + 48944 := by
    unfold C
    simp [show (2125764 * k + 97888) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 48944) = 531441 * k + 24472 := by
    unfold C
    simp [show (1062882 * k + 48944) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 48283) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 48283)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_48487 : ∀ k : Nat,
    iterate (1048576 * k + 48487) 32 = 531441 * k + 24575 ∧
      531441 * k + 24575 < 1048576 * k + 48487 := by
  intro k
  have h1 : C (1048576 * k + 48487) = 3145728 * k + 145462 := by
    unfold C
    simp [show (1048576 * k + 48487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 145462) = 1572864 * k + 72731 := by
    unfold C
    simp [show (3145728 * k + 145462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 72731) = 4718592 * k + 218194 := by
    unfold C
    simp [show (1572864 * k + 72731) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 218194) = 2359296 * k + 109097 := by
    unfold C
    simp [show (4718592 * k + 218194) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 109097) = 7077888 * k + 327292 := by
    unfold C
    simp [show (2359296 * k + 109097) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 327292) = 3538944 * k + 163646 := by
    unfold C
    simp [show (7077888 * k + 327292) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 163646) = 1769472 * k + 81823 := by
    unfold C
    simp [show (3538944 * k + 163646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 81823) = 5308416 * k + 245470 := by
    unfold C
    simp [show (1769472 * k + 81823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 245470) = 2654208 * k + 122735 := by
    unfold C
    simp [show (5308416 * k + 245470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 122735) = 7962624 * k + 368206 := by
    unfold C
    simp [show (2654208 * k + 122735) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 368206) = 3981312 * k + 184103 := by
    unfold C
    simp [show (7962624 * k + 368206) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 184103) = 11943936 * k + 552310 := by
    unfold C
    simp [show (3981312 * k + 184103) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 552310) = 5971968 * k + 276155 := by
    unfold C
    simp [show (11943936 * k + 552310) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 276155) = 17915904 * k + 828466 := by
    unfold C
    simp [show (5971968 * k + 276155) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 828466) = 8957952 * k + 414233 := by
    unfold C
    simp [show (17915904 * k + 828466) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 414233) = 26873856 * k + 1242700 := by
    unfold C
    simp [show (8957952 * k + 414233) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1242700) = 13436928 * k + 621350 := by
    unfold C
    simp [show (26873856 * k + 1242700) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 621350) = 6718464 * k + 310675 := by
    unfold C
    simp [show (13436928 * k + 621350) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 310675) = 20155392 * k + 932026 := by
    unfold C
    simp [show (6718464 * k + 310675) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 932026) = 10077696 * k + 466013 := by
    unfold C
    simp [show (20155392 * k + 932026) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 466013) = 30233088 * k + 1398040 := by
    unfold C
    simp [show (10077696 * k + 466013) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1398040) = 15116544 * k + 699020 := by
    unfold C
    simp [show (30233088 * k + 1398040) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 699020) = 7558272 * k + 349510 := by
    unfold C
    simp [show (15116544 * k + 699020) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 349510) = 3779136 * k + 174755 := by
    unfold C
    simp [show (7558272 * k + 349510) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 174755) = 11337408 * k + 524266 := by
    unfold C
    simp [show (3779136 * k + 174755) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 524266) = 5668704 * k + 262133 := by
    unfold C
    simp [show (11337408 * k + 524266) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 262133) = 17006112 * k + 786400 := by
    unfold C
    simp [show (5668704 * k + 262133) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 786400) = 8503056 * k + 393200 := by
    unfold C
    simp [show (17006112 * k + 786400) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 393200) = 4251528 * k + 196600 := by
    unfold C
    simp [show (8503056 * k + 393200) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 196600) = 2125764 * k + 98300 := by
    unfold C
    simp [show (4251528 * k + 196600) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 98300) = 1062882 * k + 49150 := by
    unfold C
    simp [show (2125764 * k + 98300) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 49150) = 531441 * k + 24575 := by
    unfold C
    simp [show (1062882 * k + 49150) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 48487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 48487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_48539 : ∀ k : Nat,
    iterate (1048576 * k + 48539) 32 = 531441 * k + 24602 ∧
      531441 * k + 24602 < 1048576 * k + 48539 := by
  intro k
  have h1 : C (1048576 * k + 48539) = 3145728 * k + 145618 := by
    unfold C
    simp [show (1048576 * k + 48539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 145618) = 1572864 * k + 72809 := by
    unfold C
    simp [show (3145728 * k + 145618) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 72809) = 4718592 * k + 218428 := by
    unfold C
    simp [show (1572864 * k + 72809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 218428) = 2359296 * k + 109214 := by
    unfold C
    simp [show (4718592 * k + 218428) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 109214) = 1179648 * k + 54607 := by
    unfold C
    simp [show (2359296 * k + 109214) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 54607) = 3538944 * k + 163822 := by
    unfold C
    simp [show (1179648 * k + 54607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 163822) = 1769472 * k + 81911 := by
    unfold C
    simp [show (3538944 * k + 163822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 81911) = 5308416 * k + 245734 := by
    unfold C
    simp [show (1769472 * k + 81911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 245734) = 2654208 * k + 122867 := by
    unfold C
    simp [show (5308416 * k + 245734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 122867) = 7962624 * k + 368602 := by
    unfold C
    simp [show (2654208 * k + 122867) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 368602) = 3981312 * k + 184301 := by
    unfold C
    simp [show (7962624 * k + 368602) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 184301) = 11943936 * k + 552904 := by
    unfold C
    simp [show (3981312 * k + 184301) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 552904) = 5971968 * k + 276452 := by
    unfold C
    simp [show (11943936 * k + 552904) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 276452) = 2985984 * k + 138226 := by
    unfold C
    simp [show (5971968 * k + 276452) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 138226) = 1492992 * k + 69113 := by
    unfold C
    simp [show (2985984 * k + 138226) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 69113) = 4478976 * k + 207340 := by
    unfold C
    simp [show (1492992 * k + 69113) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 207340) = 2239488 * k + 103670 := by
    unfold C
    simp [show (4478976 * k + 207340) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 103670) = 1119744 * k + 51835 := by
    unfold C
    simp [show (2239488 * k + 103670) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 51835) = 3359232 * k + 155506 := by
    unfold C
    simp [show (1119744 * k + 51835) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 155506) = 1679616 * k + 77753 := by
    unfold C
    simp [show (3359232 * k + 155506) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 77753) = 5038848 * k + 233260 := by
    unfold C
    simp [show (1679616 * k + 77753) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 233260) = 2519424 * k + 116630 := by
    unfold C
    simp [show (5038848 * k + 233260) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 116630) = 1259712 * k + 58315 := by
    unfold C
    simp [show (2519424 * k + 116630) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 58315) = 3779136 * k + 174946 := by
    unfold C
    simp [show (1259712 * k + 58315) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 174946) = 1889568 * k + 87473 := by
    unfold C
    simp [show (3779136 * k + 174946) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 87473) = 5668704 * k + 262420 := by
    unfold C
    simp [show (1889568 * k + 87473) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 262420) = 2834352 * k + 131210 := by
    unfold C
    simp [show (5668704 * k + 262420) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 131210) = 1417176 * k + 65605 := by
    unfold C
    simp [show (2834352 * k + 131210) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 65605) = 4251528 * k + 196816 := by
    unfold C
    simp [show (1417176 * k + 65605) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 196816) = 2125764 * k + 98408 := by
    unfold C
    simp [show (4251528 * k + 196816) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 98408) = 1062882 * k + 49204 := by
    unfold C
    simp [show (2125764 * k + 98408) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 49204) = 531441 * k + 24602 := by
    unfold C
    simp [show (1062882 * k + 49204) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 48539) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 48539)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_49147 : ∀ k : Nat,
    iterate (1048576 * k + 49147) 32 = 531441 * k + 24910 ∧
      531441 * k + 24910 < 1048576 * k + 49147 := by
  intro k
  have h1 : C (1048576 * k + 49147) = 3145728 * k + 147442 := by
    unfold C
    simp [show (1048576 * k + 49147) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 147442) = 1572864 * k + 73721 := by
    unfold C
    simp [show (3145728 * k + 147442) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 73721) = 4718592 * k + 221164 := by
    unfold C
    simp [show (1572864 * k + 73721) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 221164) = 2359296 * k + 110582 := by
    unfold C
    simp [show (4718592 * k + 221164) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 110582) = 1179648 * k + 55291 := by
    unfold C
    simp [show (2359296 * k + 110582) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 55291) = 3538944 * k + 165874 := by
    unfold C
    simp [show (1179648 * k + 55291) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 165874) = 1769472 * k + 82937 := by
    unfold C
    simp [show (3538944 * k + 165874) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 82937) = 5308416 * k + 248812 := by
    unfold C
    simp [show (1769472 * k + 82937) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 248812) = 2654208 * k + 124406 := by
    unfold C
    simp [show (5308416 * k + 248812) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 124406) = 1327104 * k + 62203 := by
    unfold C
    simp [show (2654208 * k + 124406) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 62203) = 3981312 * k + 186610 := by
    unfold C
    simp [show (1327104 * k + 62203) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 186610) = 1990656 * k + 93305 := by
    unfold C
    simp [show (3981312 * k + 186610) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 93305) = 5971968 * k + 279916 := by
    unfold C
    simp [show (1990656 * k + 93305) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 279916) = 2985984 * k + 139958 := by
    unfold C
    simp [show (5971968 * k + 279916) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 139958) = 1492992 * k + 69979 := by
    unfold C
    simp [show (2985984 * k + 139958) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 69979) = 4478976 * k + 209938 := by
    unfold C
    simp [show (1492992 * k + 69979) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 209938) = 2239488 * k + 104969 := by
    unfold C
    simp [show (4478976 * k + 209938) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 104969) = 6718464 * k + 314908 := by
    unfold C
    simp [show (2239488 * k + 104969) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 314908) = 3359232 * k + 157454 := by
    unfold C
    simp [show (6718464 * k + 314908) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 157454) = 1679616 * k + 78727 := by
    unfold C
    simp [show (3359232 * k + 157454) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 78727) = 5038848 * k + 236182 := by
    unfold C
    simp [show (1679616 * k + 78727) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 236182) = 2519424 * k + 118091 := by
    unfold C
    simp [show (5038848 * k + 236182) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 118091) = 7558272 * k + 354274 := by
    unfold C
    simp [show (2519424 * k + 118091) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 354274) = 3779136 * k + 177137 := by
    unfold C
    simp [show (7558272 * k + 354274) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 177137) = 11337408 * k + 531412 := by
    unfold C
    simp [show (3779136 * k + 177137) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 531412) = 5668704 * k + 265706 := by
    unfold C
    simp [show (11337408 * k + 531412) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 265706) = 2834352 * k + 132853 := by
    unfold C
    simp [show (5668704 * k + 265706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 132853) = 8503056 * k + 398560 := by
    unfold C
    simp [show (2834352 * k + 132853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 398560) = 4251528 * k + 199280 := by
    unfold C
    simp [show (8503056 * k + 398560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 199280) = 2125764 * k + 99640 := by
    unfold C
    simp [show (4251528 * k + 199280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 99640) = 1062882 * k + 49820 := by
    unfold C
    simp [show (2125764 * k + 99640) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 49820) = 531441 * k + 24910 := by
    unfold C
    simp [show (1062882 * k + 49820) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 49147) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 49147)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_49179 : ∀ k : Nat,
    iterate (1048576 * k + 49179) 32 = 531441 * k + 24926 ∧
      531441 * k + 24926 < 1048576 * k + 49179 := by
  intro k
  have h1 : C (1048576 * k + 49179) = 3145728 * k + 147538 := by
    unfold C
    simp [show (1048576 * k + 49179) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 147538) = 1572864 * k + 73769 := by
    unfold C
    simp [show (3145728 * k + 147538) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 73769) = 4718592 * k + 221308 := by
    unfold C
    simp [show (1572864 * k + 73769) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 221308) = 2359296 * k + 110654 := by
    unfold C
    simp [show (4718592 * k + 221308) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 110654) = 1179648 * k + 55327 := by
    unfold C
    simp [show (2359296 * k + 110654) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 55327) = 3538944 * k + 165982 := by
    unfold C
    simp [show (1179648 * k + 55327) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 165982) = 1769472 * k + 82991 := by
    unfold C
    simp [show (3538944 * k + 165982) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 82991) = 5308416 * k + 248974 := by
    unfold C
    simp [show (1769472 * k + 82991) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 248974) = 2654208 * k + 124487 := by
    unfold C
    simp [show (5308416 * k + 248974) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 124487) = 7962624 * k + 373462 := by
    unfold C
    simp [show (2654208 * k + 124487) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 373462) = 3981312 * k + 186731 := by
    unfold C
    simp [show (7962624 * k + 373462) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 186731) = 11943936 * k + 560194 := by
    unfold C
    simp [show (3981312 * k + 186731) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 560194) = 5971968 * k + 280097 := by
    unfold C
    simp [show (11943936 * k + 560194) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 280097) = 17915904 * k + 840292 := by
    unfold C
    simp [show (5971968 * k + 280097) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 840292) = 8957952 * k + 420146 := by
    unfold C
    simp [show (17915904 * k + 840292) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 420146) = 4478976 * k + 210073 := by
    unfold C
    simp [show (8957952 * k + 420146) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 210073) = 13436928 * k + 630220 := by
    unfold C
    simp [show (4478976 * k + 210073) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 630220) = 6718464 * k + 315110 := by
    unfold C
    simp [show (13436928 * k + 630220) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 315110) = 3359232 * k + 157555 := by
    unfold C
    simp [show (6718464 * k + 315110) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 157555) = 10077696 * k + 472666 := by
    unfold C
    simp [show (3359232 * k + 157555) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 472666) = 5038848 * k + 236333 := by
    unfold C
    simp [show (10077696 * k + 472666) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 236333) = 15116544 * k + 709000 := by
    unfold C
    simp [show (5038848 * k + 236333) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 709000) = 7558272 * k + 354500 := by
    unfold C
    simp [show (15116544 * k + 709000) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 354500) = 3779136 * k + 177250 := by
    unfold C
    simp [show (7558272 * k + 354500) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 177250) = 1889568 * k + 88625 := by
    unfold C
    simp [show (3779136 * k + 177250) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 88625) = 5668704 * k + 265876 := by
    unfold C
    simp [show (1889568 * k + 88625) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 265876) = 2834352 * k + 132938 := by
    unfold C
    simp [show (5668704 * k + 265876) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 132938) = 1417176 * k + 66469 := by
    unfold C
    simp [show (2834352 * k + 132938) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 66469) = 4251528 * k + 199408 := by
    unfold C
    simp [show (1417176 * k + 66469) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 199408) = 2125764 * k + 99704 := by
    unfold C
    simp [show (4251528 * k + 199408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 99704) = 1062882 * k + 49852 := by
    unfold C
    simp [show (2125764 * k + 99704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 49852) = 531441 * k + 24926 := by
    unfold C
    simp [show (1062882 * k + 49852) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 49179) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 49179)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_49307 : ∀ k : Nat,
    iterate (1048576 * k + 49307) 32 = 531441 * k + 24991 ∧
      531441 * k + 24991 < 1048576 * k + 49307 := by
  intro k
  have h1 : C (1048576 * k + 49307) = 3145728 * k + 147922 := by
    unfold C
    simp [show (1048576 * k + 49307) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 147922) = 1572864 * k + 73961 := by
    unfold C
    simp [show (3145728 * k + 147922) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 73961) = 4718592 * k + 221884 := by
    unfold C
    simp [show (1572864 * k + 73961) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 221884) = 2359296 * k + 110942 := by
    unfold C
    simp [show (4718592 * k + 221884) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 110942) = 1179648 * k + 55471 := by
    unfold C
    simp [show (2359296 * k + 110942) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 55471) = 3538944 * k + 166414 := by
    unfold C
    simp [show (1179648 * k + 55471) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 166414) = 1769472 * k + 83207 := by
    unfold C
    simp [show (3538944 * k + 166414) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 83207) = 5308416 * k + 249622 := by
    unfold C
    simp [show (1769472 * k + 83207) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 249622) = 2654208 * k + 124811 := by
    unfold C
    simp [show (5308416 * k + 249622) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 124811) = 7962624 * k + 374434 := by
    unfold C
    simp [show (2654208 * k + 124811) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 374434) = 3981312 * k + 187217 := by
    unfold C
    simp [show (7962624 * k + 374434) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 187217) = 11943936 * k + 561652 := by
    unfold C
    simp [show (3981312 * k + 187217) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 561652) = 5971968 * k + 280826 := by
    unfold C
    simp [show (11943936 * k + 561652) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 280826) = 2985984 * k + 140413 := by
    unfold C
    simp [show (5971968 * k + 280826) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 140413) = 8957952 * k + 421240 := by
    unfold C
    simp [show (2985984 * k + 140413) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 421240) = 4478976 * k + 210620 := by
    unfold C
    simp [show (8957952 * k + 421240) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 210620) = 2239488 * k + 105310 := by
    unfold C
    simp [show (4478976 * k + 210620) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 105310) = 1119744 * k + 52655 := by
    unfold C
    simp [show (2239488 * k + 105310) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 52655) = 3359232 * k + 157966 := by
    unfold C
    simp [show (1119744 * k + 52655) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 157966) = 1679616 * k + 78983 := by
    unfold C
    simp [show (3359232 * k + 157966) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 78983) = 5038848 * k + 236950 := by
    unfold C
    simp [show (1679616 * k + 78983) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 236950) = 2519424 * k + 118475 := by
    unfold C
    simp [show (5038848 * k + 236950) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 118475) = 7558272 * k + 355426 := by
    unfold C
    simp [show (2519424 * k + 118475) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 355426) = 3779136 * k + 177713 := by
    unfold C
    simp [show (7558272 * k + 355426) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 177713) = 11337408 * k + 533140 := by
    unfold C
    simp [show (3779136 * k + 177713) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 533140) = 5668704 * k + 266570 := by
    unfold C
    simp [show (11337408 * k + 533140) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 266570) = 2834352 * k + 133285 := by
    unfold C
    simp [show (5668704 * k + 266570) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 133285) = 8503056 * k + 399856 := by
    unfold C
    simp [show (2834352 * k + 133285) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 399856) = 4251528 * k + 199928 := by
    unfold C
    simp [show (8503056 * k + 399856) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 199928) = 2125764 * k + 99964 := by
    unfold C
    simp [show (4251528 * k + 199928) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 99964) = 1062882 * k + 49982 := by
    unfold C
    simp [show (2125764 * k + 99964) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 49982) = 531441 * k + 24991 := by
    unfold C
    simp [show (1062882 * k + 49982) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 49307) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 49307)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_49947 : ∀ k : Nat,
    iterate (1048576 * k + 49947) 32 = 531441 * k + 25315 ∧
      531441 * k + 25315 < 1048576 * k + 49947 := by
  intro k
  have h1 : C (1048576 * k + 49947) = 3145728 * k + 149842 := by
    unfold C
    simp [show (1048576 * k + 49947) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 149842) = 1572864 * k + 74921 := by
    unfold C
    simp [show (3145728 * k + 149842) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 74921) = 4718592 * k + 224764 := by
    unfold C
    simp [show (1572864 * k + 74921) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 224764) = 2359296 * k + 112382 := by
    unfold C
    simp [show (4718592 * k + 224764) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 112382) = 1179648 * k + 56191 := by
    unfold C
    simp [show (2359296 * k + 112382) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 56191) = 3538944 * k + 168574 := by
    unfold C
    simp [show (1179648 * k + 56191) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 168574) = 1769472 * k + 84287 := by
    unfold C
    simp [show (3538944 * k + 168574) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 84287) = 5308416 * k + 252862 := by
    unfold C
    simp [show (1769472 * k + 84287) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 252862) = 2654208 * k + 126431 := by
    unfold C
    simp [show (5308416 * k + 252862) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 126431) = 7962624 * k + 379294 := by
    unfold C
    simp [show (2654208 * k + 126431) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 379294) = 3981312 * k + 189647 := by
    unfold C
    simp [show (7962624 * k + 379294) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 189647) = 11943936 * k + 568942 := by
    unfold C
    simp [show (3981312 * k + 189647) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 568942) = 5971968 * k + 284471 := by
    unfold C
    simp [show (11943936 * k + 568942) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 284471) = 17915904 * k + 853414 := by
    unfold C
    simp [show (5971968 * k + 284471) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 853414) = 8957952 * k + 426707 := by
    unfold C
    simp [show (17915904 * k + 853414) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 426707) = 26873856 * k + 1280122 := by
    unfold C
    simp [show (8957952 * k + 426707) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1280122) = 13436928 * k + 640061 := by
    unfold C
    simp [show (26873856 * k + 1280122) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 640061) = 40310784 * k + 1920184 := by
    unfold C
    simp [show (13436928 * k + 640061) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1920184) = 20155392 * k + 960092 := by
    unfold C
    simp [show (40310784 * k + 1920184) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 960092) = 10077696 * k + 480046 := by
    unfold C
    simp [show (20155392 * k + 960092) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 480046) = 5038848 * k + 240023 := by
    unfold C
    simp [show (10077696 * k + 480046) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 240023) = 15116544 * k + 720070 := by
    unfold C
    simp [show (5038848 * k + 240023) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 720070) = 7558272 * k + 360035 := by
    unfold C
    simp [show (15116544 * k + 720070) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 360035) = 22674816 * k + 1080106 := by
    unfold C
    simp [show (7558272 * k + 360035) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1080106) = 11337408 * k + 540053 := by
    unfold C
    simp [show (22674816 * k + 1080106) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 540053) = 34012224 * k + 1620160 := by
    unfold C
    simp [show (11337408 * k + 540053) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 1620160) = 17006112 * k + 810080 := by
    unfold C
    simp [show (34012224 * k + 1620160) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 810080) = 8503056 * k + 405040 := by
    unfold C
    simp [show (17006112 * k + 810080) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 405040) = 4251528 * k + 202520 := by
    unfold C
    simp [show (8503056 * k + 405040) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 202520) = 2125764 * k + 101260 := by
    unfold C
    simp [show (4251528 * k + 202520) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 101260) = 1062882 * k + 50630 := by
    unfold C
    simp [show (2125764 * k + 101260) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 50630) = 531441 * k + 25315 := by
    unfold C
    simp [show (1062882 * k + 50630) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 49947) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 49947)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_50639 : ∀ k : Nat,
    iterate (1048576 * k + 50639) 32 = 531441 * k + 25666 ∧
      531441 * k + 25666 < 1048576 * k + 50639 := by
  intro k
  have h1 : C (1048576 * k + 50639) = 3145728 * k + 151918 := by
    unfold C
    simp [show (1048576 * k + 50639) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 151918) = 1572864 * k + 75959 := by
    unfold C
    simp [show (3145728 * k + 151918) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 75959) = 4718592 * k + 227878 := by
    unfold C
    simp [show (1572864 * k + 75959) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 227878) = 2359296 * k + 113939 := by
    unfold C
    simp [show (4718592 * k + 227878) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 113939) = 7077888 * k + 341818 := by
    unfold C
    simp [show (2359296 * k + 113939) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 341818) = 3538944 * k + 170909 := by
    unfold C
    simp [show (7077888 * k + 341818) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 170909) = 10616832 * k + 512728 := by
    unfold C
    simp [show (3538944 * k + 170909) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 512728) = 5308416 * k + 256364 := by
    unfold C
    simp [show (10616832 * k + 512728) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 256364) = 2654208 * k + 128182 := by
    unfold C
    simp [show (5308416 * k + 256364) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 128182) = 1327104 * k + 64091 := by
    unfold C
    simp [show (2654208 * k + 128182) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 64091) = 3981312 * k + 192274 := by
    unfold C
    simp [show (1327104 * k + 64091) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 192274) = 1990656 * k + 96137 := by
    unfold C
    simp [show (3981312 * k + 192274) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 96137) = 5971968 * k + 288412 := by
    unfold C
    simp [show (1990656 * k + 96137) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 288412) = 2985984 * k + 144206 := by
    unfold C
    simp [show (5971968 * k + 288412) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 144206) = 1492992 * k + 72103 := by
    unfold C
    simp [show (2985984 * k + 144206) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 72103) = 4478976 * k + 216310 := by
    unfold C
    simp [show (1492992 * k + 72103) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 216310) = 2239488 * k + 108155 := by
    unfold C
    simp [show (4478976 * k + 216310) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 108155) = 6718464 * k + 324466 := by
    unfold C
    simp [show (2239488 * k + 108155) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 324466) = 3359232 * k + 162233 := by
    unfold C
    simp [show (6718464 * k + 324466) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 162233) = 10077696 * k + 486700 := by
    unfold C
    simp [show (3359232 * k + 162233) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 486700) = 5038848 * k + 243350 := by
    unfold C
    simp [show (10077696 * k + 486700) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 243350) = 2519424 * k + 121675 := by
    unfold C
    simp [show (5038848 * k + 243350) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 121675) = 7558272 * k + 365026 := by
    unfold C
    simp [show (2519424 * k + 121675) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 365026) = 3779136 * k + 182513 := by
    unfold C
    simp [show (7558272 * k + 365026) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 182513) = 11337408 * k + 547540 := by
    unfold C
    simp [show (3779136 * k + 182513) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 547540) = 5668704 * k + 273770 := by
    unfold C
    simp [show (11337408 * k + 547540) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 273770) = 2834352 * k + 136885 := by
    unfold C
    simp [show (5668704 * k + 273770) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 136885) = 8503056 * k + 410656 := by
    unfold C
    simp [show (2834352 * k + 136885) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 410656) = 4251528 * k + 205328 := by
    unfold C
    simp [show (8503056 * k + 410656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 205328) = 2125764 * k + 102664 := by
    unfold C
    simp [show (4251528 * k + 205328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 102664) = 1062882 * k + 51332 := by
    unfold C
    simp [show (2125764 * k + 102664) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 51332) = 531441 * k + 25666 := by
    unfold C
    simp [show (1062882 * k + 51332) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 50639) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 50639)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_50671 : ∀ k : Nat,
    iterate (1048576 * k + 50671) 32 = 531441 * k + 25682 ∧
      531441 * k + 25682 < 1048576 * k + 50671 := by
  intro k
  have h1 : C (1048576 * k + 50671) = 3145728 * k + 152014 := by
    unfold C
    simp [show (1048576 * k + 50671) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 152014) = 1572864 * k + 76007 := by
    unfold C
    simp [show (3145728 * k + 152014) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 76007) = 4718592 * k + 228022 := by
    unfold C
    simp [show (1572864 * k + 76007) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 228022) = 2359296 * k + 114011 := by
    unfold C
    simp [show (4718592 * k + 228022) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 114011) = 7077888 * k + 342034 := by
    unfold C
    simp [show (2359296 * k + 114011) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 342034) = 3538944 * k + 171017 := by
    unfold C
    simp [show (7077888 * k + 342034) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 171017) = 10616832 * k + 513052 := by
    unfold C
    simp [show (3538944 * k + 171017) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 513052) = 5308416 * k + 256526 := by
    unfold C
    simp [show (10616832 * k + 513052) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 256526) = 2654208 * k + 128263 := by
    unfold C
    simp [show (5308416 * k + 256526) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 128263) = 7962624 * k + 384790 := by
    unfold C
    simp [show (2654208 * k + 128263) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 384790) = 3981312 * k + 192395 := by
    unfold C
    simp [show (7962624 * k + 384790) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 192395) = 11943936 * k + 577186 := by
    unfold C
    simp [show (3981312 * k + 192395) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 577186) = 5971968 * k + 288593 := by
    unfold C
    simp [show (11943936 * k + 577186) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 288593) = 17915904 * k + 865780 := by
    unfold C
    simp [show (5971968 * k + 288593) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 865780) = 8957952 * k + 432890 := by
    unfold C
    simp [show (17915904 * k + 865780) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 432890) = 4478976 * k + 216445 := by
    unfold C
    simp [show (8957952 * k + 432890) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 216445) = 13436928 * k + 649336 := by
    unfold C
    simp [show (4478976 * k + 216445) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 649336) = 6718464 * k + 324668 := by
    unfold C
    simp [show (13436928 * k + 649336) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 324668) = 3359232 * k + 162334 := by
    unfold C
    simp [show (6718464 * k + 324668) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 162334) = 1679616 * k + 81167 := by
    unfold C
    simp [show (3359232 * k + 162334) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 81167) = 5038848 * k + 243502 := by
    unfold C
    simp [show (1679616 * k + 81167) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 243502) = 2519424 * k + 121751 := by
    unfold C
    simp [show (5038848 * k + 243502) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 121751) = 7558272 * k + 365254 := by
    unfold C
    simp [show (2519424 * k + 121751) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 365254) = 3779136 * k + 182627 := by
    unfold C
    simp [show (7558272 * k + 365254) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 182627) = 11337408 * k + 547882 := by
    unfold C
    simp [show (3779136 * k + 182627) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 547882) = 5668704 * k + 273941 := by
    unfold C
    simp [show (11337408 * k + 547882) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 273941) = 17006112 * k + 821824 := by
    unfold C
    simp [show (5668704 * k + 273941) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 821824) = 8503056 * k + 410912 := by
    unfold C
    simp [show (17006112 * k + 821824) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 410912) = 4251528 * k + 205456 := by
    unfold C
    simp [show (8503056 * k + 410912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 205456) = 2125764 * k + 102728 := by
    unfold C
    simp [show (4251528 * k + 205456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 102728) = 1062882 * k + 51364 := by
    unfold C
    simp [show (2125764 * k + 102728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 51364) = 531441 * k + 25682 := by
    unfold C
    simp [show (1062882 * k + 51364) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 50671) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 50671)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_51263 : ∀ k : Nat,
    iterate (1048576 * k + 51263) 32 = 531441 * k + 25982 ∧
      531441 * k + 25982 < 1048576 * k + 51263 := by
  intro k
  have h1 : C (1048576 * k + 51263) = 3145728 * k + 153790 := by
    unfold C
    simp [show (1048576 * k + 51263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 153790) = 1572864 * k + 76895 := by
    unfold C
    simp [show (3145728 * k + 153790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 76895) = 4718592 * k + 230686 := by
    unfold C
    simp [show (1572864 * k + 76895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 230686) = 2359296 * k + 115343 := by
    unfold C
    simp [show (4718592 * k + 230686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 115343) = 7077888 * k + 346030 := by
    unfold C
    simp [show (2359296 * k + 115343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 346030) = 3538944 * k + 173015 := by
    unfold C
    simp [show (7077888 * k + 346030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 173015) = 10616832 * k + 519046 := by
    unfold C
    simp [show (3538944 * k + 173015) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 519046) = 5308416 * k + 259523 := by
    unfold C
    simp [show (10616832 * k + 519046) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 259523) = 15925248 * k + 778570 := by
    unfold C
    simp [show (5308416 * k + 259523) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 778570) = 7962624 * k + 389285 := by
    unfold C
    simp [show (15925248 * k + 778570) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 389285) = 23887872 * k + 1167856 := by
    unfold C
    simp [show (7962624 * k + 389285) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 1167856) = 11943936 * k + 583928 := by
    unfold C
    simp [show (23887872 * k + 1167856) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 583928) = 5971968 * k + 291964 := by
    unfold C
    simp [show (11943936 * k + 583928) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 291964) = 2985984 * k + 145982 := by
    unfold C
    simp [show (5971968 * k + 291964) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 145982) = 1492992 * k + 72991 := by
    unfold C
    simp [show (2985984 * k + 145982) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 72991) = 4478976 * k + 218974 := by
    unfold C
    simp [show (1492992 * k + 72991) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 218974) = 2239488 * k + 109487 := by
    unfold C
    simp [show (4478976 * k + 218974) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 109487) = 6718464 * k + 328462 := by
    unfold C
    simp [show (2239488 * k + 109487) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 328462) = 3359232 * k + 164231 := by
    unfold C
    simp [show (6718464 * k + 328462) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 164231) = 10077696 * k + 492694 := by
    unfold C
    simp [show (3359232 * k + 164231) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 492694) = 5038848 * k + 246347 := by
    unfold C
    simp [show (10077696 * k + 492694) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 246347) = 15116544 * k + 739042 := by
    unfold C
    simp [show (5038848 * k + 246347) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 739042) = 7558272 * k + 369521 := by
    unfold C
    simp [show (15116544 * k + 739042) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 369521) = 22674816 * k + 1108564 := by
    unfold C
    simp [show (7558272 * k + 369521) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1108564) = 11337408 * k + 554282 := by
    unfold C
    simp [show (22674816 * k + 1108564) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 554282) = 5668704 * k + 277141 := by
    unfold C
    simp [show (11337408 * k + 554282) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 277141) = 17006112 * k + 831424 := by
    unfold C
    simp [show (5668704 * k + 277141) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 831424) = 8503056 * k + 415712 := by
    unfold C
    simp [show (17006112 * k + 831424) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 415712) = 4251528 * k + 207856 := by
    unfold C
    simp [show (8503056 * k + 415712) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 207856) = 2125764 * k + 103928 := by
    unfold C
    simp [show (4251528 * k + 207856) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 103928) = 1062882 * k + 51964 := by
    unfold C
    simp [show (2125764 * k + 103928) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 51964) = 531441 * k + 25982 := by
    unfold C
    simp [show (1062882 * k + 51964) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 51263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 51263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_51559 : ∀ k : Nat,
    iterate (1048576 * k + 51559) 32 = 531441 * k + 26132 ∧
      531441 * k + 26132 < 1048576 * k + 51559 := by
  intro k
  have h1 : C (1048576 * k + 51559) = 3145728 * k + 154678 := by
    unfold C
    simp [show (1048576 * k + 51559) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 154678) = 1572864 * k + 77339 := by
    unfold C
    simp [show (3145728 * k + 154678) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 77339) = 4718592 * k + 232018 := by
    unfold C
    simp [show (1572864 * k + 77339) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 232018) = 2359296 * k + 116009 := by
    unfold C
    simp [show (4718592 * k + 232018) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 116009) = 7077888 * k + 348028 := by
    unfold C
    simp [show (2359296 * k + 116009) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 348028) = 3538944 * k + 174014 := by
    unfold C
    simp [show (7077888 * k + 348028) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 174014) = 1769472 * k + 87007 := by
    unfold C
    simp [show (3538944 * k + 174014) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 87007) = 5308416 * k + 261022 := by
    unfold C
    simp [show (1769472 * k + 87007) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 261022) = 2654208 * k + 130511 := by
    unfold C
    simp [show (5308416 * k + 261022) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 130511) = 7962624 * k + 391534 := by
    unfold C
    simp [show (2654208 * k + 130511) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 391534) = 3981312 * k + 195767 := by
    unfold C
    simp [show (7962624 * k + 391534) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 195767) = 11943936 * k + 587302 := by
    unfold C
    simp [show (3981312 * k + 195767) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 587302) = 5971968 * k + 293651 := by
    unfold C
    simp [show (11943936 * k + 587302) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 293651) = 17915904 * k + 880954 := by
    unfold C
    simp [show (5971968 * k + 293651) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 880954) = 8957952 * k + 440477 := by
    unfold C
    simp [show (17915904 * k + 880954) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 440477) = 26873856 * k + 1321432 := by
    unfold C
    simp [show (8957952 * k + 440477) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1321432) = 13436928 * k + 660716 := by
    unfold C
    simp [show (26873856 * k + 1321432) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 660716) = 6718464 * k + 330358 := by
    unfold C
    simp [show (13436928 * k + 660716) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 330358) = 3359232 * k + 165179 := by
    unfold C
    simp [show (6718464 * k + 330358) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 165179) = 10077696 * k + 495538 := by
    unfold C
    simp [show (3359232 * k + 165179) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 495538) = 5038848 * k + 247769 := by
    unfold C
    simp [show (10077696 * k + 495538) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 247769) = 15116544 * k + 743308 := by
    unfold C
    simp [show (5038848 * k + 247769) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 743308) = 7558272 * k + 371654 := by
    unfold C
    simp [show (15116544 * k + 743308) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 371654) = 3779136 * k + 185827 := by
    unfold C
    simp [show (7558272 * k + 371654) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 185827) = 11337408 * k + 557482 := by
    unfold C
    simp [show (3779136 * k + 185827) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 557482) = 5668704 * k + 278741 := by
    unfold C
    simp [show (11337408 * k + 557482) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 278741) = 17006112 * k + 836224 := by
    unfold C
    simp [show (5668704 * k + 278741) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 836224) = 8503056 * k + 418112 := by
    unfold C
    simp [show (17006112 * k + 836224) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 418112) = 4251528 * k + 209056 := by
    unfold C
    simp [show (8503056 * k + 418112) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 209056) = 2125764 * k + 104528 := by
    unfold C
    simp [show (4251528 * k + 209056) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 104528) = 1062882 * k + 52264 := by
    unfold C
    simp [show (2125764 * k + 104528) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 52264) = 531441 * k + 26132 := by
    unfold C
    simp [show (1062882 * k + 52264) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 51559) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 51559)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_51695 : ∀ k : Nat,
    iterate (1048576 * k + 51695) 32 = 531441 * k + 26201 ∧
      531441 * k + 26201 < 1048576 * k + 51695 := by
  intro k
  have h1 : C (1048576 * k + 51695) = 3145728 * k + 155086 := by
    unfold C
    simp [show (1048576 * k + 51695) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 155086) = 1572864 * k + 77543 := by
    unfold C
    simp [show (3145728 * k + 155086) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 77543) = 4718592 * k + 232630 := by
    unfold C
    simp [show (1572864 * k + 77543) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 232630) = 2359296 * k + 116315 := by
    unfold C
    simp [show (4718592 * k + 232630) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 116315) = 7077888 * k + 348946 := by
    unfold C
    simp [show (2359296 * k + 116315) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 348946) = 3538944 * k + 174473 := by
    unfold C
    simp [show (7077888 * k + 348946) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 174473) = 10616832 * k + 523420 := by
    unfold C
    simp [show (3538944 * k + 174473) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 523420) = 5308416 * k + 261710 := by
    unfold C
    simp [show (10616832 * k + 523420) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 261710) = 2654208 * k + 130855 := by
    unfold C
    simp [show (5308416 * k + 261710) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 130855) = 7962624 * k + 392566 := by
    unfold C
    simp [show (2654208 * k + 130855) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 392566) = 3981312 * k + 196283 := by
    unfold C
    simp [show (7962624 * k + 392566) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 196283) = 11943936 * k + 588850 := by
    unfold C
    simp [show (3981312 * k + 196283) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 588850) = 5971968 * k + 294425 := by
    unfold C
    simp [show (11943936 * k + 588850) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 294425) = 17915904 * k + 883276 := by
    unfold C
    simp [show (5971968 * k + 294425) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 883276) = 8957952 * k + 441638 := by
    unfold C
    simp [show (17915904 * k + 883276) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 441638) = 4478976 * k + 220819 := by
    unfold C
    simp [show (8957952 * k + 441638) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 220819) = 13436928 * k + 662458 := by
    unfold C
    simp [show (4478976 * k + 220819) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 662458) = 6718464 * k + 331229 := by
    unfold C
    simp [show (13436928 * k + 662458) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 331229) = 20155392 * k + 993688 := by
    unfold C
    simp [show (6718464 * k + 331229) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 993688) = 10077696 * k + 496844 := by
    unfold C
    simp [show (20155392 * k + 993688) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 496844) = 5038848 * k + 248422 := by
    unfold C
    simp [show (10077696 * k + 496844) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 248422) = 2519424 * k + 124211 := by
    unfold C
    simp [show (5038848 * k + 248422) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 124211) = 7558272 * k + 372634 := by
    unfold C
    simp [show (2519424 * k + 124211) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 372634) = 3779136 * k + 186317 := by
    unfold C
    simp [show (7558272 * k + 372634) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 186317) = 11337408 * k + 558952 := by
    unfold C
    simp [show (3779136 * k + 186317) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 558952) = 5668704 * k + 279476 := by
    unfold C
    simp [show (11337408 * k + 558952) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 279476) = 2834352 * k + 139738 := by
    unfold C
    simp [show (5668704 * k + 279476) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 139738) = 1417176 * k + 69869 := by
    unfold C
    simp [show (2834352 * k + 139738) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 69869) = 4251528 * k + 209608 := by
    unfold C
    simp [show (1417176 * k + 69869) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 209608) = 2125764 * k + 104804 := by
    unfold C
    simp [show (4251528 * k + 209608) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 104804) = 1062882 * k + 52402 := by
    unfold C
    simp [show (2125764 * k + 104804) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 52402) = 531441 * k + 26201 := by
    unfold C
    simp [show (1062882 * k + 52402) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 51695) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 51695)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_51995 : ∀ k : Nat,
    iterate (1048576 * k + 51995) 32 = 531441 * k + 26353 ∧
      531441 * k + 26353 < 1048576 * k + 51995 := by
  intro k
  have h1 : C (1048576 * k + 51995) = 3145728 * k + 155986 := by
    unfold C
    simp [show (1048576 * k + 51995) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 155986) = 1572864 * k + 77993 := by
    unfold C
    simp [show (3145728 * k + 155986) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 77993) = 4718592 * k + 233980 := by
    unfold C
    simp [show (1572864 * k + 77993) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 233980) = 2359296 * k + 116990 := by
    unfold C
    simp [show (4718592 * k + 233980) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 116990) = 1179648 * k + 58495 := by
    unfold C
    simp [show (2359296 * k + 116990) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 58495) = 3538944 * k + 175486 := by
    unfold C
    simp [show (1179648 * k + 58495) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 175486) = 1769472 * k + 87743 := by
    unfold C
    simp [show (3538944 * k + 175486) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 87743) = 5308416 * k + 263230 := by
    unfold C
    simp [show (1769472 * k + 87743) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 263230) = 2654208 * k + 131615 := by
    unfold C
    simp [show (5308416 * k + 263230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 131615) = 7962624 * k + 394846 := by
    unfold C
    simp [show (2654208 * k + 131615) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 394846) = 3981312 * k + 197423 := by
    unfold C
    simp [show (7962624 * k + 394846) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 197423) = 11943936 * k + 592270 := by
    unfold C
    simp [show (3981312 * k + 197423) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 592270) = 5971968 * k + 296135 := by
    unfold C
    simp [show (11943936 * k + 592270) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 296135) = 17915904 * k + 888406 := by
    unfold C
    simp [show (5971968 * k + 296135) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 888406) = 8957952 * k + 444203 := by
    unfold C
    simp [show (17915904 * k + 888406) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 444203) = 26873856 * k + 1332610 := by
    unfold C
    simp [show (8957952 * k + 444203) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1332610) = 13436928 * k + 666305 := by
    unfold C
    simp [show (26873856 * k + 1332610) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 666305) = 40310784 * k + 1998916 := by
    unfold C
    simp [show (13436928 * k + 666305) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 1998916) = 20155392 * k + 999458 := by
    unfold C
    simp [show (40310784 * k + 1998916) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 999458) = 10077696 * k + 499729 := by
    unfold C
    simp [show (20155392 * k + 999458) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 499729) = 30233088 * k + 1499188 := by
    unfold C
    simp [show (10077696 * k + 499729) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1499188) = 15116544 * k + 749594 := by
    unfold C
    simp [show (30233088 * k + 1499188) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 749594) = 7558272 * k + 374797 := by
    unfold C
    simp [show (15116544 * k + 749594) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 374797) = 22674816 * k + 1124392 := by
    unfold C
    simp [show (7558272 * k + 374797) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 1124392) = 11337408 * k + 562196 := by
    unfold C
    simp [show (22674816 * k + 1124392) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 562196) = 5668704 * k + 281098 := by
    unfold C
    simp [show (11337408 * k + 562196) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 281098) = 2834352 * k + 140549 := by
    unfold C
    simp [show (5668704 * k + 281098) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 140549) = 8503056 * k + 421648 := by
    unfold C
    simp [show (2834352 * k + 140549) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 421648) = 4251528 * k + 210824 := by
    unfold C
    simp [show (8503056 * k + 421648) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 210824) = 2125764 * k + 105412 := by
    unfold C
    simp [show (4251528 * k + 210824) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 105412) = 1062882 * k + 52706 := by
    unfold C
    simp [show (2125764 * k + 105412) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 52706) = 531441 * k + 26353 := by
    unfold C
    simp [show (1062882 * k + 52706) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 51995) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 51995)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_52463 : ∀ k : Nat,
    iterate (1048576 * k + 52463) 32 = 531441 * k + 26590 ∧
      531441 * k + 26590 < 1048576 * k + 52463 := by
  intro k
  have h1 : C (1048576 * k + 52463) = 3145728 * k + 157390 := by
    unfold C
    simp [show (1048576 * k + 52463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 157390) = 1572864 * k + 78695 := by
    unfold C
    simp [show (3145728 * k + 157390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 78695) = 4718592 * k + 236086 := by
    unfold C
    simp [show (1572864 * k + 78695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 236086) = 2359296 * k + 118043 := by
    unfold C
    simp [show (4718592 * k + 236086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 118043) = 7077888 * k + 354130 := by
    unfold C
    simp [show (2359296 * k + 118043) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 354130) = 3538944 * k + 177065 := by
    unfold C
    simp [show (7077888 * k + 354130) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 177065) = 10616832 * k + 531196 := by
    unfold C
    simp [show (3538944 * k + 177065) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 531196) = 5308416 * k + 265598 := by
    unfold C
    simp [show (10616832 * k + 531196) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 265598) = 2654208 * k + 132799 := by
    unfold C
    simp [show (5308416 * k + 265598) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 132799) = 7962624 * k + 398398 := by
    unfold C
    simp [show (2654208 * k + 132799) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 398398) = 3981312 * k + 199199 := by
    unfold C
    simp [show (7962624 * k + 398398) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 199199) = 11943936 * k + 597598 := by
    unfold C
    simp [show (3981312 * k + 199199) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 597598) = 5971968 * k + 298799 := by
    unfold C
    simp [show (11943936 * k + 597598) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 298799) = 17915904 * k + 896398 := by
    unfold C
    simp [show (5971968 * k + 298799) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 896398) = 8957952 * k + 448199 := by
    unfold C
    simp [show (17915904 * k + 896398) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 448199) = 26873856 * k + 1344598 := by
    unfold C
    simp [show (8957952 * k + 448199) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1344598) = 13436928 * k + 672299 := by
    unfold C
    simp [show (26873856 * k + 1344598) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 672299) = 40310784 * k + 2016898 := by
    unfold C
    simp [show (13436928 * k + 672299) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 2016898) = 20155392 * k + 1008449 := by
    unfold C
    simp [show (40310784 * k + 2016898) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 1008449) = 60466176 * k + 3025348 := by
    unfold C
    simp [show (20155392 * k + 1008449) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 3025348) = 30233088 * k + 1512674 := by
    unfold C
    simp [show (60466176 * k + 3025348) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 1512674) = 15116544 * k + 756337 := by
    unfold C
    simp [show (30233088 * k + 1512674) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 756337) = 45349632 * k + 2269012 := by
    unfold C
    simp [show (15116544 * k + 756337) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 2269012) = 22674816 * k + 1134506 := by
    unfold C
    simp [show (45349632 * k + 2269012) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1134506) = 11337408 * k + 567253 := by
    unfold C
    simp [show (22674816 * k + 1134506) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 567253) = 34012224 * k + 1701760 := by
    unfold C
    simp [show (11337408 * k + 567253) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 1701760) = 17006112 * k + 850880 := by
    unfold C
    simp [show (34012224 * k + 1701760) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 850880) = 8503056 * k + 425440 := by
    unfold C
    simp [show (17006112 * k + 850880) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 425440) = 4251528 * k + 212720 := by
    unfold C
    simp [show (8503056 * k + 425440) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 212720) = 2125764 * k + 106360 := by
    unfold C
    simp [show (4251528 * k + 212720) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 106360) = 1062882 * k + 53180 := by
    unfold C
    simp [show (2125764 * k + 106360) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 53180) = 531441 * k + 26590 := by
    unfold C
    simp [show (1062882 * k + 53180) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 52463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 52463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_52583 : ∀ k : Nat,
    iterate (1048576 * k + 52583) 32 = 531441 * k + 26651 ∧
      531441 * k + 26651 < 1048576 * k + 52583 := by
  intro k
  have h1 : C (1048576 * k + 52583) = 3145728 * k + 157750 := by
    unfold C
    simp [show (1048576 * k + 52583) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 157750) = 1572864 * k + 78875 := by
    unfold C
    simp [show (3145728 * k + 157750) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 78875) = 4718592 * k + 236626 := by
    unfold C
    simp [show (1572864 * k + 78875) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 236626) = 2359296 * k + 118313 := by
    unfold C
    simp [show (4718592 * k + 236626) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 118313) = 7077888 * k + 354940 := by
    unfold C
    simp [show (2359296 * k + 118313) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 354940) = 3538944 * k + 177470 := by
    unfold C
    simp [show (7077888 * k + 354940) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 177470) = 1769472 * k + 88735 := by
    unfold C
    simp [show (3538944 * k + 177470) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 88735) = 5308416 * k + 266206 := by
    unfold C
    simp [show (1769472 * k + 88735) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 266206) = 2654208 * k + 133103 := by
    unfold C
    simp [show (5308416 * k + 266206) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 133103) = 7962624 * k + 399310 := by
    unfold C
    simp [show (2654208 * k + 133103) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 399310) = 3981312 * k + 199655 := by
    unfold C
    simp [show (7962624 * k + 399310) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 199655) = 11943936 * k + 598966 := by
    unfold C
    simp [show (3981312 * k + 199655) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 598966) = 5971968 * k + 299483 := by
    unfold C
    simp [show (11943936 * k + 598966) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 299483) = 17915904 * k + 898450 := by
    unfold C
    simp [show (5971968 * k + 299483) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 898450) = 8957952 * k + 449225 := by
    unfold C
    simp [show (17915904 * k + 898450) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 449225) = 26873856 * k + 1347676 := by
    unfold C
    simp [show (8957952 * k + 449225) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 1347676) = 13436928 * k + 673838 := by
    unfold C
    simp [show (26873856 * k + 1347676) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 673838) = 6718464 * k + 336919 := by
    unfold C
    simp [show (13436928 * k + 673838) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 336919) = 20155392 * k + 1010758 := by
    unfold C
    simp [show (6718464 * k + 336919) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 1010758) = 10077696 * k + 505379 := by
    unfold C
    simp [show (20155392 * k + 1010758) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 505379) = 30233088 * k + 1516138 := by
    unfold C
    simp [show (10077696 * k + 505379) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 1516138) = 15116544 * k + 758069 := by
    unfold C
    simp [show (30233088 * k + 1516138) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 758069) = 45349632 * k + 2274208 := by
    unfold C
    simp [show (15116544 * k + 758069) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 2274208) = 22674816 * k + 1137104 := by
    unfold C
    simp [show (45349632 * k + 2274208) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 1137104) = 11337408 * k + 568552 := by
    unfold C
    simp [show (22674816 * k + 1137104) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 568552) = 5668704 * k + 284276 := by
    unfold C
    simp [show (11337408 * k + 568552) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 284276) = 2834352 * k + 142138 := by
    unfold C
    simp [show (5668704 * k + 284276) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 142138) = 1417176 * k + 71069 := by
    unfold C
    simp [show (2834352 * k + 142138) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 71069) = 4251528 * k + 213208 := by
    unfold C
    simp [show (1417176 * k + 71069) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 213208) = 2125764 * k + 106604 := by
    unfold C
    simp [show (4251528 * k + 213208) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 106604) = 1062882 * k + 53302 := by
    unfold C
    simp [show (2125764 * k + 106604) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 53302) = 531441 * k + 26651 := by
    unfold C
    simp [show (1062882 * k + 53302) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 52583) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 52583)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard008
