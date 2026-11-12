import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard120

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_934655 : ∀ k : Nat,
    iterate (1048576 * k + 934655) 32 = 531441 * k + 473704 ∧
      531441 * k + 473704 < 1048576 * k + 934655 := by
  intro k
  have h1 : C (1048576 * k + 934655) = 3145728 * k + 2803966 := by
    unfold C
    simp [show (1048576 * k + 934655) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2803966) = 1572864 * k + 1401983 := by
    unfold C
    simp [show (3145728 * k + 2803966) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1401983) = 4718592 * k + 4205950 := by
    unfold C
    simp [show (1572864 * k + 1401983) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4205950) = 2359296 * k + 2102975 := by
    unfold C
    simp [show (4718592 * k + 4205950) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2102975) = 7077888 * k + 6308926 := by
    unfold C
    simp [show (2359296 * k + 2102975) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6308926) = 3538944 * k + 3154463 := by
    unfold C
    simp [show (7077888 * k + 6308926) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3154463) = 10616832 * k + 9463390 := by
    unfold C
    simp [show (3538944 * k + 3154463) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9463390) = 5308416 * k + 4731695 := by
    unfold C
    simp [show (10616832 * k + 9463390) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4731695) = 15925248 * k + 14195086 := by
    unfold C
    simp [show (5308416 * k + 4731695) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14195086) = 7962624 * k + 7097543 := by
    unfold C
    simp [show (15925248 * k + 14195086) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7097543) = 23887872 * k + 21292630 := by
    unfold C
    simp [show (7962624 * k + 7097543) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21292630) = 11943936 * k + 10646315 := by
    unfold C
    simp [show (23887872 * k + 21292630) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10646315) = 35831808 * k + 31938946 := by
    unfold C
    simp [show (11943936 * k + 10646315) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 31938946) = 17915904 * k + 15969473 := by
    unfold C
    simp [show (35831808 * k + 31938946) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 15969473) = 53747712 * k + 47908420 := by
    unfold C
    simp [show (17915904 * k + 15969473) % 2 ≠ 0 by omega]
    omega
  have h16 : C (53747712 * k + 47908420) = 26873856 * k + 23954210 := by
    unfold C
    simp [show (53747712 * k + 47908420) % 2 = 0 by omega]
    omega
  have h17 : C (26873856 * k + 23954210) = 13436928 * k + 11977105 := by
    unfold C
    simp [show (26873856 * k + 23954210) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11977105) = 40310784 * k + 35931316 := by
    unfold C
    simp [show (13436928 * k + 11977105) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35931316) = 20155392 * k + 17965658 := by
    unfold C
    simp [show (40310784 * k + 35931316) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17965658) = 10077696 * k + 8982829 := by
    unfold C
    simp [show (20155392 * k + 17965658) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8982829) = 30233088 * k + 26948488 := by
    unfold C
    simp [show (10077696 * k + 8982829) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 26948488) = 15116544 * k + 13474244 := by
    unfold C
    simp [show (30233088 * k + 26948488) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13474244) = 7558272 * k + 6737122 := by
    unfold C
    simp [show (15116544 * k + 13474244) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6737122) = 3779136 * k + 3368561 := by
    unfold C
    simp [show (7558272 * k + 6737122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3368561) = 11337408 * k + 10105684 := by
    unfold C
    simp [show (3779136 * k + 3368561) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10105684) = 5668704 * k + 5052842 := by
    unfold C
    simp [show (11337408 * k + 10105684) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5052842) = 2834352 * k + 2526421 := by
    unfold C
    simp [show (5668704 * k + 5052842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2526421) = 8503056 * k + 7579264 := by
    unfold C
    simp [show (2834352 * k + 2526421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7579264) = 4251528 * k + 3789632 := by
    unfold C
    simp [show (8503056 * k + 7579264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3789632) = 2125764 * k + 1894816 := by
    unfold C
    simp [show (4251528 * k + 3789632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1894816) = 1062882 * k + 947408 := by
    unfold C
    simp [show (2125764 * k + 1894816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 947408) = 531441 * k + 473704 := by
    unfold C
    simp [show (1062882 * k + 947408) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 934655) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 934655)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_935071 : ∀ k : Nat,
    iterate (1048576 * k + 935071) 32 = 531441 * k + 473915 ∧
      531441 * k + 473915 < 1048576 * k + 935071 := by
  intro k
  have h1 : C (1048576 * k + 935071) = 3145728 * k + 2805214 := by
    unfold C
    simp [show (1048576 * k + 935071) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2805214) = 1572864 * k + 1402607 := by
    unfold C
    simp [show (3145728 * k + 2805214) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1402607) = 4718592 * k + 4207822 := by
    unfold C
    simp [show (1572864 * k + 1402607) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4207822) = 2359296 * k + 2103911 := by
    unfold C
    simp [show (4718592 * k + 4207822) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2103911) = 7077888 * k + 6311734 := by
    unfold C
    simp [show (2359296 * k + 2103911) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6311734) = 3538944 * k + 3155867 := by
    unfold C
    simp [show (7077888 * k + 6311734) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3155867) = 10616832 * k + 9467602 := by
    unfold C
    simp [show (3538944 * k + 3155867) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9467602) = 5308416 * k + 4733801 := by
    unfold C
    simp [show (10616832 * k + 9467602) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4733801) = 15925248 * k + 14201404 := by
    unfold C
    simp [show (5308416 * k + 4733801) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14201404) = 7962624 * k + 7100702 := by
    unfold C
    simp [show (15925248 * k + 14201404) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7100702) = 3981312 * k + 3550351 := by
    unfold C
    simp [show (7962624 * k + 7100702) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3550351) = 11943936 * k + 10651054 := by
    unfold C
    simp [show (3981312 * k + 3550351) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10651054) = 5971968 * k + 5325527 := by
    unfold C
    simp [show (11943936 * k + 10651054) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5325527) = 17915904 * k + 15976582 := by
    unfold C
    simp [show (5971968 * k + 5325527) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 15976582) = 8957952 * k + 7988291 := by
    unfold C
    simp [show (17915904 * k + 15976582) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 7988291) = 26873856 * k + 23964874 := by
    unfold C
    simp [show (8957952 * k + 7988291) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 23964874) = 13436928 * k + 11982437 := by
    unfold C
    simp [show (26873856 * k + 23964874) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 11982437) = 40310784 * k + 35947312 := by
    unfold C
    simp [show (13436928 * k + 11982437) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 35947312) = 20155392 * k + 17973656 := by
    unfold C
    simp [show (40310784 * k + 35947312) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 17973656) = 10077696 * k + 8986828 := by
    unfold C
    simp [show (20155392 * k + 17973656) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8986828) = 5038848 * k + 4493414 := by
    unfold C
    simp [show (10077696 * k + 8986828) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4493414) = 2519424 * k + 2246707 := by
    unfold C
    simp [show (5038848 * k + 4493414) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2246707) = 7558272 * k + 6740122 := by
    unfold C
    simp [show (2519424 * k + 2246707) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6740122) = 3779136 * k + 3370061 := by
    unfold C
    simp [show (7558272 * k + 6740122) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3370061) = 11337408 * k + 10110184 := by
    unfold C
    simp [show (3779136 * k + 3370061) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10110184) = 5668704 * k + 5055092 := by
    unfold C
    simp [show (11337408 * k + 10110184) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5055092) = 2834352 * k + 2527546 := by
    unfold C
    simp [show (5668704 * k + 5055092) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2527546) = 1417176 * k + 1263773 := by
    unfold C
    simp [show (2834352 * k + 2527546) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1263773) = 4251528 * k + 3791320 := by
    unfold C
    simp [show (1417176 * k + 1263773) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3791320) = 2125764 * k + 1895660 := by
    unfold C
    simp [show (4251528 * k + 3791320) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1895660) = 1062882 * k + 947830 := by
    unfold C
    simp [show (2125764 * k + 1895660) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 947830) = 531441 * k + 473915 := by
    unfold C
    simp [show (1062882 * k + 947830) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 935071) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 935071)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_935751 : ∀ k : Nat,
    iterate (1048576 * k + 935751) 32 = 531441 * k + 474260 ∧
      531441 * k + 474260 < 1048576 * k + 935751 := by
  intro k
  have h1 : C (1048576 * k + 935751) = 3145728 * k + 2807254 := by
    unfold C
    simp [show (1048576 * k + 935751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2807254) = 1572864 * k + 1403627 := by
    unfold C
    simp [show (3145728 * k + 2807254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1403627) = 4718592 * k + 4210882 := by
    unfold C
    simp [show (1572864 * k + 1403627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4210882) = 2359296 * k + 2105441 := by
    unfold C
    simp [show (4718592 * k + 4210882) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2105441) = 7077888 * k + 6316324 := by
    unfold C
    simp [show (2359296 * k + 2105441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6316324) = 3538944 * k + 3158162 := by
    unfold C
    simp [show (7077888 * k + 6316324) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3158162) = 1769472 * k + 1579081 := by
    unfold C
    simp [show (3538944 * k + 3158162) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1579081) = 5308416 * k + 4737244 := by
    unfold C
    simp [show (1769472 * k + 1579081) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4737244) = 2654208 * k + 2368622 := by
    unfold C
    simp [show (5308416 * k + 4737244) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2368622) = 1327104 * k + 1184311 := by
    unfold C
    simp [show (2654208 * k + 2368622) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1184311) = 3981312 * k + 3552934 := by
    unfold C
    simp [show (1327104 * k + 1184311) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3552934) = 1990656 * k + 1776467 := by
    unfold C
    simp [show (3981312 * k + 3552934) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1776467) = 5971968 * k + 5329402 := by
    unfold C
    simp [show (1990656 * k + 1776467) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5329402) = 2985984 * k + 2664701 := by
    unfold C
    simp [show (5971968 * k + 5329402) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2664701) = 8957952 * k + 7994104 := by
    unfold C
    simp [show (2985984 * k + 2664701) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7994104) = 4478976 * k + 3997052 := by
    unfold C
    simp [show (8957952 * k + 7994104) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3997052) = 2239488 * k + 1998526 := by
    unfold C
    simp [show (4478976 * k + 3997052) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1998526) = 1119744 * k + 999263 := by
    unfold C
    simp [show (2239488 * k + 1998526) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 999263) = 3359232 * k + 2997790 := by
    unfold C
    simp [show (1119744 * k + 999263) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 2997790) = 1679616 * k + 1498895 := by
    unfold C
    simp [show (3359232 * k + 2997790) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1498895) = 5038848 * k + 4496686 := by
    unfold C
    simp [show (1679616 * k + 1498895) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4496686) = 2519424 * k + 2248343 := by
    unfold C
    simp [show (5038848 * k + 4496686) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2248343) = 7558272 * k + 6745030 := by
    unfold C
    simp [show (2519424 * k + 2248343) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6745030) = 3779136 * k + 3372515 := by
    unfold C
    simp [show (7558272 * k + 6745030) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3372515) = 11337408 * k + 10117546 := by
    unfold C
    simp [show (3779136 * k + 3372515) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10117546) = 5668704 * k + 5058773 := by
    unfold C
    simp [show (11337408 * k + 10117546) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5058773) = 17006112 * k + 15176320 := by
    unfold C
    simp [show (5668704 * k + 5058773) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15176320) = 8503056 * k + 7588160 := by
    unfold C
    simp [show (17006112 * k + 15176320) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7588160) = 4251528 * k + 3794080 := by
    unfold C
    simp [show (8503056 * k + 7588160) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3794080) = 2125764 * k + 1897040 := by
    unfold C
    simp [show (4251528 * k + 3794080) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1897040) = 1062882 * k + 948520 := by
    unfold C
    simp [show (2125764 * k + 1897040) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 948520) = 531441 * k + 474260 := by
    unfold C
    simp [show (1062882 * k + 948520) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 935751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 935751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_936187 : ∀ k : Nat,
    iterate (1048576 * k + 936187) 32 = 531441 * k + 474481 ∧
      531441 * k + 474481 < 1048576 * k + 936187 := by
  intro k
  have h1 : C (1048576 * k + 936187) = 3145728 * k + 2808562 := by
    unfold C
    simp [show (1048576 * k + 936187) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2808562) = 1572864 * k + 1404281 := by
    unfold C
    simp [show (3145728 * k + 2808562) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1404281) = 4718592 * k + 4212844 := by
    unfold C
    simp [show (1572864 * k + 1404281) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4212844) = 2359296 * k + 2106422 := by
    unfold C
    simp [show (4718592 * k + 4212844) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2106422) = 1179648 * k + 1053211 := by
    unfold C
    simp [show (2359296 * k + 2106422) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1053211) = 3538944 * k + 3159634 := by
    unfold C
    simp [show (1179648 * k + 1053211) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3159634) = 1769472 * k + 1579817 := by
    unfold C
    simp [show (3538944 * k + 3159634) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1579817) = 5308416 * k + 4739452 := by
    unfold C
    simp [show (1769472 * k + 1579817) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4739452) = 2654208 * k + 2369726 := by
    unfold C
    simp [show (5308416 * k + 4739452) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2369726) = 1327104 * k + 1184863 := by
    unfold C
    simp [show (2654208 * k + 2369726) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1184863) = 3981312 * k + 3554590 := by
    unfold C
    simp [show (1327104 * k + 1184863) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3554590) = 1990656 * k + 1777295 := by
    unfold C
    simp [show (3981312 * k + 3554590) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1777295) = 5971968 * k + 5331886 := by
    unfold C
    simp [show (1990656 * k + 1777295) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5331886) = 2985984 * k + 2665943 := by
    unfold C
    simp [show (5971968 * k + 5331886) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2665943) = 8957952 * k + 7997830 := by
    unfold C
    simp [show (2985984 * k + 2665943) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 7997830) = 4478976 * k + 3998915 := by
    unfold C
    simp [show (8957952 * k + 7997830) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 3998915) = 13436928 * k + 11996746 := by
    unfold C
    simp [show (4478976 * k + 3998915) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 11996746) = 6718464 * k + 5998373 := by
    unfold C
    simp [show (13436928 * k + 11996746) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 5998373) = 20155392 * k + 17995120 := by
    unfold C
    simp [show (6718464 * k + 5998373) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 17995120) = 10077696 * k + 8997560 := by
    unfold C
    simp [show (20155392 * k + 17995120) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 8997560) = 5038848 * k + 4498780 := by
    unfold C
    simp [show (10077696 * k + 8997560) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4498780) = 2519424 * k + 2249390 := by
    unfold C
    simp [show (5038848 * k + 4498780) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2249390) = 1259712 * k + 1124695 := by
    unfold C
    simp [show (2519424 * k + 2249390) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1124695) = 3779136 * k + 3374086 := by
    unfold C
    simp [show (1259712 * k + 1124695) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3374086) = 1889568 * k + 1687043 := by
    unfold C
    simp [show (3779136 * k + 3374086) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1687043) = 5668704 * k + 5061130 := by
    unfold C
    simp [show (1889568 * k + 1687043) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5061130) = 2834352 * k + 2530565 := by
    unfold C
    simp [show (5668704 * k + 5061130) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2530565) = 8503056 * k + 7591696 := by
    unfold C
    simp [show (2834352 * k + 2530565) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7591696) = 4251528 * k + 3795848 := by
    unfold C
    simp [show (8503056 * k + 7591696) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3795848) = 2125764 * k + 1897924 := by
    unfold C
    simp [show (4251528 * k + 3795848) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1897924) = 1062882 * k + 948962 := by
    unfold C
    simp [show (2125764 * k + 1897924) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 948962) = 531441 * k + 474481 := by
    unfold C
    simp [show (1062882 * k + 948962) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 936187) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 936187)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_936347 : ∀ k : Nat,
    iterate (1048576 * k + 936347) 32 = 531441 * k + 474562 ∧
      531441 * k + 474562 < 1048576 * k + 936347 := by
  intro k
  have h1 : C (1048576 * k + 936347) = 3145728 * k + 2809042 := by
    unfold C
    simp [show (1048576 * k + 936347) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2809042) = 1572864 * k + 1404521 := by
    unfold C
    simp [show (3145728 * k + 2809042) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1404521) = 4718592 * k + 4213564 := by
    unfold C
    simp [show (1572864 * k + 1404521) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4213564) = 2359296 * k + 2106782 := by
    unfold C
    simp [show (4718592 * k + 4213564) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2106782) = 1179648 * k + 1053391 := by
    unfold C
    simp [show (2359296 * k + 2106782) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1053391) = 3538944 * k + 3160174 := by
    unfold C
    simp [show (1179648 * k + 1053391) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3160174) = 1769472 * k + 1580087 := by
    unfold C
    simp [show (3538944 * k + 3160174) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1580087) = 5308416 * k + 4740262 := by
    unfold C
    simp [show (1769472 * k + 1580087) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4740262) = 2654208 * k + 2370131 := by
    unfold C
    simp [show (5308416 * k + 4740262) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2370131) = 7962624 * k + 7110394 := by
    unfold C
    simp [show (2654208 * k + 2370131) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7110394) = 3981312 * k + 3555197 := by
    unfold C
    simp [show (7962624 * k + 7110394) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3555197) = 11943936 * k + 10665592 := by
    unfold C
    simp [show (3981312 * k + 3555197) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10665592) = 5971968 * k + 5332796 := by
    unfold C
    simp [show (11943936 * k + 10665592) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5332796) = 2985984 * k + 2666398 := by
    unfold C
    simp [show (5971968 * k + 5332796) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2666398) = 1492992 * k + 1333199 := by
    unfold C
    simp [show (2985984 * k + 2666398) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1333199) = 4478976 * k + 3999598 := by
    unfold C
    simp [show (1492992 * k + 1333199) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 3999598) = 2239488 * k + 1999799 := by
    unfold C
    simp [show (4478976 * k + 3999598) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 1999799) = 6718464 * k + 5999398 := by
    unfold C
    simp [show (2239488 * k + 1999799) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 5999398) = 3359232 * k + 2999699 := by
    unfold C
    simp [show (6718464 * k + 5999398) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 2999699) = 10077696 * k + 8999098 := by
    unfold C
    simp [show (3359232 * k + 2999699) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 8999098) = 5038848 * k + 4499549 := by
    unfold C
    simp [show (10077696 * k + 8999098) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4499549) = 15116544 * k + 13498648 := by
    unfold C
    simp [show (5038848 * k + 4499549) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13498648) = 7558272 * k + 6749324 := by
    unfold C
    simp [show (15116544 * k + 13498648) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6749324) = 3779136 * k + 3374662 := by
    unfold C
    simp [show (7558272 * k + 6749324) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3374662) = 1889568 * k + 1687331 := by
    unfold C
    simp [show (3779136 * k + 3374662) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1687331) = 5668704 * k + 5061994 := by
    unfold C
    simp [show (1889568 * k + 1687331) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5061994) = 2834352 * k + 2530997 := by
    unfold C
    simp [show (5668704 * k + 5061994) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2530997) = 8503056 * k + 7592992 := by
    unfold C
    simp [show (2834352 * k + 2530997) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7592992) = 4251528 * k + 3796496 := by
    unfold C
    simp [show (8503056 * k + 7592992) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3796496) = 2125764 * k + 1898248 := by
    unfold C
    simp [show (4251528 * k + 3796496) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1898248) = 1062882 * k + 949124 := by
    unfold C
    simp [show (2125764 * k + 1898248) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 949124) = 531441 * k + 474562 := by
    unfold C
    simp [show (1062882 * k + 949124) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 936347) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 936347)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_936679 : ∀ k : Nat,
    iterate (1048576 * k + 936679) 32 = 531441 * k + 474730 ∧
      531441 * k + 474730 < 1048576 * k + 936679 := by
  intro k
  have h1 : C (1048576 * k + 936679) = 3145728 * k + 2810038 := by
    unfold C
    simp [show (1048576 * k + 936679) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2810038) = 1572864 * k + 1405019 := by
    unfold C
    simp [show (3145728 * k + 2810038) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1405019) = 4718592 * k + 4215058 := by
    unfold C
    simp [show (1572864 * k + 1405019) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4215058) = 2359296 * k + 2107529 := by
    unfold C
    simp [show (4718592 * k + 4215058) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2107529) = 7077888 * k + 6322588 := by
    unfold C
    simp [show (2359296 * k + 2107529) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6322588) = 3538944 * k + 3161294 := by
    unfold C
    simp [show (7077888 * k + 6322588) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3161294) = 1769472 * k + 1580647 := by
    unfold C
    simp [show (3538944 * k + 3161294) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1580647) = 5308416 * k + 4741942 := by
    unfold C
    simp [show (1769472 * k + 1580647) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4741942) = 2654208 * k + 2370971 := by
    unfold C
    simp [show (5308416 * k + 4741942) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2370971) = 7962624 * k + 7112914 := by
    unfold C
    simp [show (2654208 * k + 2370971) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7112914) = 3981312 * k + 3556457 := by
    unfold C
    simp [show (7962624 * k + 7112914) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3556457) = 11943936 * k + 10669372 := by
    unfold C
    simp [show (3981312 * k + 3556457) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10669372) = 5971968 * k + 5334686 := by
    unfold C
    simp [show (11943936 * k + 10669372) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5334686) = 2985984 * k + 2667343 := by
    unfold C
    simp [show (5971968 * k + 5334686) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2667343) = 8957952 * k + 8002030 := by
    unfold C
    simp [show (2985984 * k + 2667343) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8002030) = 4478976 * k + 4001015 := by
    unfold C
    simp [show (8957952 * k + 8002030) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4001015) = 13436928 * k + 12003046 := by
    unfold C
    simp [show (4478976 * k + 4001015) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12003046) = 6718464 * k + 6001523 := by
    unfold C
    simp [show (13436928 * k + 12003046) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6001523) = 20155392 * k + 18004570 := by
    unfold C
    simp [show (6718464 * k + 6001523) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18004570) = 10077696 * k + 9002285 := by
    unfold C
    simp [show (20155392 * k + 18004570) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9002285) = 30233088 * k + 27006856 := by
    unfold C
    simp [show (10077696 * k + 9002285) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27006856) = 15116544 * k + 13503428 := by
    unfold C
    simp [show (30233088 * k + 27006856) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13503428) = 7558272 * k + 6751714 := by
    unfold C
    simp [show (15116544 * k + 13503428) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6751714) = 3779136 * k + 3375857 := by
    unfold C
    simp [show (7558272 * k + 6751714) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3375857) = 11337408 * k + 10127572 := by
    unfold C
    simp [show (3779136 * k + 3375857) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10127572) = 5668704 * k + 5063786 := by
    unfold C
    simp [show (11337408 * k + 10127572) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5063786) = 2834352 * k + 2531893 := by
    unfold C
    simp [show (5668704 * k + 5063786) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2531893) = 8503056 * k + 7595680 := by
    unfold C
    simp [show (2834352 * k + 2531893) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7595680) = 4251528 * k + 3797840 := by
    unfold C
    simp [show (8503056 * k + 7595680) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3797840) = 2125764 * k + 1898920 := by
    unfold C
    simp [show (4251528 * k + 3797840) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1898920) = 1062882 * k + 949460 := by
    unfold C
    simp [show (2125764 * k + 1898920) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 949460) = 531441 * k + 474730 := by
    unfold C
    simp [show (1062882 * k + 949460) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 936679) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 936679)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_936775 : ∀ k : Nat,
    iterate (1048576 * k + 936775) 32 = 531441 * k + 474779 ∧
      531441 * k + 474779 < 1048576 * k + 936775 := by
  intro k
  have h1 : C (1048576 * k + 936775) = 3145728 * k + 2810326 := by
    unfold C
    simp [show (1048576 * k + 936775) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2810326) = 1572864 * k + 1405163 := by
    unfold C
    simp [show (3145728 * k + 2810326) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1405163) = 4718592 * k + 4215490 := by
    unfold C
    simp [show (1572864 * k + 1405163) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4215490) = 2359296 * k + 2107745 := by
    unfold C
    simp [show (4718592 * k + 4215490) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2107745) = 7077888 * k + 6323236 := by
    unfold C
    simp [show (2359296 * k + 2107745) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6323236) = 3538944 * k + 3161618 := by
    unfold C
    simp [show (7077888 * k + 6323236) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3161618) = 1769472 * k + 1580809 := by
    unfold C
    simp [show (3538944 * k + 3161618) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1580809) = 5308416 * k + 4742428 := by
    unfold C
    simp [show (1769472 * k + 1580809) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4742428) = 2654208 * k + 2371214 := by
    unfold C
    simp [show (5308416 * k + 4742428) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2371214) = 1327104 * k + 1185607 := by
    unfold C
    simp [show (2654208 * k + 2371214) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1185607) = 3981312 * k + 3556822 := by
    unfold C
    simp [show (1327104 * k + 1185607) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3556822) = 1990656 * k + 1778411 := by
    unfold C
    simp [show (3981312 * k + 3556822) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1778411) = 5971968 * k + 5335234 := by
    unfold C
    simp [show (1990656 * k + 1778411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5335234) = 2985984 * k + 2667617 := by
    unfold C
    simp [show (5971968 * k + 5335234) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2667617) = 8957952 * k + 8002852 := by
    unfold C
    simp [show (2985984 * k + 2667617) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8002852) = 4478976 * k + 4001426 := by
    unfold C
    simp [show (8957952 * k + 8002852) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4001426) = 2239488 * k + 2000713 := by
    unfold C
    simp [show (4478976 * k + 4001426) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2000713) = 6718464 * k + 6002140 := by
    unfold C
    simp [show (2239488 * k + 2000713) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6002140) = 3359232 * k + 3001070 := by
    unfold C
    simp [show (6718464 * k + 6002140) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3001070) = 1679616 * k + 1500535 := by
    unfold C
    simp [show (3359232 * k + 3001070) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1500535) = 5038848 * k + 4501606 := by
    unfold C
    simp [show (1679616 * k + 1500535) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4501606) = 2519424 * k + 2250803 := by
    unfold C
    simp [show (5038848 * k + 4501606) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2250803) = 7558272 * k + 6752410 := by
    unfold C
    simp [show (2519424 * k + 2250803) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6752410) = 3779136 * k + 3376205 := by
    unfold C
    simp [show (7558272 * k + 6752410) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3376205) = 11337408 * k + 10128616 := by
    unfold C
    simp [show (3779136 * k + 3376205) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10128616) = 5668704 * k + 5064308 := by
    unfold C
    simp [show (11337408 * k + 10128616) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5064308) = 2834352 * k + 2532154 := by
    unfold C
    simp [show (5668704 * k + 5064308) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2532154) = 1417176 * k + 1266077 := by
    unfold C
    simp [show (2834352 * k + 2532154) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1266077) = 4251528 * k + 3798232 := by
    unfold C
    simp [show (1417176 * k + 1266077) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3798232) = 2125764 * k + 1899116 := by
    unfold C
    simp [show (4251528 * k + 3798232) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1899116) = 1062882 * k + 949558 := by
    unfold C
    simp [show (2125764 * k + 1899116) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 949558) = 531441 * k + 474779 := by
    unfold C
    simp [show (1062882 * k + 949558) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 936775) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 936775)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_937243 : ∀ k : Nat,
    iterate (1048576 * k + 937243) 32 = 531441 * k + 475016 ∧
      531441 * k + 475016 < 1048576 * k + 937243 := by
  intro k
  have h1 : C (1048576 * k + 937243) = 3145728 * k + 2811730 := by
    unfold C
    simp [show (1048576 * k + 937243) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2811730) = 1572864 * k + 1405865 := by
    unfold C
    simp [show (3145728 * k + 2811730) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1405865) = 4718592 * k + 4217596 := by
    unfold C
    simp [show (1572864 * k + 1405865) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4217596) = 2359296 * k + 2108798 := by
    unfold C
    simp [show (4718592 * k + 4217596) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2108798) = 1179648 * k + 1054399 := by
    unfold C
    simp [show (2359296 * k + 2108798) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1054399) = 3538944 * k + 3163198 := by
    unfold C
    simp [show (1179648 * k + 1054399) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3163198) = 1769472 * k + 1581599 := by
    unfold C
    simp [show (3538944 * k + 3163198) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1581599) = 5308416 * k + 4744798 := by
    unfold C
    simp [show (1769472 * k + 1581599) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4744798) = 2654208 * k + 2372399 := by
    unfold C
    simp [show (5308416 * k + 4744798) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2372399) = 7962624 * k + 7117198 := by
    unfold C
    simp [show (2654208 * k + 2372399) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7117198) = 3981312 * k + 3558599 := by
    unfold C
    simp [show (7962624 * k + 7117198) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3558599) = 11943936 * k + 10675798 := by
    unfold C
    simp [show (3981312 * k + 3558599) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10675798) = 5971968 * k + 5337899 := by
    unfold C
    simp [show (11943936 * k + 10675798) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5337899) = 17915904 * k + 16013698 := by
    unfold C
    simp [show (5971968 * k + 5337899) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16013698) = 8957952 * k + 8006849 := by
    unfold C
    simp [show (17915904 * k + 16013698) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8006849) = 26873856 * k + 24020548 := by
    unfold C
    simp [show (8957952 * k + 8006849) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24020548) = 13436928 * k + 12010274 := by
    unfold C
    simp [show (26873856 * k + 24020548) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12010274) = 6718464 * k + 6005137 := by
    unfold C
    simp [show (13436928 * k + 12010274) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6005137) = 20155392 * k + 18015412 := by
    unfold C
    simp [show (6718464 * k + 6005137) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18015412) = 10077696 * k + 9007706 := by
    unfold C
    simp [show (20155392 * k + 18015412) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9007706) = 5038848 * k + 4503853 := by
    unfold C
    simp [show (10077696 * k + 9007706) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4503853) = 15116544 * k + 13511560 := by
    unfold C
    simp [show (5038848 * k + 4503853) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13511560) = 7558272 * k + 6755780 := by
    unfold C
    simp [show (15116544 * k + 13511560) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6755780) = 3779136 * k + 3377890 := by
    unfold C
    simp [show (7558272 * k + 6755780) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3377890) = 1889568 * k + 1688945 := by
    unfold C
    simp [show (3779136 * k + 3377890) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1688945) = 5668704 * k + 5066836 := by
    unfold C
    simp [show (1889568 * k + 1688945) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5066836) = 2834352 * k + 2533418 := by
    unfold C
    simp [show (5668704 * k + 5066836) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2533418) = 1417176 * k + 1266709 := by
    unfold C
    simp [show (2834352 * k + 2533418) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1266709) = 4251528 * k + 3800128 := by
    unfold C
    simp [show (1417176 * k + 1266709) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3800128) = 2125764 * k + 1900064 := by
    unfold C
    simp [show (4251528 * k + 3800128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1900064) = 1062882 * k + 950032 := by
    unfold C
    simp [show (2125764 * k + 1900064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 950032) = 531441 * k + 475016 := by
    unfold C
    simp [show (1062882 * k + 950032) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 937243) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 937243)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_937279 : ∀ k : Nat,
    iterate (1048576 * k + 937279) 32 = 531441 * k + 475034 ∧
      531441 * k + 475034 < 1048576 * k + 937279 := by
  intro k
  have h1 : C (1048576 * k + 937279) = 3145728 * k + 2811838 := by
    unfold C
    simp [show (1048576 * k + 937279) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2811838) = 1572864 * k + 1405919 := by
    unfold C
    simp [show (3145728 * k + 2811838) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1405919) = 4718592 * k + 4217758 := by
    unfold C
    simp [show (1572864 * k + 1405919) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4217758) = 2359296 * k + 2108879 := by
    unfold C
    simp [show (4718592 * k + 4217758) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2108879) = 7077888 * k + 6326638 := by
    unfold C
    simp [show (2359296 * k + 2108879) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6326638) = 3538944 * k + 3163319 := by
    unfold C
    simp [show (7077888 * k + 6326638) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3163319) = 10616832 * k + 9489958 := by
    unfold C
    simp [show (3538944 * k + 3163319) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9489958) = 5308416 * k + 4744979 := by
    unfold C
    simp [show (10616832 * k + 9489958) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4744979) = 15925248 * k + 14234938 := by
    unfold C
    simp [show (5308416 * k + 4744979) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14234938) = 7962624 * k + 7117469 := by
    unfold C
    simp [show (15925248 * k + 14234938) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7117469) = 23887872 * k + 21352408 := by
    unfold C
    simp [show (7962624 * k + 7117469) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21352408) = 11943936 * k + 10676204 := by
    unfold C
    simp [show (23887872 * k + 21352408) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10676204) = 5971968 * k + 5338102 := by
    unfold C
    simp [show (11943936 * k + 10676204) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5338102) = 2985984 * k + 2669051 := by
    unfold C
    simp [show (5971968 * k + 5338102) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2669051) = 8957952 * k + 8007154 := by
    unfold C
    simp [show (2985984 * k + 2669051) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8007154) = 4478976 * k + 4003577 := by
    unfold C
    simp [show (8957952 * k + 8007154) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4003577) = 13436928 * k + 12010732 := by
    unfold C
    simp [show (4478976 * k + 4003577) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12010732) = 6718464 * k + 6005366 := by
    unfold C
    simp [show (13436928 * k + 12010732) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6005366) = 3359232 * k + 3002683 := by
    unfold C
    simp [show (6718464 * k + 6005366) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3002683) = 10077696 * k + 9008050 := by
    unfold C
    simp [show (3359232 * k + 3002683) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9008050) = 5038848 * k + 4504025 := by
    unfold C
    simp [show (10077696 * k + 9008050) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4504025) = 15116544 * k + 13512076 := by
    unfold C
    simp [show (5038848 * k + 4504025) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13512076) = 7558272 * k + 6756038 := by
    unfold C
    simp [show (15116544 * k + 13512076) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6756038) = 3779136 * k + 3378019 := by
    unfold C
    simp [show (7558272 * k + 6756038) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3378019) = 11337408 * k + 10134058 := by
    unfold C
    simp [show (3779136 * k + 3378019) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10134058) = 5668704 * k + 5067029 := by
    unfold C
    simp [show (11337408 * k + 10134058) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5067029) = 17006112 * k + 15201088 := by
    unfold C
    simp [show (5668704 * k + 5067029) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15201088) = 8503056 * k + 7600544 := by
    unfold C
    simp [show (17006112 * k + 15201088) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7600544) = 4251528 * k + 3800272 := by
    unfold C
    simp [show (8503056 * k + 7600544) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3800272) = 2125764 * k + 1900136 := by
    unfold C
    simp [show (4251528 * k + 3800272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1900136) = 1062882 * k + 950068 := by
    unfold C
    simp [show (2125764 * k + 1900136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 950068) = 531441 * k + 475034 := by
    unfold C
    simp [show (1062882 * k + 950068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 937279) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 937279)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_938267 : ∀ k : Nat,
    iterate (1048576 * k + 938267) 32 = 531441 * k + 475535 ∧
      531441 * k + 475535 < 1048576 * k + 938267 := by
  intro k
  have h1 : C (1048576 * k + 938267) = 3145728 * k + 2814802 := by
    unfold C
    simp [show (1048576 * k + 938267) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2814802) = 1572864 * k + 1407401 := by
    unfold C
    simp [show (3145728 * k + 2814802) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1407401) = 4718592 * k + 4222204 := by
    unfold C
    simp [show (1572864 * k + 1407401) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4222204) = 2359296 * k + 2111102 := by
    unfold C
    simp [show (4718592 * k + 4222204) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2111102) = 1179648 * k + 1055551 := by
    unfold C
    simp [show (2359296 * k + 2111102) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1055551) = 3538944 * k + 3166654 := by
    unfold C
    simp [show (1179648 * k + 1055551) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3166654) = 1769472 * k + 1583327 := by
    unfold C
    simp [show (3538944 * k + 3166654) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1583327) = 5308416 * k + 4749982 := by
    unfold C
    simp [show (1769472 * k + 1583327) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4749982) = 2654208 * k + 2374991 := by
    unfold C
    simp [show (5308416 * k + 4749982) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2374991) = 7962624 * k + 7124974 := by
    unfold C
    simp [show (2654208 * k + 2374991) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7124974) = 3981312 * k + 3562487 := by
    unfold C
    simp [show (7962624 * k + 7124974) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3562487) = 11943936 * k + 10687462 := by
    unfold C
    simp [show (3981312 * k + 3562487) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10687462) = 5971968 * k + 5343731 := by
    unfold C
    simp [show (11943936 * k + 10687462) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5343731) = 17915904 * k + 16031194 := by
    unfold C
    simp [show (5971968 * k + 5343731) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16031194) = 8957952 * k + 8015597 := by
    unfold C
    simp [show (17915904 * k + 16031194) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8015597) = 26873856 * k + 24046792 := by
    unfold C
    simp [show (8957952 * k + 8015597) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24046792) = 13436928 * k + 12023396 := by
    unfold C
    simp [show (26873856 * k + 24046792) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12023396) = 6718464 * k + 6011698 := by
    unfold C
    simp [show (13436928 * k + 12023396) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6011698) = 3359232 * k + 3005849 := by
    unfold C
    simp [show (6718464 * k + 6011698) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3005849) = 10077696 * k + 9017548 := by
    unfold C
    simp [show (3359232 * k + 3005849) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9017548) = 5038848 * k + 4508774 := by
    unfold C
    simp [show (10077696 * k + 9017548) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4508774) = 2519424 * k + 2254387 := by
    unfold C
    simp [show (5038848 * k + 4508774) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2254387) = 7558272 * k + 6763162 := by
    unfold C
    simp [show (2519424 * k + 2254387) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6763162) = 3779136 * k + 3381581 := by
    unfold C
    simp [show (7558272 * k + 6763162) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3381581) = 11337408 * k + 10144744 := by
    unfold C
    simp [show (3779136 * k + 3381581) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10144744) = 5668704 * k + 5072372 := by
    unfold C
    simp [show (11337408 * k + 10144744) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5072372) = 2834352 * k + 2536186 := by
    unfold C
    simp [show (5668704 * k + 5072372) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2536186) = 1417176 * k + 1268093 := by
    unfold C
    simp [show (2834352 * k + 2536186) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1268093) = 4251528 * k + 3804280 := by
    unfold C
    simp [show (1417176 * k + 1268093) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3804280) = 2125764 * k + 1902140 := by
    unfold C
    simp [show (4251528 * k + 3804280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1902140) = 1062882 * k + 951070 := by
    unfold C
    simp [show (2125764 * k + 1902140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 951070) = 531441 * k + 475535 := by
    unfold C
    simp [show (1062882 * k + 951070) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 938267) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 938267)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_938303 : ∀ k : Nat,
    iterate (1048576 * k + 938303) 32 = 531441 * k + 475553 ∧
      531441 * k + 475553 < 1048576 * k + 938303 := by
  intro k
  have h1 : C (1048576 * k + 938303) = 3145728 * k + 2814910 := by
    unfold C
    simp [show (1048576 * k + 938303) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2814910) = 1572864 * k + 1407455 := by
    unfold C
    simp [show (3145728 * k + 2814910) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1407455) = 4718592 * k + 4222366 := by
    unfold C
    simp [show (1572864 * k + 1407455) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4222366) = 2359296 * k + 2111183 := by
    unfold C
    simp [show (4718592 * k + 4222366) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2111183) = 7077888 * k + 6333550 := by
    unfold C
    simp [show (2359296 * k + 2111183) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6333550) = 3538944 * k + 3166775 := by
    unfold C
    simp [show (7077888 * k + 6333550) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3166775) = 10616832 * k + 9500326 := by
    unfold C
    simp [show (3538944 * k + 3166775) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9500326) = 5308416 * k + 4750163 := by
    unfold C
    simp [show (10616832 * k + 9500326) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4750163) = 15925248 * k + 14250490 := by
    unfold C
    simp [show (5308416 * k + 4750163) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14250490) = 7962624 * k + 7125245 := by
    unfold C
    simp [show (15925248 * k + 14250490) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7125245) = 23887872 * k + 21375736 := by
    unfold C
    simp [show (7962624 * k + 7125245) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21375736) = 11943936 * k + 10687868 := by
    unfold C
    simp [show (23887872 * k + 21375736) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10687868) = 5971968 * k + 5343934 := by
    unfold C
    simp [show (11943936 * k + 10687868) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5343934) = 2985984 * k + 2671967 := by
    unfold C
    simp [show (5971968 * k + 5343934) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2671967) = 8957952 * k + 8015902 := by
    unfold C
    simp [show (2985984 * k + 2671967) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8015902) = 4478976 * k + 4007951 := by
    unfold C
    simp [show (8957952 * k + 8015902) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4007951) = 13436928 * k + 12023854 := by
    unfold C
    simp [show (4478976 * k + 4007951) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12023854) = 6718464 * k + 6011927 := by
    unfold C
    simp [show (13436928 * k + 12023854) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6011927) = 20155392 * k + 18035782 := by
    unfold C
    simp [show (6718464 * k + 6011927) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18035782) = 10077696 * k + 9017891 := by
    unfold C
    simp [show (20155392 * k + 18035782) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9017891) = 30233088 * k + 27053674 := by
    unfold C
    simp [show (10077696 * k + 9017891) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 27053674) = 15116544 * k + 13526837 := by
    unfold C
    simp [show (30233088 * k + 27053674) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13526837) = 45349632 * k + 40580512 := by
    unfold C
    simp [show (15116544 * k + 13526837) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 40580512) = 22674816 * k + 20290256 := by
    unfold C
    simp [show (45349632 * k + 40580512) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 20290256) = 11337408 * k + 10145128 := by
    unfold C
    simp [show (22674816 * k + 20290256) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10145128) = 5668704 * k + 5072564 := by
    unfold C
    simp [show (11337408 * k + 10145128) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5072564) = 2834352 * k + 2536282 := by
    unfold C
    simp [show (5668704 * k + 5072564) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2536282) = 1417176 * k + 1268141 := by
    unfold C
    simp [show (2834352 * k + 2536282) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1268141) = 4251528 * k + 3804424 := by
    unfold C
    simp [show (1417176 * k + 1268141) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3804424) = 2125764 * k + 1902212 := by
    unfold C
    simp [show (4251528 * k + 3804424) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1902212) = 1062882 * k + 951106 := by
    unfold C
    simp [show (2125764 * k + 1902212) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 951106) = 531441 * k + 475553 := by
    unfold C
    simp [show (1062882 * k + 951106) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 938303) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 938303)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_938703 : ∀ k : Nat,
    iterate (1048576 * k + 938703) 32 = 531441 * k + 475756 ∧
      531441 * k + 475756 < 1048576 * k + 938703 := by
  intro k
  have h1 : C (1048576 * k + 938703) = 3145728 * k + 2816110 := by
    unfold C
    simp [show (1048576 * k + 938703) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2816110) = 1572864 * k + 1408055 := by
    unfold C
    simp [show (3145728 * k + 2816110) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1408055) = 4718592 * k + 4224166 := by
    unfold C
    simp [show (1572864 * k + 1408055) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4224166) = 2359296 * k + 2112083 := by
    unfold C
    simp [show (4718592 * k + 4224166) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2112083) = 7077888 * k + 6336250 := by
    unfold C
    simp [show (2359296 * k + 2112083) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6336250) = 3538944 * k + 3168125 := by
    unfold C
    simp [show (7077888 * k + 6336250) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3168125) = 10616832 * k + 9504376 := by
    unfold C
    simp [show (3538944 * k + 3168125) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9504376) = 5308416 * k + 4752188 := by
    unfold C
    simp [show (10616832 * k + 9504376) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4752188) = 2654208 * k + 2376094 := by
    unfold C
    simp [show (5308416 * k + 4752188) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2376094) = 1327104 * k + 1188047 := by
    unfold C
    simp [show (2654208 * k + 2376094) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1188047) = 3981312 * k + 3564142 := by
    unfold C
    simp [show (1327104 * k + 1188047) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3564142) = 1990656 * k + 1782071 := by
    unfold C
    simp [show (3981312 * k + 3564142) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1782071) = 5971968 * k + 5346214 := by
    unfold C
    simp [show (1990656 * k + 1782071) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5346214) = 2985984 * k + 2673107 := by
    unfold C
    simp [show (5971968 * k + 5346214) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2673107) = 8957952 * k + 8019322 := by
    unfold C
    simp [show (2985984 * k + 2673107) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8019322) = 4478976 * k + 4009661 := by
    unfold C
    simp [show (8957952 * k + 8019322) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4009661) = 13436928 * k + 12028984 := by
    unfold C
    simp [show (4478976 * k + 4009661) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12028984) = 6718464 * k + 6014492 := by
    unfold C
    simp [show (13436928 * k + 12028984) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6014492) = 3359232 * k + 3007246 := by
    unfold C
    simp [show (6718464 * k + 6014492) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3007246) = 1679616 * k + 1503623 := by
    unfold C
    simp [show (3359232 * k + 3007246) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1503623) = 5038848 * k + 4510870 := by
    unfold C
    simp [show (1679616 * k + 1503623) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4510870) = 2519424 * k + 2255435 := by
    unfold C
    simp [show (5038848 * k + 4510870) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2255435) = 7558272 * k + 6766306 := by
    unfold C
    simp [show (2519424 * k + 2255435) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6766306) = 3779136 * k + 3383153 := by
    unfold C
    simp [show (7558272 * k + 6766306) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3383153) = 11337408 * k + 10149460 := by
    unfold C
    simp [show (3779136 * k + 3383153) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10149460) = 5668704 * k + 5074730 := by
    unfold C
    simp [show (11337408 * k + 10149460) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5074730) = 2834352 * k + 2537365 := by
    unfold C
    simp [show (5668704 * k + 5074730) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2537365) = 8503056 * k + 7612096 := by
    unfold C
    simp [show (2834352 * k + 2537365) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7612096) = 4251528 * k + 3806048 := by
    unfold C
    simp [show (8503056 * k + 7612096) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3806048) = 2125764 * k + 1903024 := by
    unfold C
    simp [show (4251528 * k + 3806048) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1903024) = 1062882 * k + 951512 := by
    unfold C
    simp [show (2125764 * k + 1903024) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 951512) = 531441 * k + 475756 := by
    unfold C
    simp [show (1062882 * k + 951512) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 938703) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 938703)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_939647 : ∀ k : Nat,
    iterate (1048576 * k + 939647) 32 = 531441 * k + 476234 ∧
      531441 * k + 476234 < 1048576 * k + 939647 := by
  intro k
  have h1 : C (1048576 * k + 939647) = 3145728 * k + 2818942 := by
    unfold C
    simp [show (1048576 * k + 939647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2818942) = 1572864 * k + 1409471 := by
    unfold C
    simp [show (3145728 * k + 2818942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1409471) = 4718592 * k + 4228414 := by
    unfold C
    simp [show (1572864 * k + 1409471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4228414) = 2359296 * k + 2114207 := by
    unfold C
    simp [show (4718592 * k + 4228414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2114207) = 7077888 * k + 6342622 := by
    unfold C
    simp [show (2359296 * k + 2114207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6342622) = 3538944 * k + 3171311 := by
    unfold C
    simp [show (7077888 * k + 6342622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3171311) = 10616832 * k + 9513934 := by
    unfold C
    simp [show (3538944 * k + 3171311) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9513934) = 5308416 * k + 4756967 := by
    unfold C
    simp [show (10616832 * k + 9513934) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4756967) = 15925248 * k + 14270902 := by
    unfold C
    simp [show (5308416 * k + 4756967) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14270902) = 7962624 * k + 7135451 := by
    unfold C
    simp [show (15925248 * k + 14270902) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7135451) = 23887872 * k + 21406354 := by
    unfold C
    simp [show (7962624 * k + 7135451) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21406354) = 11943936 * k + 10703177 := by
    unfold C
    simp [show (23887872 * k + 21406354) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10703177) = 35831808 * k + 32109532 := by
    unfold C
    simp [show (11943936 * k + 10703177) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 32109532) = 17915904 * k + 16054766 := by
    unfold C
    simp [show (35831808 * k + 32109532) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16054766) = 8957952 * k + 8027383 := by
    unfold C
    simp [show (17915904 * k + 16054766) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8027383) = 26873856 * k + 24082150 := by
    unfold C
    simp [show (8957952 * k + 8027383) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24082150) = 13436928 * k + 12041075 := by
    unfold C
    simp [show (26873856 * k + 24082150) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12041075) = 40310784 * k + 36123226 := by
    unfold C
    simp [show (13436928 * k + 12041075) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 36123226) = 20155392 * k + 18061613 := by
    unfold C
    simp [show (40310784 * k + 36123226) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 18061613) = 60466176 * k + 54184840 := by
    unfold C
    simp [show (20155392 * k + 18061613) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 54184840) = 30233088 * k + 27092420 := by
    unfold C
    simp [show (60466176 * k + 54184840) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 27092420) = 15116544 * k + 13546210 := by
    unfold C
    simp [show (30233088 * k + 27092420) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 13546210) = 7558272 * k + 6773105 := by
    unfold C
    simp [show (15116544 * k + 13546210) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6773105) = 22674816 * k + 20319316 := by
    unfold C
    simp [show (7558272 * k + 6773105) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20319316) = 11337408 * k + 10159658 := by
    unfold C
    simp [show (22674816 * k + 20319316) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10159658) = 5668704 * k + 5079829 := by
    unfold C
    simp [show (11337408 * k + 10159658) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5079829) = 17006112 * k + 15239488 := by
    unfold C
    simp [show (5668704 * k + 5079829) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15239488) = 8503056 * k + 7619744 := by
    unfold C
    simp [show (17006112 * k + 15239488) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7619744) = 4251528 * k + 3809872 := by
    unfold C
    simp [show (8503056 * k + 7619744) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3809872) = 2125764 * k + 1904936 := by
    unfold C
    simp [show (4251528 * k + 3809872) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1904936) = 1062882 * k + 952468 := by
    unfold C
    simp [show (2125764 * k + 1904936) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 952468) = 531441 * k + 476234 := by
    unfold C
    simp [show (1062882 * k + 952468) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 939647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 939647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_939751 : ∀ k : Nat,
    iterate (1048576 * k + 939751) 32 = 531441 * k + 476287 ∧
      531441 * k + 476287 < 1048576 * k + 939751 := by
  intro k
  have h1 : C (1048576 * k + 939751) = 3145728 * k + 2819254 := by
    unfold C
    simp [show (1048576 * k + 939751) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2819254) = 1572864 * k + 1409627 := by
    unfold C
    simp [show (3145728 * k + 2819254) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1409627) = 4718592 * k + 4228882 := by
    unfold C
    simp [show (1572864 * k + 1409627) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4228882) = 2359296 * k + 2114441 := by
    unfold C
    simp [show (4718592 * k + 4228882) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2114441) = 7077888 * k + 6343324 := by
    unfold C
    simp [show (2359296 * k + 2114441) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6343324) = 3538944 * k + 3171662 := by
    unfold C
    simp [show (7077888 * k + 6343324) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3171662) = 1769472 * k + 1585831 := by
    unfold C
    simp [show (3538944 * k + 3171662) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1585831) = 5308416 * k + 4757494 := by
    unfold C
    simp [show (1769472 * k + 1585831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4757494) = 2654208 * k + 2378747 := by
    unfold C
    simp [show (5308416 * k + 4757494) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2378747) = 7962624 * k + 7136242 := by
    unfold C
    simp [show (2654208 * k + 2378747) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7136242) = 3981312 * k + 3568121 := by
    unfold C
    simp [show (7962624 * k + 7136242) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3568121) = 11943936 * k + 10704364 := by
    unfold C
    simp [show (3981312 * k + 3568121) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10704364) = 5971968 * k + 5352182 := by
    unfold C
    simp [show (11943936 * k + 10704364) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5352182) = 2985984 * k + 2676091 := by
    unfold C
    simp [show (5971968 * k + 5352182) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2676091) = 8957952 * k + 8028274 := by
    unfold C
    simp [show (2985984 * k + 2676091) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8028274) = 4478976 * k + 4014137 := by
    unfold C
    simp [show (8957952 * k + 8028274) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4014137) = 13436928 * k + 12042412 := by
    unfold C
    simp [show (4478976 * k + 4014137) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12042412) = 6718464 * k + 6021206 := by
    unfold C
    simp [show (13436928 * k + 12042412) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6021206) = 3359232 * k + 3010603 := by
    unfold C
    simp [show (6718464 * k + 6021206) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3010603) = 10077696 * k + 9031810 := by
    unfold C
    simp [show (3359232 * k + 3010603) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9031810) = 5038848 * k + 4515905 := by
    unfold C
    simp [show (10077696 * k + 9031810) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4515905) = 15116544 * k + 13547716 := by
    unfold C
    simp [show (5038848 * k + 4515905) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13547716) = 7558272 * k + 6773858 := by
    unfold C
    simp [show (15116544 * k + 13547716) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6773858) = 3779136 * k + 3386929 := by
    unfold C
    simp [show (7558272 * k + 6773858) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3386929) = 11337408 * k + 10160788 := by
    unfold C
    simp [show (3779136 * k + 3386929) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10160788) = 5668704 * k + 5080394 := by
    unfold C
    simp [show (11337408 * k + 10160788) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5080394) = 2834352 * k + 2540197 := by
    unfold C
    simp [show (5668704 * k + 5080394) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2540197) = 8503056 * k + 7620592 := by
    unfold C
    simp [show (2834352 * k + 2540197) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7620592) = 4251528 * k + 3810296 := by
    unfold C
    simp [show (8503056 * k + 7620592) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3810296) = 2125764 * k + 1905148 := by
    unfold C
    simp [show (4251528 * k + 3810296) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1905148) = 1062882 * k + 952574 := by
    unfold C
    simp [show (2125764 * k + 1905148) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 952574) = 531441 * k + 476287 := by
    unfold C
    simp [show (1062882 * k + 952574) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 939751) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 939751)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_940351 : ∀ k : Nat,
    iterate (1048576 * k + 940351) 32 = 531441 * k + 476591 ∧
      531441 * k + 476591 < 1048576 * k + 940351 := by
  intro k
  have h1 : C (1048576 * k + 940351) = 3145728 * k + 2821054 := by
    unfold C
    simp [show (1048576 * k + 940351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2821054) = 1572864 * k + 1410527 := by
    unfold C
    simp [show (3145728 * k + 2821054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1410527) = 4718592 * k + 4231582 := by
    unfold C
    simp [show (1572864 * k + 1410527) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4231582) = 2359296 * k + 2115791 := by
    unfold C
    simp [show (4718592 * k + 4231582) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2115791) = 7077888 * k + 6347374 := by
    unfold C
    simp [show (2359296 * k + 2115791) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6347374) = 3538944 * k + 3173687 := by
    unfold C
    simp [show (7077888 * k + 6347374) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3173687) = 10616832 * k + 9521062 := by
    unfold C
    simp [show (3538944 * k + 3173687) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9521062) = 5308416 * k + 4760531 := by
    unfold C
    simp [show (10616832 * k + 9521062) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4760531) = 15925248 * k + 14281594 := by
    unfold C
    simp [show (5308416 * k + 4760531) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14281594) = 7962624 * k + 7140797 := by
    unfold C
    simp [show (15925248 * k + 14281594) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7140797) = 23887872 * k + 21422392 := by
    unfold C
    simp [show (7962624 * k + 7140797) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21422392) = 11943936 * k + 10711196 := by
    unfold C
    simp [show (23887872 * k + 21422392) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10711196) = 5971968 * k + 5355598 := by
    unfold C
    simp [show (11943936 * k + 10711196) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5355598) = 2985984 * k + 2677799 := by
    unfold C
    simp [show (5971968 * k + 5355598) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2677799) = 8957952 * k + 8033398 := by
    unfold C
    simp [show (2985984 * k + 2677799) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8033398) = 4478976 * k + 4016699 := by
    unfold C
    simp [show (8957952 * k + 8033398) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4016699) = 13436928 * k + 12050098 := by
    unfold C
    simp [show (4478976 * k + 4016699) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12050098) = 6718464 * k + 6025049 := by
    unfold C
    simp [show (13436928 * k + 12050098) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6025049) = 20155392 * k + 18075148 := by
    unfold C
    simp [show (6718464 * k + 6025049) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18075148) = 10077696 * k + 9037574 := by
    unfold C
    simp [show (20155392 * k + 18075148) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9037574) = 5038848 * k + 4518787 := by
    unfold C
    simp [show (10077696 * k + 9037574) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4518787) = 15116544 * k + 13556362 := by
    unfold C
    simp [show (5038848 * k + 4518787) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 13556362) = 7558272 * k + 6778181 := by
    unfold C
    simp [show (15116544 * k + 13556362) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 6778181) = 22674816 * k + 20334544 := by
    unfold C
    simp [show (7558272 * k + 6778181) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 20334544) = 11337408 * k + 10167272 := by
    unfold C
    simp [show (22674816 * k + 20334544) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10167272) = 5668704 * k + 5083636 := by
    unfold C
    simp [show (11337408 * k + 10167272) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5083636) = 2834352 * k + 2541818 := by
    unfold C
    simp [show (5668704 * k + 5083636) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2541818) = 1417176 * k + 1270909 := by
    unfold C
    simp [show (2834352 * k + 2541818) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1270909) = 4251528 * k + 3812728 := by
    unfold C
    simp [show (1417176 * k + 1270909) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3812728) = 2125764 * k + 1906364 := by
    unfold C
    simp [show (4251528 * k + 3812728) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1906364) = 1062882 * k + 953182 := by
    unfold C
    simp [show (2125764 * k + 1906364) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 953182) = 531441 * k + 476591 := by
    unfold C
    simp [show (1062882 * k + 953182) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 940351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 940351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_942491 : ∀ k : Nat,
    iterate (1048576 * k + 942491) 32 = 531441 * k + 477676 ∧
      531441 * k + 477676 < 1048576 * k + 942491 := by
  intro k
  have h1 : C (1048576 * k + 942491) = 3145728 * k + 2827474 := by
    unfold C
    simp [show (1048576 * k + 942491) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2827474) = 1572864 * k + 1413737 := by
    unfold C
    simp [show (3145728 * k + 2827474) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1413737) = 4718592 * k + 4241212 := by
    unfold C
    simp [show (1572864 * k + 1413737) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4241212) = 2359296 * k + 2120606 := by
    unfold C
    simp [show (4718592 * k + 4241212) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2120606) = 1179648 * k + 1060303 := by
    unfold C
    simp [show (2359296 * k + 2120606) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1060303) = 3538944 * k + 3180910 := by
    unfold C
    simp [show (1179648 * k + 1060303) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3180910) = 1769472 * k + 1590455 := by
    unfold C
    simp [show (3538944 * k + 3180910) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1590455) = 5308416 * k + 4771366 := by
    unfold C
    simp [show (1769472 * k + 1590455) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 4771366) = 2654208 * k + 2385683 := by
    unfold C
    simp [show (5308416 * k + 4771366) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2385683) = 7962624 * k + 7157050 := by
    unfold C
    simp [show (2654208 * k + 2385683) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7157050) = 3981312 * k + 3578525 := by
    unfold C
    simp [show (7962624 * k + 7157050) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3578525) = 11943936 * k + 10735576 := by
    unfold C
    simp [show (3981312 * k + 3578525) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10735576) = 5971968 * k + 5367788 := by
    unfold C
    simp [show (11943936 * k + 10735576) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5367788) = 2985984 * k + 2683894 := by
    unfold C
    simp [show (5971968 * k + 5367788) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2683894) = 1492992 * k + 1341947 := by
    unfold C
    simp [show (2985984 * k + 2683894) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1341947) = 4478976 * k + 4025842 := by
    unfold C
    simp [show (1492992 * k + 1341947) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4025842) = 2239488 * k + 2012921 := by
    unfold C
    simp [show (4478976 * k + 4025842) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2012921) = 6718464 * k + 6038764 := by
    unfold C
    simp [show (2239488 * k + 2012921) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6038764) = 3359232 * k + 3019382 := by
    unfold C
    simp [show (6718464 * k + 6038764) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3019382) = 1679616 * k + 1509691 := by
    unfold C
    simp [show (3359232 * k + 3019382) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1509691) = 5038848 * k + 4529074 := by
    unfold C
    simp [show (1679616 * k + 1509691) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4529074) = 2519424 * k + 2264537 := by
    unfold C
    simp [show (5038848 * k + 4529074) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2264537) = 7558272 * k + 6793612 := by
    unfold C
    simp [show (2519424 * k + 2264537) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6793612) = 3779136 * k + 3396806 := by
    unfold C
    simp [show (7558272 * k + 6793612) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3396806) = 1889568 * k + 1698403 := by
    unfold C
    simp [show (3779136 * k + 3396806) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1698403) = 5668704 * k + 5095210 := by
    unfold C
    simp [show (1889568 * k + 1698403) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5095210) = 2834352 * k + 2547605 := by
    unfold C
    simp [show (5668704 * k + 5095210) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2547605) = 8503056 * k + 7642816 := by
    unfold C
    simp [show (2834352 * k + 2547605) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7642816) = 4251528 * k + 3821408 := by
    unfold C
    simp [show (8503056 * k + 7642816) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3821408) = 2125764 * k + 1910704 := by
    unfold C
    simp [show (4251528 * k + 3821408) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1910704) = 1062882 * k + 955352 := by
    unfold C
    simp [show (2125764 * k + 1910704) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 955352) = 531441 * k + 477676 := by
    unfold C
    simp [show (1062882 * k + 955352) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 942491) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 942491)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_943263 : ∀ k : Nat,
    iterate (1048576 * k + 943263) 32 = 531441 * k + 478067 ∧
      531441 * k + 478067 < 1048576 * k + 943263 := by
  intro k
  have h1 : C (1048576 * k + 943263) = 3145728 * k + 2829790 := by
    unfold C
    simp [show (1048576 * k + 943263) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2829790) = 1572864 * k + 1414895 := by
    unfold C
    simp [show (3145728 * k + 2829790) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1414895) = 4718592 * k + 4244686 := by
    unfold C
    simp [show (1572864 * k + 1414895) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4244686) = 2359296 * k + 2122343 := by
    unfold C
    simp [show (4718592 * k + 4244686) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2122343) = 7077888 * k + 6367030 := by
    unfold C
    simp [show (2359296 * k + 2122343) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6367030) = 3538944 * k + 3183515 := by
    unfold C
    simp [show (7077888 * k + 6367030) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3183515) = 10616832 * k + 9550546 := by
    unfold C
    simp [show (3538944 * k + 3183515) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9550546) = 5308416 * k + 4775273 := by
    unfold C
    simp [show (10616832 * k + 9550546) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4775273) = 15925248 * k + 14325820 := by
    unfold C
    simp [show (5308416 * k + 4775273) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14325820) = 7962624 * k + 7162910 := by
    unfold C
    simp [show (15925248 * k + 14325820) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7162910) = 3981312 * k + 3581455 := by
    unfold C
    simp [show (7962624 * k + 7162910) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3581455) = 11943936 * k + 10744366 := by
    unfold C
    simp [show (3981312 * k + 3581455) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10744366) = 5971968 * k + 5372183 := by
    unfold C
    simp [show (11943936 * k + 10744366) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5372183) = 17915904 * k + 16116550 := by
    unfold C
    simp [show (5971968 * k + 5372183) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16116550) = 8957952 * k + 8058275 := by
    unfold C
    simp [show (17915904 * k + 16116550) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8058275) = 26873856 * k + 24174826 := by
    unfold C
    simp [show (8957952 * k + 8058275) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 24174826) = 13436928 * k + 12087413 := by
    unfold C
    simp [show (26873856 * k + 24174826) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12087413) = 40310784 * k + 36262240 := by
    unfold C
    simp [show (13436928 * k + 12087413) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 36262240) = 20155392 * k + 18131120 := by
    unfold C
    simp [show (40310784 * k + 36262240) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 18131120) = 10077696 * k + 9065560 := by
    unfold C
    simp [show (20155392 * k + 18131120) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9065560) = 5038848 * k + 4532780 := by
    unfold C
    simp [show (10077696 * k + 9065560) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4532780) = 2519424 * k + 2266390 := by
    unfold C
    simp [show (5038848 * k + 4532780) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2266390) = 1259712 * k + 1133195 := by
    unfold C
    simp [show (2519424 * k + 2266390) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1133195) = 3779136 * k + 3399586 := by
    unfold C
    simp [show (1259712 * k + 1133195) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3399586) = 1889568 * k + 1699793 := by
    unfold C
    simp [show (3779136 * k + 3399586) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1699793) = 5668704 * k + 5099380 := by
    unfold C
    simp [show (1889568 * k + 1699793) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5099380) = 2834352 * k + 2549690 := by
    unfold C
    simp [show (5668704 * k + 5099380) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2549690) = 1417176 * k + 1274845 := by
    unfold C
    simp [show (2834352 * k + 2549690) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1274845) = 4251528 * k + 3824536 := by
    unfold C
    simp [show (1417176 * k + 1274845) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3824536) = 2125764 * k + 1912268 := by
    unfold C
    simp [show (4251528 * k + 3824536) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1912268) = 1062882 * k + 956134 := by
    unfold C
    simp [show (2125764 * k + 1912268) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 956134) = 531441 * k + 478067 := by
    unfold C
    simp [show (1062882 * k + 956134) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 943263) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 943263)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_943423 : ∀ k : Nat,
    iterate (1048576 * k + 943423) 32 = 531441 * k + 478148 ∧
      531441 * k + 478148 < 1048576 * k + 943423 := by
  intro k
  have h1 : C (1048576 * k + 943423) = 3145728 * k + 2830270 := by
    unfold C
    simp [show (1048576 * k + 943423) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2830270) = 1572864 * k + 1415135 := by
    unfold C
    simp [show (3145728 * k + 2830270) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1415135) = 4718592 * k + 4245406 := by
    unfold C
    simp [show (1572864 * k + 1415135) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4245406) = 2359296 * k + 2122703 := by
    unfold C
    simp [show (4718592 * k + 4245406) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2122703) = 7077888 * k + 6368110 := by
    unfold C
    simp [show (2359296 * k + 2122703) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6368110) = 3538944 * k + 3184055 := by
    unfold C
    simp [show (7077888 * k + 6368110) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3184055) = 10616832 * k + 9552166 := by
    unfold C
    simp [show (3538944 * k + 3184055) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9552166) = 5308416 * k + 4776083 := by
    unfold C
    simp [show (10616832 * k + 9552166) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4776083) = 15925248 * k + 14328250 := by
    unfold C
    simp [show (5308416 * k + 4776083) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14328250) = 7962624 * k + 7164125 := by
    unfold C
    simp [show (15925248 * k + 14328250) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7164125) = 23887872 * k + 21492376 := by
    unfold C
    simp [show (7962624 * k + 7164125) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21492376) = 11943936 * k + 10746188 := by
    unfold C
    simp [show (23887872 * k + 21492376) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10746188) = 5971968 * k + 5373094 := by
    unfold C
    simp [show (11943936 * k + 10746188) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5373094) = 2985984 * k + 2686547 := by
    unfold C
    simp [show (5971968 * k + 5373094) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2686547) = 8957952 * k + 8059642 := by
    unfold C
    simp [show (2985984 * k + 2686547) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8059642) = 4478976 * k + 4029821 := by
    unfold C
    simp [show (8957952 * k + 8059642) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4029821) = 13436928 * k + 12089464 := by
    unfold C
    simp [show (4478976 * k + 4029821) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12089464) = 6718464 * k + 6044732 := by
    unfold C
    simp [show (13436928 * k + 12089464) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6044732) = 3359232 * k + 3022366 := by
    unfold C
    simp [show (6718464 * k + 6044732) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3022366) = 1679616 * k + 1511183 := by
    unfold C
    simp [show (3359232 * k + 3022366) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1511183) = 5038848 * k + 4533550 := by
    unfold C
    simp [show (1679616 * k + 1511183) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4533550) = 2519424 * k + 2266775 := by
    unfold C
    simp [show (5038848 * k + 4533550) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2266775) = 7558272 * k + 6800326 := by
    unfold C
    simp [show (2519424 * k + 2266775) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6800326) = 3779136 * k + 3400163 := by
    unfold C
    simp [show (7558272 * k + 6800326) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3400163) = 11337408 * k + 10200490 := by
    unfold C
    simp [show (3779136 * k + 3400163) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10200490) = 5668704 * k + 5100245 := by
    unfold C
    simp [show (11337408 * k + 10200490) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5100245) = 17006112 * k + 15300736 := by
    unfold C
    simp [show (5668704 * k + 5100245) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 15300736) = 8503056 * k + 7650368 := by
    unfold C
    simp [show (17006112 * k + 15300736) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 7650368) = 4251528 * k + 3825184 := by
    unfold C
    simp [show (8503056 * k + 7650368) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3825184) = 2125764 * k + 1912592 := by
    unfold C
    simp [show (4251528 * k + 3825184) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1912592) = 1062882 * k + 956296 := by
    unfold C
    simp [show (2125764 * k + 1912592) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 956296) = 531441 * k + 478148 := by
    unfold C
    simp [show (1062882 * k + 956296) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 943423) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 943423)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_943983 : ∀ k : Nat,
    iterate (1048576 * k + 943983) 32 = 531441 * k + 478432 ∧
      531441 * k + 478432 < 1048576 * k + 943983 := by
  intro k
  have h1 : C (1048576 * k + 943983) = 3145728 * k + 2831950 := by
    unfold C
    simp [show (1048576 * k + 943983) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2831950) = 1572864 * k + 1415975 := by
    unfold C
    simp [show (3145728 * k + 2831950) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1415975) = 4718592 * k + 4247926 := by
    unfold C
    simp [show (1572864 * k + 1415975) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4247926) = 2359296 * k + 2123963 := by
    unfold C
    simp [show (4718592 * k + 4247926) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2123963) = 7077888 * k + 6371890 := by
    unfold C
    simp [show (2359296 * k + 2123963) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6371890) = 3538944 * k + 3185945 := by
    unfold C
    simp [show (7077888 * k + 6371890) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3185945) = 10616832 * k + 9557836 := by
    unfold C
    simp [show (3538944 * k + 3185945) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9557836) = 5308416 * k + 4778918 := by
    unfold C
    simp [show (10616832 * k + 9557836) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4778918) = 2654208 * k + 2389459 := by
    unfold C
    simp [show (5308416 * k + 4778918) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2389459) = 7962624 * k + 7168378 := by
    unfold C
    simp [show (2654208 * k + 2389459) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7168378) = 3981312 * k + 3584189 := by
    unfold C
    simp [show (7962624 * k + 7168378) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3584189) = 11943936 * k + 10752568 := by
    unfold C
    simp [show (3981312 * k + 3584189) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 10752568) = 5971968 * k + 5376284 := by
    unfold C
    simp [show (11943936 * k + 10752568) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5376284) = 2985984 * k + 2688142 := by
    unfold C
    simp [show (5971968 * k + 5376284) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2688142) = 1492992 * k + 1344071 := by
    unfold C
    simp [show (2985984 * k + 2688142) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1344071) = 4478976 * k + 4032214 := by
    unfold C
    simp [show (1492992 * k + 1344071) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4032214) = 2239488 * k + 2016107 := by
    unfold C
    simp [show (4478976 * k + 4032214) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2016107) = 6718464 * k + 6048322 := by
    unfold C
    simp [show (2239488 * k + 2016107) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6048322) = 3359232 * k + 3024161 := by
    unfold C
    simp [show (6718464 * k + 6048322) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3024161) = 10077696 * k + 9072484 := by
    unfold C
    simp [show (3359232 * k + 3024161) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9072484) = 5038848 * k + 4536242 := by
    unfold C
    simp [show (10077696 * k + 9072484) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4536242) = 2519424 * k + 2268121 := by
    unfold C
    simp [show (5038848 * k + 4536242) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2268121) = 7558272 * k + 6804364 := by
    unfold C
    simp [show (2519424 * k + 2268121) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6804364) = 3779136 * k + 3402182 := by
    unfold C
    simp [show (7558272 * k + 6804364) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3402182) = 1889568 * k + 1701091 := by
    unfold C
    simp [show (3779136 * k + 3402182) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1701091) = 5668704 * k + 5103274 := by
    unfold C
    simp [show (1889568 * k + 1701091) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5103274) = 2834352 * k + 2551637 := by
    unfold C
    simp [show (5668704 * k + 5103274) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2551637) = 8503056 * k + 7654912 := by
    unfold C
    simp [show (2834352 * k + 2551637) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 7654912) = 4251528 * k + 3827456 := by
    unfold C
    simp [show (8503056 * k + 7654912) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 3827456) = 2125764 * k + 1913728 := by
    unfold C
    simp [show (4251528 * k + 3827456) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1913728) = 1062882 * k + 956864 := by
    unfold C
    simp [show (2125764 * k + 1913728) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 956864) = 531441 * k + 478432 := by
    unfold C
    simp [show (1062882 * k + 956864) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 943983) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 943983)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_944447 : ∀ k : Nat,
    iterate (1048576 * k + 944447) 32 = 531441 * k + 478667 ∧
      531441 * k + 478667 < 1048576 * k + 944447 := by
  intro k
  have h1 : C (1048576 * k + 944447) = 3145728 * k + 2833342 := by
    unfold C
    simp [show (1048576 * k + 944447) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2833342) = 1572864 * k + 1416671 := by
    unfold C
    simp [show (3145728 * k + 2833342) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1416671) = 4718592 * k + 4250014 := by
    unfold C
    simp [show (1572864 * k + 1416671) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4250014) = 2359296 * k + 2125007 := by
    unfold C
    simp [show (4718592 * k + 4250014) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2125007) = 7077888 * k + 6375022 := by
    unfold C
    simp [show (2359296 * k + 2125007) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6375022) = 3538944 * k + 3187511 := by
    unfold C
    simp [show (7077888 * k + 6375022) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3187511) = 10616832 * k + 9562534 := by
    unfold C
    simp [show (3538944 * k + 3187511) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 9562534) = 5308416 * k + 4781267 := by
    unfold C
    simp [show (10616832 * k + 9562534) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 4781267) = 15925248 * k + 14343802 := by
    unfold C
    simp [show (5308416 * k + 4781267) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 14343802) = 7962624 * k + 7171901 := by
    unfold C
    simp [show (15925248 * k + 14343802) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7171901) = 23887872 * k + 21515704 := by
    unfold C
    simp [show (7962624 * k + 7171901) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 21515704) = 11943936 * k + 10757852 := by
    unfold C
    simp [show (23887872 * k + 21515704) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 10757852) = 5971968 * k + 5378926 := by
    unfold C
    simp [show (11943936 * k + 10757852) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5378926) = 2985984 * k + 2689463 := by
    unfold C
    simp [show (5971968 * k + 5378926) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2689463) = 8957952 * k + 8068390 := by
    unfold C
    simp [show (2985984 * k + 2689463) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8068390) = 4478976 * k + 4034195 := by
    unfold C
    simp [show (8957952 * k + 8068390) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4034195) = 13436928 * k + 12102586 := by
    unfold C
    simp [show (4478976 * k + 4034195) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12102586) = 6718464 * k + 6051293 := by
    unfold C
    simp [show (13436928 * k + 12102586) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6051293) = 20155392 * k + 18153880 := by
    unfold C
    simp [show (6718464 * k + 6051293) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 18153880) = 10077696 * k + 9076940 := by
    unfold C
    simp [show (20155392 * k + 18153880) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9076940) = 5038848 * k + 4538470 := by
    unfold C
    simp [show (10077696 * k + 9076940) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4538470) = 2519424 * k + 2269235 := by
    unfold C
    simp [show (5038848 * k + 4538470) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2269235) = 7558272 * k + 6807706 := by
    unfold C
    simp [show (2519424 * k + 2269235) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 6807706) = 3779136 * k + 3403853 := by
    unfold C
    simp [show (7558272 * k + 6807706) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3403853) = 11337408 * k + 10211560 := by
    unfold C
    simp [show (3779136 * k + 3403853) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10211560) = 5668704 * k + 5105780 := by
    unfold C
    simp [show (11337408 * k + 10211560) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5105780) = 2834352 * k + 2552890 := by
    unfold C
    simp [show (5668704 * k + 5105780) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2552890) = 1417176 * k + 1276445 := by
    unfold C
    simp [show (2834352 * k + 2552890) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1276445) = 4251528 * k + 3829336 := by
    unfold C
    simp [show (1417176 * k + 1276445) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 3829336) = 2125764 * k + 1914668 := by
    unfold C
    simp [show (4251528 * k + 3829336) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 1914668) = 1062882 * k + 957334 := by
    unfold C
    simp [show (2125764 * k + 1914668) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 957334) = 531441 * k + 478667 := by
    unfold C
    simp [show (1062882 * k + 957334) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 944447) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 944447)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard120
