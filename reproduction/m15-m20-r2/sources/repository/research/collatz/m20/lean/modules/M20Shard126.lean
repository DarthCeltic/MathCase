import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM20Shard126

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod1048576_989407 : ∀ k : Nat,
    iterate (1048576 * k + 989407) 32 = 531441 * k + 501454 ∧
      531441 * k + 501454 < 1048576 * k + 989407 := by
  intro k
  have h1 : C (1048576 * k + 989407) = 3145728 * k + 2968222 := by
    unfold C
    simp [show (1048576 * k + 989407) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2968222) = 1572864 * k + 1484111 := by
    unfold C
    simp [show (3145728 * k + 2968222) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1484111) = 4718592 * k + 4452334 := by
    unfold C
    simp [show (1572864 * k + 1484111) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4452334) = 2359296 * k + 2226167 := by
    unfold C
    simp [show (4718592 * k + 4452334) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2226167) = 7077888 * k + 6678502 := by
    unfold C
    simp [show (2359296 * k + 2226167) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6678502) = 3538944 * k + 3339251 := by
    unfold C
    simp [show (7077888 * k + 6678502) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3339251) = 10616832 * k + 10017754 := by
    unfold C
    simp [show (3538944 * k + 3339251) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10017754) = 5308416 * k + 5008877 := by
    unfold C
    simp [show (10616832 * k + 10017754) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5008877) = 15925248 * k + 15026632 := by
    unfold C
    simp [show (5308416 * k + 5008877) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15026632) = 7962624 * k + 7513316 := by
    unfold C
    simp [show (15925248 * k + 15026632) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7513316) = 3981312 * k + 3756658 := by
    unfold C
    simp [show (7962624 * k + 7513316) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3756658) = 1990656 * k + 1878329 := by
    unfold C
    simp [show (3981312 * k + 3756658) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1878329) = 5971968 * k + 5634988 := by
    unfold C
    simp [show (1990656 * k + 1878329) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5634988) = 2985984 * k + 2817494 := by
    unfold C
    simp [show (5971968 * k + 5634988) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2817494) = 1492992 * k + 1408747 := by
    unfold C
    simp [show (2985984 * k + 2817494) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1408747) = 4478976 * k + 4226242 := by
    unfold C
    simp [show (1492992 * k + 1408747) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4226242) = 2239488 * k + 2113121 := by
    unfold C
    simp [show (4478976 * k + 4226242) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2113121) = 6718464 * k + 6339364 := by
    unfold C
    simp [show (2239488 * k + 2113121) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6339364) = 3359232 * k + 3169682 := by
    unfold C
    simp [show (6718464 * k + 6339364) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3169682) = 1679616 * k + 1584841 := by
    unfold C
    simp [show (3359232 * k + 3169682) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1584841) = 5038848 * k + 4754524 := by
    unfold C
    simp [show (1679616 * k + 1584841) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4754524) = 2519424 * k + 2377262 := by
    unfold C
    simp [show (5038848 * k + 4754524) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2377262) = 1259712 * k + 1188631 := by
    unfold C
    simp [show (2519424 * k + 2377262) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1188631) = 3779136 * k + 3565894 := by
    unfold C
    simp [show (1259712 * k + 1188631) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3565894) = 1889568 * k + 1782947 := by
    unfold C
    simp [show (3779136 * k + 3565894) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1782947) = 5668704 * k + 5348842 := by
    unfold C
    simp [show (1889568 * k + 1782947) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5348842) = 2834352 * k + 2674421 := by
    unfold C
    simp [show (5668704 * k + 5348842) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2674421) = 8503056 * k + 8023264 := by
    unfold C
    simp [show (2834352 * k + 2674421) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8023264) = 4251528 * k + 4011632 := by
    unfold C
    simp [show (8503056 * k + 8023264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4011632) = 2125764 * k + 2005816 := by
    unfold C
    simp [show (4251528 * k + 4011632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2005816) = 1062882 * k + 1002908 := by
    unfold C
    simp [show (2125764 * k + 2005816) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1002908) = 531441 * k + 501454 := by
    unfold C
    simp [show (1062882 * k + 1002908) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 989407) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 989407)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_989567 : ∀ k : Nat,
    iterate (1048576 * k + 989567) 32 = 531441 * k + 501535 ∧
      531441 * k + 501535 < 1048576 * k + 989567 := by
  intro k
  have h1 : C (1048576 * k + 989567) = 3145728 * k + 2968702 := by
    unfold C
    simp [show (1048576 * k + 989567) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2968702) = 1572864 * k + 1484351 := by
    unfold C
    simp [show (3145728 * k + 2968702) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1484351) = 4718592 * k + 4453054 := by
    unfold C
    simp [show (1572864 * k + 1484351) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4453054) = 2359296 * k + 2226527 := by
    unfold C
    simp [show (4718592 * k + 4453054) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2226527) = 7077888 * k + 6679582 := by
    unfold C
    simp [show (2359296 * k + 2226527) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6679582) = 3538944 * k + 3339791 := by
    unfold C
    simp [show (7077888 * k + 6679582) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3339791) = 10616832 * k + 10019374 := by
    unfold C
    simp [show (3538944 * k + 3339791) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10019374) = 5308416 * k + 5009687 := by
    unfold C
    simp [show (10616832 * k + 10019374) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5009687) = 15925248 * k + 15029062 := by
    unfold C
    simp [show (5308416 * k + 5009687) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15029062) = 7962624 * k + 7514531 := by
    unfold C
    simp [show (15925248 * k + 15029062) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7514531) = 23887872 * k + 22543594 := by
    unfold C
    simp [show (7962624 * k + 7514531) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22543594) = 11943936 * k + 11271797 := by
    unfold C
    simp [show (23887872 * k + 22543594) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11271797) = 35831808 * k + 33815392 := by
    unfold C
    simp [show (11943936 * k + 11271797) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33815392) = 17915904 * k + 16907696 := by
    unfold C
    simp [show (35831808 * k + 33815392) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16907696) = 8957952 * k + 8453848 := by
    unfold C
    simp [show (17915904 * k + 16907696) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8453848) = 4478976 * k + 4226924 := by
    unfold C
    simp [show (8957952 * k + 8453848) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4226924) = 2239488 * k + 2113462 := by
    unfold C
    simp [show (4478976 * k + 4226924) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2113462) = 1119744 * k + 1056731 := by
    unfold C
    simp [show (2239488 * k + 2113462) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1056731) = 3359232 * k + 3170194 := by
    unfold C
    simp [show (1119744 * k + 1056731) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3170194) = 1679616 * k + 1585097 := by
    unfold C
    simp [show (3359232 * k + 3170194) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1585097) = 5038848 * k + 4755292 := by
    unfold C
    simp [show (1679616 * k + 1585097) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4755292) = 2519424 * k + 2377646 := by
    unfold C
    simp [show (5038848 * k + 4755292) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2377646) = 1259712 * k + 1188823 := by
    unfold C
    simp [show (2519424 * k + 2377646) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1188823) = 3779136 * k + 3566470 := by
    unfold C
    simp [show (1259712 * k + 1188823) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3566470) = 1889568 * k + 1783235 := by
    unfold C
    simp [show (3779136 * k + 3566470) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1783235) = 5668704 * k + 5349706 := by
    unfold C
    simp [show (1889568 * k + 1783235) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5349706) = 2834352 * k + 2674853 := by
    unfold C
    simp [show (5668704 * k + 5349706) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2674853) = 8503056 * k + 8024560 := by
    unfold C
    simp [show (2834352 * k + 2674853) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8024560) = 4251528 * k + 4012280 := by
    unfold C
    simp [show (8503056 * k + 8024560) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4012280) = 2125764 * k + 2006140 := by
    unfold C
    simp [show (4251528 * k + 4012280) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2006140) = 1062882 * k + 1003070 := by
    unfold C
    simp [show (2125764 * k + 2006140) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1003070) = 531441 * k + 501535 := by
    unfold C
    simp [show (1062882 * k + 1003070) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 989567) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 989567)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_989887 : ∀ k : Nat,
    iterate (1048576 * k + 989887) 32 = 531441 * k + 501697 ∧
      531441 * k + 501697 < 1048576 * k + 989887 := by
  intro k
  have h1 : C (1048576 * k + 989887) = 3145728 * k + 2969662 := by
    unfold C
    simp [show (1048576 * k + 989887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2969662) = 1572864 * k + 1484831 := by
    unfold C
    simp [show (3145728 * k + 2969662) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1484831) = 4718592 * k + 4454494 := by
    unfold C
    simp [show (1572864 * k + 1484831) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4454494) = 2359296 * k + 2227247 := by
    unfold C
    simp [show (4718592 * k + 4454494) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2227247) = 7077888 * k + 6681742 := by
    unfold C
    simp [show (2359296 * k + 2227247) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6681742) = 3538944 * k + 3340871 := by
    unfold C
    simp [show (7077888 * k + 6681742) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3340871) = 10616832 * k + 10022614 := by
    unfold C
    simp [show (3538944 * k + 3340871) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10022614) = 5308416 * k + 5011307 := by
    unfold C
    simp [show (10616832 * k + 10022614) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5011307) = 15925248 * k + 15033922 := by
    unfold C
    simp [show (5308416 * k + 5011307) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15033922) = 7962624 * k + 7516961 := by
    unfold C
    simp [show (15925248 * k + 15033922) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7516961) = 23887872 * k + 22550884 := by
    unfold C
    simp [show (7962624 * k + 7516961) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22550884) = 11943936 * k + 11275442 := by
    unfold C
    simp [show (23887872 * k + 22550884) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11275442) = 5971968 * k + 5637721 := by
    unfold C
    simp [show (11943936 * k + 11275442) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5637721) = 17915904 * k + 16913164 := by
    unfold C
    simp [show (5971968 * k + 5637721) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16913164) = 8957952 * k + 8456582 := by
    unfold C
    simp [show (17915904 * k + 16913164) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8456582) = 4478976 * k + 4228291 := by
    unfold C
    simp [show (8957952 * k + 8456582) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4228291) = 13436928 * k + 12684874 := by
    unfold C
    simp [show (4478976 * k + 4228291) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12684874) = 6718464 * k + 6342437 := by
    unfold C
    simp [show (13436928 * k + 12684874) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6342437) = 20155392 * k + 19027312 := by
    unfold C
    simp [show (6718464 * k + 6342437) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19027312) = 10077696 * k + 9513656 := by
    unfold C
    simp [show (20155392 * k + 19027312) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9513656) = 5038848 * k + 4756828 := by
    unfold C
    simp [show (10077696 * k + 9513656) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4756828) = 2519424 * k + 2378414 := by
    unfold C
    simp [show (5038848 * k + 4756828) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2378414) = 1259712 * k + 1189207 := by
    unfold C
    simp [show (2519424 * k + 2378414) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1189207) = 3779136 * k + 3567622 := by
    unfold C
    simp [show (1259712 * k + 1189207) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3567622) = 1889568 * k + 1783811 := by
    unfold C
    simp [show (3779136 * k + 3567622) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1783811) = 5668704 * k + 5351434 := by
    unfold C
    simp [show (1889568 * k + 1783811) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5351434) = 2834352 * k + 2675717 := by
    unfold C
    simp [show (5668704 * k + 5351434) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2675717) = 8503056 * k + 8027152 := by
    unfold C
    simp [show (2834352 * k + 2675717) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8027152) = 4251528 * k + 4013576 := by
    unfold C
    simp [show (8503056 * k + 8027152) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4013576) = 2125764 * k + 2006788 := by
    unfold C
    simp [show (4251528 * k + 4013576) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2006788) = 1062882 * k + 1003394 := by
    unfold C
    simp [show (2125764 * k + 2006788) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1003394) = 531441 * k + 501697 := by
    unfold C
    simp [show (1062882 * k + 1003394) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 989887) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 989887)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_990623 : ∀ k : Nat,
    iterate (1048576 * k + 990623) 32 = 531441 * k + 502070 ∧
      531441 * k + 502070 < 1048576 * k + 990623 := by
  intro k
  have h1 : C (1048576 * k + 990623) = 3145728 * k + 2971870 := by
    unfold C
    simp [show (1048576 * k + 990623) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2971870) = 1572864 * k + 1485935 := by
    unfold C
    simp [show (3145728 * k + 2971870) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1485935) = 4718592 * k + 4457806 := by
    unfold C
    simp [show (1572864 * k + 1485935) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4457806) = 2359296 * k + 2228903 := by
    unfold C
    simp [show (4718592 * k + 4457806) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2228903) = 7077888 * k + 6686710 := by
    unfold C
    simp [show (2359296 * k + 2228903) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6686710) = 3538944 * k + 3343355 := by
    unfold C
    simp [show (7077888 * k + 6686710) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3343355) = 10616832 * k + 10030066 := by
    unfold C
    simp [show (3538944 * k + 3343355) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10030066) = 5308416 * k + 5015033 := by
    unfold C
    simp [show (10616832 * k + 10030066) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5015033) = 15925248 * k + 15045100 := by
    unfold C
    simp [show (5308416 * k + 5015033) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15045100) = 7962624 * k + 7522550 := by
    unfold C
    simp [show (15925248 * k + 15045100) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7522550) = 3981312 * k + 3761275 := by
    unfold C
    simp [show (7962624 * k + 7522550) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3761275) = 11943936 * k + 11283826 := by
    unfold C
    simp [show (3981312 * k + 3761275) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11283826) = 5971968 * k + 5641913 := by
    unfold C
    simp [show (11943936 * k + 11283826) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5641913) = 17915904 * k + 16925740 := by
    unfold C
    simp [show (5971968 * k + 5641913) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16925740) = 8957952 * k + 8462870 := by
    unfold C
    simp [show (17915904 * k + 16925740) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8462870) = 4478976 * k + 4231435 := by
    unfold C
    simp [show (8957952 * k + 8462870) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4231435) = 13436928 * k + 12694306 := by
    unfold C
    simp [show (4478976 * k + 4231435) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12694306) = 6718464 * k + 6347153 := by
    unfold C
    simp [show (13436928 * k + 12694306) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6347153) = 20155392 * k + 19041460 := by
    unfold C
    simp [show (6718464 * k + 6347153) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19041460) = 10077696 * k + 9520730 := by
    unfold C
    simp [show (20155392 * k + 19041460) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9520730) = 5038848 * k + 4760365 := by
    unfold C
    simp [show (10077696 * k + 9520730) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4760365) = 15116544 * k + 14281096 := by
    unfold C
    simp [show (5038848 * k + 4760365) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14281096) = 7558272 * k + 7140548 := by
    unfold C
    simp [show (15116544 * k + 14281096) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7140548) = 3779136 * k + 3570274 := by
    unfold C
    simp [show (7558272 * k + 7140548) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3570274) = 1889568 * k + 1785137 := by
    unfold C
    simp [show (3779136 * k + 3570274) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1785137) = 5668704 * k + 5355412 := by
    unfold C
    simp [show (1889568 * k + 1785137) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5355412) = 2834352 * k + 2677706 := by
    unfold C
    simp [show (5668704 * k + 5355412) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2677706) = 1417176 * k + 1338853 := by
    unfold C
    simp [show (2834352 * k + 2677706) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1338853) = 4251528 * k + 4016560 := by
    unfold C
    simp [show (1417176 * k + 1338853) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4016560) = 2125764 * k + 2008280 := by
    unfold C
    simp [show (4251528 * k + 4016560) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2008280) = 1062882 * k + 1004140 := by
    unfold C
    simp [show (2125764 * k + 2008280) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1004140) = 531441 * k + 502070 := by
    unfold C
    simp [show (1062882 * k + 1004140) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 990623) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 990623)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_990747 : ∀ k : Nat,
    iterate (1048576 * k + 990747) 32 = 531441 * k + 502133 ∧
      531441 * k + 502133 < 1048576 * k + 990747 := by
  intro k
  have h1 : C (1048576 * k + 990747) = 3145728 * k + 2972242 := by
    unfold C
    simp [show (1048576 * k + 990747) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2972242) = 1572864 * k + 1486121 := by
    unfold C
    simp [show (3145728 * k + 2972242) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1486121) = 4718592 * k + 4458364 := by
    unfold C
    simp [show (1572864 * k + 1486121) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4458364) = 2359296 * k + 2229182 := by
    unfold C
    simp [show (4718592 * k + 4458364) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2229182) = 1179648 * k + 1114591 := by
    unfold C
    simp [show (2359296 * k + 2229182) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1114591) = 3538944 * k + 3343774 := by
    unfold C
    simp [show (1179648 * k + 1114591) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3343774) = 1769472 * k + 1671887 := by
    unfold C
    simp [show (3538944 * k + 3343774) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1671887) = 5308416 * k + 5015662 := by
    unfold C
    simp [show (1769472 * k + 1671887) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5015662) = 2654208 * k + 2507831 := by
    unfold C
    simp [show (5308416 * k + 5015662) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2507831) = 7962624 * k + 7523494 := by
    unfold C
    simp [show (2654208 * k + 2507831) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7523494) = 3981312 * k + 3761747 := by
    unfold C
    simp [show (7962624 * k + 7523494) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3761747) = 11943936 * k + 11285242 := by
    unfold C
    simp [show (3981312 * k + 3761747) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11285242) = 5971968 * k + 5642621 := by
    unfold C
    simp [show (11943936 * k + 11285242) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5642621) = 17915904 * k + 16927864 := by
    unfold C
    simp [show (5971968 * k + 5642621) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16927864) = 8957952 * k + 8463932 := by
    unfold C
    simp [show (17915904 * k + 16927864) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8463932) = 4478976 * k + 4231966 := by
    unfold C
    simp [show (8957952 * k + 8463932) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4231966) = 2239488 * k + 2115983 := by
    unfold C
    simp [show (4478976 * k + 4231966) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2115983) = 6718464 * k + 6347950 := by
    unfold C
    simp [show (2239488 * k + 2115983) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6347950) = 3359232 * k + 3173975 := by
    unfold C
    simp [show (6718464 * k + 6347950) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3173975) = 10077696 * k + 9521926 := by
    unfold C
    simp [show (3359232 * k + 3173975) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9521926) = 5038848 * k + 4760963 := by
    unfold C
    simp [show (10077696 * k + 9521926) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4760963) = 15116544 * k + 14282890 := by
    unfold C
    simp [show (5038848 * k + 4760963) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14282890) = 7558272 * k + 7141445 := by
    unfold C
    simp [show (15116544 * k + 14282890) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7141445) = 22674816 * k + 21424336 := by
    unfold C
    simp [show (7558272 * k + 7141445) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21424336) = 11337408 * k + 10712168 := by
    unfold C
    simp [show (22674816 * k + 21424336) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10712168) = 5668704 * k + 5356084 := by
    unfold C
    simp [show (11337408 * k + 10712168) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5356084) = 2834352 * k + 2678042 := by
    unfold C
    simp [show (5668704 * k + 5356084) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2678042) = 1417176 * k + 1339021 := by
    unfold C
    simp [show (2834352 * k + 2678042) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1339021) = 4251528 * k + 4017064 := by
    unfold C
    simp [show (1417176 * k + 1339021) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4017064) = 2125764 * k + 2008532 := by
    unfold C
    simp [show (4251528 * k + 4017064) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2008532) = 1062882 * k + 1004266 := by
    unfold C
    simp [show (2125764 * k + 2008532) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1004266) = 531441 * k + 502133 := by
    unfold C
    simp [show (1062882 * k + 1004266) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 990747) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 990747)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_991391 : ∀ k : Nat,
    iterate (1048576 * k + 991391) 32 = 531441 * k + 502459 ∧
      531441 * k + 502459 < 1048576 * k + 991391 := by
  intro k
  have h1 : C (1048576 * k + 991391) = 3145728 * k + 2974174 := by
    unfold C
    simp [show (1048576 * k + 991391) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2974174) = 1572864 * k + 1487087 := by
    unfold C
    simp [show (3145728 * k + 2974174) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1487087) = 4718592 * k + 4461262 := by
    unfold C
    simp [show (1572864 * k + 1487087) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4461262) = 2359296 * k + 2230631 := by
    unfold C
    simp [show (4718592 * k + 4461262) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2230631) = 7077888 * k + 6691894 := by
    unfold C
    simp [show (2359296 * k + 2230631) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6691894) = 3538944 * k + 3345947 := by
    unfold C
    simp [show (7077888 * k + 6691894) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3345947) = 10616832 * k + 10037842 := by
    unfold C
    simp [show (3538944 * k + 3345947) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10037842) = 5308416 * k + 5018921 := by
    unfold C
    simp [show (10616832 * k + 10037842) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5018921) = 15925248 * k + 15056764 := by
    unfold C
    simp [show (5308416 * k + 5018921) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15056764) = 7962624 * k + 7528382 := by
    unfold C
    simp [show (15925248 * k + 15056764) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7528382) = 3981312 * k + 3764191 := by
    unfold C
    simp [show (7962624 * k + 7528382) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3764191) = 11943936 * k + 11292574 := by
    unfold C
    simp [show (3981312 * k + 3764191) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11292574) = 5971968 * k + 5646287 := by
    unfold C
    simp [show (11943936 * k + 11292574) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5646287) = 17915904 * k + 16938862 := by
    unfold C
    simp [show (5971968 * k + 5646287) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16938862) = 8957952 * k + 8469431 := by
    unfold C
    simp [show (17915904 * k + 16938862) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8469431) = 26873856 * k + 25408294 := by
    unfold C
    simp [show (8957952 * k + 8469431) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25408294) = 13436928 * k + 12704147 := by
    unfold C
    simp [show (26873856 * k + 25408294) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12704147) = 40310784 * k + 38112442 := by
    unfold C
    simp [show (13436928 * k + 12704147) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38112442) = 20155392 * k + 19056221 := by
    unfold C
    simp [show (40310784 * k + 38112442) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19056221) = 60466176 * k + 57168664 := by
    unfold C
    simp [show (20155392 * k + 19056221) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 57168664) = 30233088 * k + 28584332 := by
    unfold C
    simp [show (60466176 * k + 57168664) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28584332) = 15116544 * k + 14292166 := by
    unfold C
    simp [show (30233088 * k + 28584332) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14292166) = 7558272 * k + 7146083 := by
    unfold C
    simp [show (15116544 * k + 14292166) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7146083) = 22674816 * k + 21438250 := by
    unfold C
    simp [show (7558272 * k + 7146083) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21438250) = 11337408 * k + 10719125 := by
    unfold C
    simp [show (22674816 * k + 21438250) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10719125) = 34012224 * k + 32157376 := by
    unfold C
    simp [show (11337408 * k + 10719125) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 32157376) = 17006112 * k + 16078688 := by
    unfold C
    simp [show (34012224 * k + 32157376) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16078688) = 8503056 * k + 8039344 := by
    unfold C
    simp [show (17006112 * k + 16078688) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8039344) = 4251528 * k + 4019672 := by
    unfold C
    simp [show (8503056 * k + 8039344) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4019672) = 2125764 * k + 2009836 := by
    unfold C
    simp [show (4251528 * k + 4019672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2009836) = 1062882 * k + 1004918 := by
    unfold C
    simp [show (2125764 * k + 2009836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1004918) = 531441 * k + 502459 := by
    unfold C
    simp [show (1062882 * k + 1004918) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 991391) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 991391)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_991647 : ∀ k : Nat,
    iterate (1048576 * k + 991647) 32 = 531441 * k + 502589 ∧
      531441 * k + 502589 < 1048576 * k + 991647 := by
  intro k
  have h1 : C (1048576 * k + 991647) = 3145728 * k + 2974942 := by
    unfold C
    simp [show (1048576 * k + 991647) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2974942) = 1572864 * k + 1487471 := by
    unfold C
    simp [show (3145728 * k + 2974942) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1487471) = 4718592 * k + 4462414 := by
    unfold C
    simp [show (1572864 * k + 1487471) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4462414) = 2359296 * k + 2231207 := by
    unfold C
    simp [show (4718592 * k + 4462414) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2231207) = 7077888 * k + 6693622 := by
    unfold C
    simp [show (2359296 * k + 2231207) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6693622) = 3538944 * k + 3346811 := by
    unfold C
    simp [show (7077888 * k + 6693622) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3346811) = 10616832 * k + 10040434 := by
    unfold C
    simp [show (3538944 * k + 3346811) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10040434) = 5308416 * k + 5020217 := by
    unfold C
    simp [show (10616832 * k + 10040434) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5020217) = 15925248 * k + 15060652 := by
    unfold C
    simp [show (5308416 * k + 5020217) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15060652) = 7962624 * k + 7530326 := by
    unfold C
    simp [show (15925248 * k + 15060652) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7530326) = 3981312 * k + 3765163 := by
    unfold C
    simp [show (7962624 * k + 7530326) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3765163) = 11943936 * k + 11295490 := by
    unfold C
    simp [show (3981312 * k + 3765163) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11295490) = 5971968 * k + 5647745 := by
    unfold C
    simp [show (11943936 * k + 11295490) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5647745) = 17915904 * k + 16943236 := by
    unfold C
    simp [show (5971968 * k + 5647745) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16943236) = 8957952 * k + 8471618 := by
    unfold C
    simp [show (17915904 * k + 16943236) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8471618) = 4478976 * k + 4235809 := by
    unfold C
    simp [show (8957952 * k + 8471618) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4235809) = 13436928 * k + 12707428 := by
    unfold C
    simp [show (4478976 * k + 4235809) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12707428) = 6718464 * k + 6353714 := by
    unfold C
    simp [show (13436928 * k + 12707428) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6353714) = 3359232 * k + 3176857 := by
    unfold C
    simp [show (6718464 * k + 6353714) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3176857) = 10077696 * k + 9530572 := by
    unfold C
    simp [show (3359232 * k + 3176857) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9530572) = 5038848 * k + 4765286 := by
    unfold C
    simp [show (10077696 * k + 9530572) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4765286) = 2519424 * k + 2382643 := by
    unfold C
    simp [show (5038848 * k + 4765286) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2382643) = 7558272 * k + 7147930 := by
    unfold C
    simp [show (2519424 * k + 2382643) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7147930) = 3779136 * k + 3573965 := by
    unfold C
    simp [show (7558272 * k + 7147930) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3573965) = 11337408 * k + 10721896 := by
    unfold C
    simp [show (3779136 * k + 3573965) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10721896) = 5668704 * k + 5360948 := by
    unfold C
    simp [show (11337408 * k + 10721896) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5360948) = 2834352 * k + 2680474 := by
    unfold C
    simp [show (5668704 * k + 5360948) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2680474) = 1417176 * k + 1340237 := by
    unfold C
    simp [show (2834352 * k + 2680474) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1340237) = 4251528 * k + 4020712 := by
    unfold C
    simp [show (1417176 * k + 1340237) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4020712) = 2125764 * k + 2010356 := by
    unfold C
    simp [show (4251528 * k + 4020712) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2010356) = 1062882 * k + 1005178 := by
    unfold C
    simp [show (2125764 * k + 2010356) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1005178) = 531441 * k + 502589 := by
    unfold C
    simp [show (1062882 * k + 1005178) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 991647) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 991647)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_992327 : ∀ k : Nat,
    iterate (1048576 * k + 992327) 32 = 531441 * k + 502934 ∧
      531441 * k + 502934 < 1048576 * k + 992327 := by
  intro k
  have h1 : C (1048576 * k + 992327) = 3145728 * k + 2976982 := by
    unfold C
    simp [show (1048576 * k + 992327) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2976982) = 1572864 * k + 1488491 := by
    unfold C
    simp [show (3145728 * k + 2976982) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1488491) = 4718592 * k + 4465474 := by
    unfold C
    simp [show (1572864 * k + 1488491) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4465474) = 2359296 * k + 2232737 := by
    unfold C
    simp [show (4718592 * k + 4465474) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2232737) = 7077888 * k + 6698212 := by
    unfold C
    simp [show (2359296 * k + 2232737) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6698212) = 3538944 * k + 3349106 := by
    unfold C
    simp [show (7077888 * k + 6698212) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3349106) = 1769472 * k + 1674553 := by
    unfold C
    simp [show (3538944 * k + 3349106) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1674553) = 5308416 * k + 5023660 := by
    unfold C
    simp [show (1769472 * k + 1674553) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5023660) = 2654208 * k + 2511830 := by
    unfold C
    simp [show (5308416 * k + 5023660) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2511830) = 1327104 * k + 1255915 := by
    unfold C
    simp [show (2654208 * k + 2511830) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1255915) = 3981312 * k + 3767746 := by
    unfold C
    simp [show (1327104 * k + 1255915) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3767746) = 1990656 * k + 1883873 := by
    unfold C
    simp [show (3981312 * k + 3767746) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1883873) = 5971968 * k + 5651620 := by
    unfold C
    simp [show (1990656 * k + 1883873) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5651620) = 2985984 * k + 2825810 := by
    unfold C
    simp [show (5971968 * k + 5651620) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2825810) = 1492992 * k + 1412905 := by
    unfold C
    simp [show (2985984 * k + 2825810) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1412905) = 4478976 * k + 4238716 := by
    unfold C
    simp [show (1492992 * k + 1412905) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4238716) = 2239488 * k + 2119358 := by
    unfold C
    simp [show (4478976 * k + 4238716) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2119358) = 1119744 * k + 1059679 := by
    unfold C
    simp [show (2239488 * k + 2119358) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1059679) = 3359232 * k + 3179038 := by
    unfold C
    simp [show (1119744 * k + 1059679) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3179038) = 1679616 * k + 1589519 := by
    unfold C
    simp [show (3359232 * k + 3179038) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1589519) = 5038848 * k + 4768558 := by
    unfold C
    simp [show (1679616 * k + 1589519) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4768558) = 2519424 * k + 2384279 := by
    unfold C
    simp [show (5038848 * k + 4768558) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2384279) = 7558272 * k + 7152838 := by
    unfold C
    simp [show (2519424 * k + 2384279) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7152838) = 3779136 * k + 3576419 := by
    unfold C
    simp [show (7558272 * k + 7152838) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3576419) = 11337408 * k + 10729258 := by
    unfold C
    simp [show (3779136 * k + 3576419) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10729258) = 5668704 * k + 5364629 := by
    unfold C
    simp [show (11337408 * k + 10729258) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5364629) = 17006112 * k + 16093888 := by
    unfold C
    simp [show (5668704 * k + 5364629) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16093888) = 8503056 * k + 8046944 := by
    unfold C
    simp [show (17006112 * k + 16093888) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8046944) = 4251528 * k + 4023472 := by
    unfold C
    simp [show (8503056 * k + 8046944) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4023472) = 2125764 * k + 2011736 := by
    unfold C
    simp [show (4251528 * k + 4023472) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2011736) = 1062882 * k + 1005868 := by
    unfold C
    simp [show (2125764 * k + 2011736) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1005868) = 531441 * k + 502934 := by
    unfold C
    simp [show (1062882 * k + 1005868) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 992327) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 992327)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_992487 : ∀ k : Nat,
    iterate (1048576 * k + 992487) 32 = 531441 * k + 503015 ∧
      531441 * k + 503015 < 1048576 * k + 992487 := by
  intro k
  have h1 : C (1048576 * k + 992487) = 3145728 * k + 2977462 := by
    unfold C
    simp [show (1048576 * k + 992487) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2977462) = 1572864 * k + 1488731 := by
    unfold C
    simp [show (3145728 * k + 2977462) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1488731) = 4718592 * k + 4466194 := by
    unfold C
    simp [show (1572864 * k + 1488731) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4466194) = 2359296 * k + 2233097 := by
    unfold C
    simp [show (4718592 * k + 4466194) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2233097) = 7077888 * k + 6699292 := by
    unfold C
    simp [show (2359296 * k + 2233097) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6699292) = 3538944 * k + 3349646 := by
    unfold C
    simp [show (7077888 * k + 6699292) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3349646) = 1769472 * k + 1674823 := by
    unfold C
    simp [show (3538944 * k + 3349646) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1674823) = 5308416 * k + 5024470 := by
    unfold C
    simp [show (1769472 * k + 1674823) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5024470) = 2654208 * k + 2512235 := by
    unfold C
    simp [show (5308416 * k + 5024470) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2512235) = 7962624 * k + 7536706 := by
    unfold C
    simp [show (2654208 * k + 2512235) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7536706) = 3981312 * k + 3768353 := by
    unfold C
    simp [show (7962624 * k + 7536706) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3768353) = 11943936 * k + 11305060 := by
    unfold C
    simp [show (3981312 * k + 3768353) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11305060) = 5971968 * k + 5652530 := by
    unfold C
    simp [show (11943936 * k + 11305060) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5652530) = 2985984 * k + 2826265 := by
    unfold C
    simp [show (5971968 * k + 5652530) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2826265) = 8957952 * k + 8478796 := by
    unfold C
    simp [show (2985984 * k + 2826265) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8478796) = 4478976 * k + 4239398 := by
    unfold C
    simp [show (8957952 * k + 8478796) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4239398) = 2239488 * k + 2119699 := by
    unfold C
    simp [show (4478976 * k + 4239398) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2119699) = 6718464 * k + 6359098 := by
    unfold C
    simp [show (2239488 * k + 2119699) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6359098) = 3359232 * k + 3179549 := by
    unfold C
    simp [show (6718464 * k + 6359098) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3179549) = 10077696 * k + 9538648 := by
    unfold C
    simp [show (3359232 * k + 3179549) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9538648) = 5038848 * k + 4769324 := by
    unfold C
    simp [show (10077696 * k + 9538648) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4769324) = 2519424 * k + 2384662 := by
    unfold C
    simp [show (5038848 * k + 4769324) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2384662) = 1259712 * k + 1192331 := by
    unfold C
    simp [show (2519424 * k + 2384662) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1192331) = 3779136 * k + 3576994 := by
    unfold C
    simp [show (1259712 * k + 1192331) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3576994) = 1889568 * k + 1788497 := by
    unfold C
    simp [show (3779136 * k + 3576994) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1788497) = 5668704 * k + 5365492 := by
    unfold C
    simp [show (1889568 * k + 1788497) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5365492) = 2834352 * k + 2682746 := by
    unfold C
    simp [show (5668704 * k + 5365492) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2682746) = 1417176 * k + 1341373 := by
    unfold C
    simp [show (2834352 * k + 2682746) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1341373) = 4251528 * k + 4024120 := by
    unfold C
    simp [show (1417176 * k + 1341373) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4024120) = 2125764 * k + 2012060 := by
    unfold C
    simp [show (4251528 * k + 4024120) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2012060) = 1062882 * k + 1006030 := by
    unfold C
    simp [show (2125764 * k + 2012060) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1006030) = 531441 * k + 503015 := by
    unfold C
    simp [show (1062882 * k + 1006030) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 992487) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 992487)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_992539 : ∀ k : Nat,
    iterate (1048576 * k + 992539) 32 = 531441 * k + 503041 ∧
      531441 * k + 503041 < 1048576 * k + 992539 := by
  intro k
  have h1 : C (1048576 * k + 992539) = 3145728 * k + 2977618 := by
    unfold C
    simp [show (1048576 * k + 992539) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2977618) = 1572864 * k + 1488809 := by
    unfold C
    simp [show (3145728 * k + 2977618) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1488809) = 4718592 * k + 4466428 := by
    unfold C
    simp [show (1572864 * k + 1488809) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4466428) = 2359296 * k + 2233214 := by
    unfold C
    simp [show (4718592 * k + 4466428) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2233214) = 1179648 * k + 1116607 := by
    unfold C
    simp [show (2359296 * k + 2233214) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1116607) = 3538944 * k + 3349822 := by
    unfold C
    simp [show (1179648 * k + 1116607) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3349822) = 1769472 * k + 1674911 := by
    unfold C
    simp [show (3538944 * k + 3349822) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1674911) = 5308416 * k + 5024734 := by
    unfold C
    simp [show (1769472 * k + 1674911) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5024734) = 2654208 * k + 2512367 := by
    unfold C
    simp [show (5308416 * k + 5024734) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2512367) = 7962624 * k + 7537102 := by
    unfold C
    simp [show (2654208 * k + 2512367) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7537102) = 3981312 * k + 3768551 := by
    unfold C
    simp [show (7962624 * k + 7537102) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3768551) = 11943936 * k + 11305654 := by
    unfold C
    simp [show (3981312 * k + 3768551) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11305654) = 5971968 * k + 5652827 := by
    unfold C
    simp [show (11943936 * k + 11305654) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5652827) = 17915904 * k + 16958482 := by
    unfold C
    simp [show (5971968 * k + 5652827) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16958482) = 8957952 * k + 8479241 := by
    unfold C
    simp [show (17915904 * k + 16958482) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8479241) = 26873856 * k + 25437724 := by
    unfold C
    simp [show (8957952 * k + 8479241) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25437724) = 13436928 * k + 12718862 := by
    unfold C
    simp [show (26873856 * k + 25437724) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12718862) = 6718464 * k + 6359431 := by
    unfold C
    simp [show (13436928 * k + 12718862) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6359431) = 20155392 * k + 19078294 := by
    unfold C
    simp [show (6718464 * k + 6359431) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19078294) = 10077696 * k + 9539147 := by
    unfold C
    simp [show (20155392 * k + 19078294) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9539147) = 30233088 * k + 28617442 := by
    unfold C
    simp [show (10077696 * k + 9539147) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28617442) = 15116544 * k + 14308721 := by
    unfold C
    simp [show (30233088 * k + 28617442) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14308721) = 45349632 * k + 42926164 := by
    unfold C
    simp [show (15116544 * k + 14308721) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 42926164) = 22674816 * k + 21463082 := by
    unfold C
    simp [show (45349632 * k + 42926164) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21463082) = 11337408 * k + 10731541 := by
    unfold C
    simp [show (22674816 * k + 21463082) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10731541) = 34012224 * k + 32194624 := by
    unfold C
    simp [show (11337408 * k + 10731541) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 32194624) = 17006112 * k + 16097312 := by
    unfold C
    simp [show (34012224 * k + 32194624) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16097312) = 8503056 * k + 8048656 := by
    unfold C
    simp [show (17006112 * k + 16097312) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8048656) = 4251528 * k + 4024328 := by
    unfold C
    simp [show (8503056 * k + 8048656) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4024328) = 2125764 * k + 2012164 := by
    unfold C
    simp [show (4251528 * k + 4024328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2012164) = 1062882 * k + 1006082 := by
    unfold C
    simp [show (2125764 * k + 2012164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1006082) = 531441 * k + 503041 := by
    unfold C
    simp [show (1062882 * k + 1006082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 992539) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 992539)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_992923 : ∀ k : Nat,
    iterate (1048576 * k + 992923) 32 = 531441 * k + 503236 ∧
      531441 * k + 503236 < 1048576 * k + 992923 := by
  intro k
  have h1 : C (1048576 * k + 992923) = 3145728 * k + 2978770 := by
    unfold C
    simp [show (1048576 * k + 992923) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2978770) = 1572864 * k + 1489385 := by
    unfold C
    simp [show (3145728 * k + 2978770) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1489385) = 4718592 * k + 4468156 := by
    unfold C
    simp [show (1572864 * k + 1489385) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4468156) = 2359296 * k + 2234078 := by
    unfold C
    simp [show (4718592 * k + 4468156) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2234078) = 1179648 * k + 1117039 := by
    unfold C
    simp [show (2359296 * k + 2234078) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1117039) = 3538944 * k + 3351118 := by
    unfold C
    simp [show (1179648 * k + 1117039) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3351118) = 1769472 * k + 1675559 := by
    unfold C
    simp [show (3538944 * k + 3351118) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1675559) = 5308416 * k + 5026678 := by
    unfold C
    simp [show (1769472 * k + 1675559) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5026678) = 2654208 * k + 2513339 := by
    unfold C
    simp [show (5308416 * k + 5026678) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2513339) = 7962624 * k + 7540018 := by
    unfold C
    simp [show (2654208 * k + 2513339) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7540018) = 3981312 * k + 3770009 := by
    unfold C
    simp [show (7962624 * k + 7540018) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3770009) = 11943936 * k + 11310028 := by
    unfold C
    simp [show (3981312 * k + 3770009) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11310028) = 5971968 * k + 5655014 := by
    unfold C
    simp [show (11943936 * k + 11310028) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5655014) = 2985984 * k + 2827507 := by
    unfold C
    simp [show (5971968 * k + 5655014) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2827507) = 8957952 * k + 8482522 := by
    unfold C
    simp [show (2985984 * k + 2827507) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8482522) = 4478976 * k + 4241261 := by
    unfold C
    simp [show (8957952 * k + 8482522) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4241261) = 13436928 * k + 12723784 := by
    unfold C
    simp [show (4478976 * k + 4241261) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12723784) = 6718464 * k + 6361892 := by
    unfold C
    simp [show (13436928 * k + 12723784) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6361892) = 3359232 * k + 3180946 := by
    unfold C
    simp [show (6718464 * k + 6361892) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3180946) = 1679616 * k + 1590473 := by
    unfold C
    simp [show (3359232 * k + 3180946) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1590473) = 5038848 * k + 4771420 := by
    unfold C
    simp [show (1679616 * k + 1590473) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4771420) = 2519424 * k + 2385710 := by
    unfold C
    simp [show (5038848 * k + 4771420) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2385710) = 1259712 * k + 1192855 := by
    unfold C
    simp [show (2519424 * k + 2385710) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1192855) = 3779136 * k + 3578566 := by
    unfold C
    simp [show (1259712 * k + 1192855) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3578566) = 1889568 * k + 1789283 := by
    unfold C
    simp [show (3779136 * k + 3578566) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1789283) = 5668704 * k + 5367850 := by
    unfold C
    simp [show (1889568 * k + 1789283) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5367850) = 2834352 * k + 2683925 := by
    unfold C
    simp [show (5668704 * k + 5367850) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2683925) = 8503056 * k + 8051776 := by
    unfold C
    simp [show (2834352 * k + 2683925) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8051776) = 4251528 * k + 4025888 := by
    unfold C
    simp [show (8503056 * k + 8051776) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4025888) = 2125764 * k + 2012944 := by
    unfold C
    simp [show (4251528 * k + 4025888) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2012944) = 1062882 * k + 1006472 := by
    unfold C
    simp [show (2125764 * k + 2012944) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1006472) = 531441 * k + 503236 := by
    unfold C
    simp [show (1062882 * k + 1006472) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 992923) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 992923)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_993351 : ∀ k : Nat,
    iterate (1048576 * k + 993351) 32 = 531441 * k + 503453 ∧
      531441 * k + 503453 < 1048576 * k + 993351 := by
  intro k
  have h1 : C (1048576 * k + 993351) = 3145728 * k + 2980054 := by
    unfold C
    simp [show (1048576 * k + 993351) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2980054) = 1572864 * k + 1490027 := by
    unfold C
    simp [show (3145728 * k + 2980054) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1490027) = 4718592 * k + 4470082 := by
    unfold C
    simp [show (1572864 * k + 1490027) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4470082) = 2359296 * k + 2235041 := by
    unfold C
    simp [show (4718592 * k + 4470082) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2235041) = 7077888 * k + 6705124 := by
    unfold C
    simp [show (2359296 * k + 2235041) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6705124) = 3538944 * k + 3352562 := by
    unfold C
    simp [show (7077888 * k + 6705124) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3352562) = 1769472 * k + 1676281 := by
    unfold C
    simp [show (3538944 * k + 3352562) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1676281) = 5308416 * k + 5028844 := by
    unfold C
    simp [show (1769472 * k + 1676281) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5028844) = 2654208 * k + 2514422 := by
    unfold C
    simp [show (5308416 * k + 5028844) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2514422) = 1327104 * k + 1257211 := by
    unfold C
    simp [show (2654208 * k + 2514422) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1257211) = 3981312 * k + 3771634 := by
    unfold C
    simp [show (1327104 * k + 1257211) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3771634) = 1990656 * k + 1885817 := by
    unfold C
    simp [show (3981312 * k + 3771634) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1885817) = 5971968 * k + 5657452 := by
    unfold C
    simp [show (1990656 * k + 1885817) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5657452) = 2985984 * k + 2828726 := by
    unfold C
    simp [show (5971968 * k + 5657452) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2828726) = 1492992 * k + 1414363 := by
    unfold C
    simp [show (2985984 * k + 2828726) % 2 = 0 by omega]
    omega
  have h16 : C (1492992 * k + 1414363) = 4478976 * k + 4243090 := by
    unfold C
    simp [show (1492992 * k + 1414363) % 2 ≠ 0 by omega]
    omega
  have h17 : C (4478976 * k + 4243090) = 2239488 * k + 2121545 := by
    unfold C
    simp [show (4478976 * k + 4243090) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2121545) = 6718464 * k + 6364636 := by
    unfold C
    simp [show (2239488 * k + 2121545) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6364636) = 3359232 * k + 3182318 := by
    unfold C
    simp [show (6718464 * k + 6364636) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3182318) = 1679616 * k + 1591159 := by
    unfold C
    simp [show (3359232 * k + 3182318) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1591159) = 5038848 * k + 4773478 := by
    unfold C
    simp [show (1679616 * k + 1591159) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4773478) = 2519424 * k + 2386739 := by
    unfold C
    simp [show (5038848 * k + 4773478) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2386739) = 7558272 * k + 7160218 := by
    unfold C
    simp [show (2519424 * k + 2386739) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7160218) = 3779136 * k + 3580109 := by
    unfold C
    simp [show (7558272 * k + 7160218) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3580109) = 11337408 * k + 10740328 := by
    unfold C
    simp [show (3779136 * k + 3580109) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10740328) = 5668704 * k + 5370164 := by
    unfold C
    simp [show (11337408 * k + 10740328) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5370164) = 2834352 * k + 2685082 := by
    unfold C
    simp [show (5668704 * k + 5370164) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2685082) = 1417176 * k + 1342541 := by
    unfold C
    simp [show (2834352 * k + 2685082) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1342541) = 4251528 * k + 4027624 := by
    unfold C
    simp [show (1417176 * k + 1342541) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4027624) = 2125764 * k + 2013812 := by
    unfold C
    simp [show (4251528 * k + 4027624) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2013812) = 1062882 * k + 1006906 := by
    unfold C
    simp [show (2125764 * k + 2013812) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1006906) = 531441 * k + 503453 := by
    unfold C
    simp [show (1062882 * k + 1006906) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 993351) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 993351)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_993439 : ∀ k : Nat,
    iterate (1048576 * k + 993439) 32 = 531441 * k + 503497 ∧
      531441 * k + 503497 < 1048576 * k + 993439 := by
  intro k
  have h1 : C (1048576 * k + 993439) = 3145728 * k + 2980318 := by
    unfold C
    simp [show (1048576 * k + 993439) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2980318) = 1572864 * k + 1490159 := by
    unfold C
    simp [show (3145728 * k + 2980318) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1490159) = 4718592 * k + 4470478 := by
    unfold C
    simp [show (1572864 * k + 1490159) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4470478) = 2359296 * k + 2235239 := by
    unfold C
    simp [show (4718592 * k + 4470478) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2235239) = 7077888 * k + 6705718 := by
    unfold C
    simp [show (2359296 * k + 2235239) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6705718) = 3538944 * k + 3352859 := by
    unfold C
    simp [show (7077888 * k + 6705718) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3352859) = 10616832 * k + 10058578 := by
    unfold C
    simp [show (3538944 * k + 3352859) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10058578) = 5308416 * k + 5029289 := by
    unfold C
    simp [show (10616832 * k + 10058578) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5029289) = 15925248 * k + 15087868 := by
    unfold C
    simp [show (5308416 * k + 5029289) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15087868) = 7962624 * k + 7543934 := by
    unfold C
    simp [show (15925248 * k + 15087868) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7543934) = 3981312 * k + 3771967 := by
    unfold C
    simp [show (7962624 * k + 7543934) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3771967) = 11943936 * k + 11315902 := by
    unfold C
    simp [show (3981312 * k + 3771967) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11315902) = 5971968 * k + 5657951 := by
    unfold C
    simp [show (11943936 * k + 11315902) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5657951) = 17915904 * k + 16973854 := by
    unfold C
    simp [show (5971968 * k + 5657951) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16973854) = 8957952 * k + 8486927 := by
    unfold C
    simp [show (17915904 * k + 16973854) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8486927) = 26873856 * k + 25460782 := by
    unfold C
    simp [show (8957952 * k + 8486927) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25460782) = 13436928 * k + 12730391 := by
    unfold C
    simp [show (26873856 * k + 25460782) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12730391) = 40310784 * k + 38191174 := by
    unfold C
    simp [show (13436928 * k + 12730391) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38191174) = 20155392 * k + 19095587 := by
    unfold C
    simp [show (40310784 * k + 38191174) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19095587) = 60466176 * k + 57286762 := by
    unfold C
    simp [show (20155392 * k + 19095587) % 2 ≠ 0 by omega]
    omega
  have h21 : C (60466176 * k + 57286762) = 30233088 * k + 28643381 := by
    unfold C
    simp [show (60466176 * k + 57286762) % 2 = 0 by omega]
    omega
  have h22 : C (30233088 * k + 28643381) = 90699264 * k + 85930144 := by
    unfold C
    simp [show (30233088 * k + 28643381) % 2 ≠ 0 by omega]
    omega
  have h23 : C (90699264 * k + 85930144) = 45349632 * k + 42965072 := by
    unfold C
    simp [show (90699264 * k + 85930144) % 2 = 0 by omega]
    omega
  have h24 : C (45349632 * k + 42965072) = 22674816 * k + 21482536 := by
    unfold C
    simp [show (45349632 * k + 42965072) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21482536) = 11337408 * k + 10741268 := by
    unfold C
    simp [show (22674816 * k + 21482536) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10741268) = 5668704 * k + 5370634 := by
    unfold C
    simp [show (11337408 * k + 10741268) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5370634) = 2834352 * k + 2685317 := by
    unfold C
    simp [show (5668704 * k + 5370634) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2685317) = 8503056 * k + 8055952 := by
    unfold C
    simp [show (2834352 * k + 2685317) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8055952) = 4251528 * k + 4027976 := by
    unfold C
    simp [show (8503056 * k + 8055952) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4027976) = 2125764 * k + 2013988 := by
    unfold C
    simp [show (4251528 * k + 4027976) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2013988) = 1062882 * k + 1006994 := by
    unfold C
    simp [show (2125764 * k + 2013988) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1006994) = 531441 * k + 503497 := by
    unfold C
    simp [show (1062882 * k + 1006994) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 993439) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 993439)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_993511 : ∀ k : Nat,
    iterate (1048576 * k + 993511) 32 = 531441 * k + 503534 ∧
      531441 * k + 503534 < 1048576 * k + 993511 := by
  intro k
  have h1 : C (1048576 * k + 993511) = 3145728 * k + 2980534 := by
    unfold C
    simp [show (1048576 * k + 993511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2980534) = 1572864 * k + 1490267 := by
    unfold C
    simp [show (3145728 * k + 2980534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1490267) = 4718592 * k + 4470802 := by
    unfold C
    simp [show (1572864 * k + 1490267) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4470802) = 2359296 * k + 2235401 := by
    unfold C
    simp [show (4718592 * k + 4470802) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2235401) = 7077888 * k + 6706204 := by
    unfold C
    simp [show (2359296 * k + 2235401) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6706204) = 3538944 * k + 3353102 := by
    unfold C
    simp [show (7077888 * k + 6706204) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3353102) = 1769472 * k + 1676551 := by
    unfold C
    simp [show (3538944 * k + 3353102) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1676551) = 5308416 * k + 5029654 := by
    unfold C
    simp [show (1769472 * k + 1676551) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5029654) = 2654208 * k + 2514827 := by
    unfold C
    simp [show (5308416 * k + 5029654) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2514827) = 7962624 * k + 7544482 := by
    unfold C
    simp [show (2654208 * k + 2514827) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7544482) = 3981312 * k + 3772241 := by
    unfold C
    simp [show (7962624 * k + 7544482) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3772241) = 11943936 * k + 11316724 := by
    unfold C
    simp [show (3981312 * k + 3772241) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11316724) = 5971968 * k + 5658362 := by
    unfold C
    simp [show (11943936 * k + 11316724) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5658362) = 2985984 * k + 2829181 := by
    unfold C
    simp [show (5971968 * k + 5658362) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2829181) = 8957952 * k + 8487544 := by
    unfold C
    simp [show (2985984 * k + 2829181) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8487544) = 4478976 * k + 4243772 := by
    unfold C
    simp [show (8957952 * k + 8487544) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4243772) = 2239488 * k + 2121886 := by
    unfold C
    simp [show (4478976 * k + 4243772) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2121886) = 1119744 * k + 1060943 := by
    unfold C
    simp [show (2239488 * k + 2121886) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1060943) = 3359232 * k + 3182830 := by
    unfold C
    simp [show (1119744 * k + 1060943) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3182830) = 1679616 * k + 1591415 := by
    unfold C
    simp [show (3359232 * k + 3182830) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1591415) = 5038848 * k + 4774246 := by
    unfold C
    simp [show (1679616 * k + 1591415) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4774246) = 2519424 * k + 2387123 := by
    unfold C
    simp [show (5038848 * k + 4774246) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2387123) = 7558272 * k + 7161370 := by
    unfold C
    simp [show (2519424 * k + 2387123) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7161370) = 3779136 * k + 3580685 := by
    unfold C
    simp [show (7558272 * k + 7161370) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3580685) = 11337408 * k + 10742056 := by
    unfold C
    simp [show (3779136 * k + 3580685) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10742056) = 5668704 * k + 5371028 := by
    unfold C
    simp [show (11337408 * k + 10742056) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5371028) = 2834352 * k + 2685514 := by
    unfold C
    simp [show (5668704 * k + 5371028) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2685514) = 1417176 * k + 1342757 := by
    unfold C
    simp [show (2834352 * k + 2685514) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1342757) = 4251528 * k + 4028272 := by
    unfold C
    simp [show (1417176 * k + 1342757) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4028272) = 2125764 * k + 2014136 := by
    unfold C
    simp [show (4251528 * k + 4028272) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2014136) = 1062882 * k + 1007068 := by
    unfold C
    simp [show (2125764 * k + 2014136) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1007068) = 531441 * k + 503534 := by
    unfold C
    simp [show (1062882 * k + 1007068) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 993511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 993511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_994175 : ∀ k : Nat,
    iterate (1048576 * k + 994175) 32 = 531441 * k + 503870 ∧
      531441 * k + 503870 < 1048576 * k + 994175 := by
  intro k
  have h1 : C (1048576 * k + 994175) = 3145728 * k + 2982526 := by
    unfold C
    simp [show (1048576 * k + 994175) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2982526) = 1572864 * k + 1491263 := by
    unfold C
    simp [show (3145728 * k + 2982526) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1491263) = 4718592 * k + 4473790 := by
    unfold C
    simp [show (1572864 * k + 1491263) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4473790) = 2359296 * k + 2236895 := by
    unfold C
    simp [show (4718592 * k + 4473790) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2236895) = 7077888 * k + 6710686 := by
    unfold C
    simp [show (2359296 * k + 2236895) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6710686) = 3538944 * k + 3355343 := by
    unfold C
    simp [show (7077888 * k + 6710686) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3355343) = 10616832 * k + 10066030 := by
    unfold C
    simp [show (3538944 * k + 3355343) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10066030) = 5308416 * k + 5033015 := by
    unfold C
    simp [show (10616832 * k + 10066030) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5033015) = 15925248 * k + 15099046 := by
    unfold C
    simp [show (5308416 * k + 5033015) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15099046) = 7962624 * k + 7549523 := by
    unfold C
    simp [show (15925248 * k + 15099046) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7549523) = 23887872 * k + 22648570 := by
    unfold C
    simp [show (7962624 * k + 7549523) % 2 ≠ 0 by omega]
    omega
  have h12 : C (23887872 * k + 22648570) = 11943936 * k + 11324285 := by
    unfold C
    simp [show (23887872 * k + 22648570) % 2 = 0 by omega]
    omega
  have h13 : C (11943936 * k + 11324285) = 35831808 * k + 33972856 := by
    unfold C
    simp [show (11943936 * k + 11324285) % 2 ≠ 0 by omega]
    omega
  have h14 : C (35831808 * k + 33972856) = 17915904 * k + 16986428 := by
    unfold C
    simp [show (35831808 * k + 33972856) % 2 = 0 by omega]
    omega
  have h15 : C (17915904 * k + 16986428) = 8957952 * k + 8493214 := by
    unfold C
    simp [show (17915904 * k + 16986428) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8493214) = 4478976 * k + 4246607 := by
    unfold C
    simp [show (8957952 * k + 8493214) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4246607) = 13436928 * k + 12739822 := by
    unfold C
    simp [show (4478976 * k + 4246607) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12739822) = 6718464 * k + 6369911 := by
    unfold C
    simp [show (13436928 * k + 12739822) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6369911) = 20155392 * k + 19109734 := by
    unfold C
    simp [show (6718464 * k + 6369911) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19109734) = 10077696 * k + 9554867 := by
    unfold C
    simp [show (20155392 * k + 19109734) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9554867) = 30233088 * k + 28664602 := by
    unfold C
    simp [show (10077696 * k + 9554867) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28664602) = 15116544 * k + 14332301 := by
    unfold C
    simp [show (30233088 * k + 28664602) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14332301) = 45349632 * k + 42996904 := by
    unfold C
    simp [show (15116544 * k + 14332301) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 42996904) = 22674816 * k + 21498452 := by
    unfold C
    simp [show (45349632 * k + 42996904) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21498452) = 11337408 * k + 10749226 := by
    unfold C
    simp [show (22674816 * k + 21498452) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10749226) = 5668704 * k + 5374613 := by
    unfold C
    simp [show (11337408 * k + 10749226) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5374613) = 17006112 * k + 16123840 := by
    unfold C
    simp [show (5668704 * k + 5374613) % 2 ≠ 0 by omega]
    omega
  have h28 : C (17006112 * k + 16123840) = 8503056 * k + 8061920 := by
    unfold C
    simp [show (17006112 * k + 16123840) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8061920) = 4251528 * k + 4030960 := by
    unfold C
    simp [show (8503056 * k + 8061920) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4030960) = 2125764 * k + 2015480 := by
    unfold C
    simp [show (4251528 * k + 4030960) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2015480) = 1062882 * k + 1007740 := by
    unfold C
    simp [show (2125764 * k + 2015480) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1007740) = 531441 * k + 503870 := by
    unfold C
    simp [show (1062882 * k + 1007740) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 994175) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 994175)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_994415 : ∀ k : Nat,
    iterate (1048576 * k + 994415) 32 = 531441 * k + 503992 ∧
      531441 * k + 503992 < 1048576 * k + 994415 := by
  intro k
  have h1 : C (1048576 * k + 994415) = 3145728 * k + 2983246 := by
    unfold C
    simp [show (1048576 * k + 994415) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2983246) = 1572864 * k + 1491623 := by
    unfold C
    simp [show (3145728 * k + 2983246) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1491623) = 4718592 * k + 4474870 := by
    unfold C
    simp [show (1572864 * k + 1491623) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4474870) = 2359296 * k + 2237435 := by
    unfold C
    simp [show (4718592 * k + 4474870) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2237435) = 7077888 * k + 6712306 := by
    unfold C
    simp [show (2359296 * k + 2237435) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6712306) = 3538944 * k + 3356153 := by
    unfold C
    simp [show (7077888 * k + 6712306) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3356153) = 10616832 * k + 10068460 := by
    unfold C
    simp [show (3538944 * k + 3356153) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10068460) = 5308416 * k + 5034230 := by
    unfold C
    simp [show (10616832 * k + 10068460) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5034230) = 2654208 * k + 2517115 := by
    unfold C
    simp [show (5308416 * k + 5034230) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2517115) = 7962624 * k + 7551346 := by
    unfold C
    simp [show (2654208 * k + 2517115) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7551346) = 3981312 * k + 3775673 := by
    unfold C
    simp [show (7962624 * k + 7551346) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3775673) = 11943936 * k + 11327020 := by
    unfold C
    simp [show (3981312 * k + 3775673) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11327020) = 5971968 * k + 5663510 := by
    unfold C
    simp [show (11943936 * k + 11327020) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5663510) = 2985984 * k + 2831755 := by
    unfold C
    simp [show (5971968 * k + 5663510) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2831755) = 8957952 * k + 8495266 := by
    unfold C
    simp [show (2985984 * k + 2831755) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8495266) = 4478976 * k + 4247633 := by
    unfold C
    simp [show (8957952 * k + 8495266) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4247633) = 13436928 * k + 12742900 := by
    unfold C
    simp [show (4478976 * k + 4247633) % 2 ≠ 0 by omega]
    omega
  have h18 : C (13436928 * k + 12742900) = 6718464 * k + 6371450 := by
    unfold C
    simp [show (13436928 * k + 12742900) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6371450) = 3359232 * k + 3185725 := by
    unfold C
    simp [show (6718464 * k + 6371450) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3185725) = 10077696 * k + 9557176 := by
    unfold C
    simp [show (3359232 * k + 3185725) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9557176) = 5038848 * k + 4778588 := by
    unfold C
    simp [show (10077696 * k + 9557176) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4778588) = 2519424 * k + 2389294 := by
    unfold C
    simp [show (5038848 * k + 4778588) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2389294) = 1259712 * k + 1194647 := by
    unfold C
    simp [show (2519424 * k + 2389294) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1194647) = 3779136 * k + 3583942 := by
    unfold C
    simp [show (1259712 * k + 1194647) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3583942) = 1889568 * k + 1791971 := by
    unfold C
    simp [show (3779136 * k + 3583942) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1791971) = 5668704 * k + 5375914 := by
    unfold C
    simp [show (1889568 * k + 1791971) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5375914) = 2834352 * k + 2687957 := by
    unfold C
    simp [show (5668704 * k + 5375914) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2687957) = 8503056 * k + 8063872 := by
    unfold C
    simp [show (2834352 * k + 2687957) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8063872) = 4251528 * k + 4031936 := by
    unfold C
    simp [show (8503056 * k + 8063872) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4031936) = 2125764 * k + 2015968 := by
    unfold C
    simp [show (4251528 * k + 4031936) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2015968) = 1062882 * k + 1007984 := by
    unfold C
    simp [show (2125764 * k + 2015968) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1007984) = 531441 * k + 503992 := by
    unfold C
    simp [show (1062882 * k + 1007984) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 994415) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 994415)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_994463 : ∀ k : Nat,
    iterate (1048576 * k + 994463) 32 = 531441 * k + 504016 ∧
      531441 * k + 504016 < 1048576 * k + 994463 := by
  intro k
  have h1 : C (1048576 * k + 994463) = 3145728 * k + 2983390 := by
    unfold C
    simp [show (1048576 * k + 994463) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2983390) = 1572864 * k + 1491695 := by
    unfold C
    simp [show (3145728 * k + 2983390) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1491695) = 4718592 * k + 4475086 := by
    unfold C
    simp [show (1572864 * k + 1491695) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4475086) = 2359296 * k + 2237543 := by
    unfold C
    simp [show (4718592 * k + 4475086) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2237543) = 7077888 * k + 6712630 := by
    unfold C
    simp [show (2359296 * k + 2237543) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6712630) = 3538944 * k + 3356315 := by
    unfold C
    simp [show (7077888 * k + 6712630) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3356315) = 10616832 * k + 10068946 := by
    unfold C
    simp [show (3538944 * k + 3356315) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10068946) = 5308416 * k + 5034473 := by
    unfold C
    simp [show (10616832 * k + 10068946) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5034473) = 15925248 * k + 15103420 := by
    unfold C
    simp [show (5308416 * k + 5034473) % 2 ≠ 0 by omega]
    omega
  have h10 : C (15925248 * k + 15103420) = 7962624 * k + 7551710 := by
    unfold C
    simp [show (15925248 * k + 15103420) % 2 = 0 by omega]
    omega
  have h11 : C (7962624 * k + 7551710) = 3981312 * k + 3775855 := by
    unfold C
    simp [show (7962624 * k + 7551710) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3775855) = 11943936 * k + 11327566 := by
    unfold C
    simp [show (3981312 * k + 3775855) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11327566) = 5971968 * k + 5663783 := by
    unfold C
    simp [show (11943936 * k + 11327566) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5663783) = 17915904 * k + 16991350 := by
    unfold C
    simp [show (5971968 * k + 5663783) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16991350) = 8957952 * k + 8495675 := by
    unfold C
    simp [show (17915904 * k + 16991350) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8495675) = 26873856 * k + 25487026 := by
    unfold C
    simp [show (8957952 * k + 8495675) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25487026) = 13436928 * k + 12743513 := by
    unfold C
    simp [show (26873856 * k + 25487026) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12743513) = 40310784 * k + 38230540 := by
    unfold C
    simp [show (13436928 * k + 12743513) % 2 ≠ 0 by omega]
    omega
  have h19 : C (40310784 * k + 38230540) = 20155392 * k + 19115270 := by
    unfold C
    simp [show (40310784 * k + 38230540) % 2 = 0 by omega]
    omega
  have h20 : C (20155392 * k + 19115270) = 10077696 * k + 9557635 := by
    unfold C
    simp [show (20155392 * k + 19115270) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9557635) = 30233088 * k + 28672906 := by
    unfold C
    simp [show (10077696 * k + 9557635) % 2 ≠ 0 by omega]
    omega
  have h22 : C (30233088 * k + 28672906) = 15116544 * k + 14336453 := by
    unfold C
    simp [show (30233088 * k + 28672906) % 2 = 0 by omega]
    omega
  have h23 : C (15116544 * k + 14336453) = 45349632 * k + 43009360 := by
    unfold C
    simp [show (15116544 * k + 14336453) % 2 ≠ 0 by omega]
    omega
  have h24 : C (45349632 * k + 43009360) = 22674816 * k + 21504680 := by
    unfold C
    simp [show (45349632 * k + 43009360) % 2 = 0 by omega]
    omega
  have h25 : C (22674816 * k + 21504680) = 11337408 * k + 10752340 := by
    unfold C
    simp [show (22674816 * k + 21504680) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10752340) = 5668704 * k + 5376170 := by
    unfold C
    simp [show (11337408 * k + 10752340) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5376170) = 2834352 * k + 2688085 := by
    unfold C
    simp [show (5668704 * k + 5376170) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2688085) = 8503056 * k + 8064256 := by
    unfold C
    simp [show (2834352 * k + 2688085) % 2 ≠ 0 by omega]
    omega
  have h29 : C (8503056 * k + 8064256) = 4251528 * k + 4032128 := by
    unfold C
    simp [show (8503056 * k + 8064256) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4032128) = 2125764 * k + 2016064 := by
    unfold C
    simp [show (4251528 * k + 4032128) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2016064) = 1062882 * k + 1008032 := by
    unfold C
    simp [show (2125764 * k + 2016064) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1008032) = 531441 * k + 504016 := by
    unfold C
    simp [show (1062882 * k + 1008032) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 994463) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 994463)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_994511 : ∀ k : Nat,
    iterate (1048576 * k + 994511) 32 = 531441 * k + 504041 ∧
      531441 * k + 504041 < 1048576 * k + 994511 := by
  intro k
  have h1 : C (1048576 * k + 994511) = 3145728 * k + 2983534 := by
    unfold C
    simp [show (1048576 * k + 994511) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2983534) = 1572864 * k + 1491767 := by
    unfold C
    simp [show (3145728 * k + 2983534) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1491767) = 4718592 * k + 4475302 := by
    unfold C
    simp [show (1572864 * k + 1491767) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4475302) = 2359296 * k + 2237651 := by
    unfold C
    simp [show (4718592 * k + 4475302) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2237651) = 7077888 * k + 6712954 := by
    unfold C
    simp [show (2359296 * k + 2237651) % 2 ≠ 0 by omega]
    omega
  have h6 : C (7077888 * k + 6712954) = 3538944 * k + 3356477 := by
    unfold C
    simp [show (7077888 * k + 6712954) % 2 = 0 by omega]
    omega
  have h7 : C (3538944 * k + 3356477) = 10616832 * k + 10069432 := by
    unfold C
    simp [show (3538944 * k + 3356477) % 2 ≠ 0 by omega]
    omega
  have h8 : C (10616832 * k + 10069432) = 5308416 * k + 5034716 := by
    unfold C
    simp [show (10616832 * k + 10069432) % 2 = 0 by omega]
    omega
  have h9 : C (5308416 * k + 5034716) = 2654208 * k + 2517358 := by
    unfold C
    simp [show (5308416 * k + 5034716) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2517358) = 1327104 * k + 1258679 := by
    unfold C
    simp [show (2654208 * k + 2517358) % 2 = 0 by omega]
    omega
  have h11 : C (1327104 * k + 1258679) = 3981312 * k + 3776038 := by
    unfold C
    simp [show (1327104 * k + 1258679) % 2 ≠ 0 by omega]
    omega
  have h12 : C (3981312 * k + 3776038) = 1990656 * k + 1888019 := by
    unfold C
    simp [show (3981312 * k + 3776038) % 2 = 0 by omega]
    omega
  have h13 : C (1990656 * k + 1888019) = 5971968 * k + 5664058 := by
    unfold C
    simp [show (1990656 * k + 1888019) % 2 ≠ 0 by omega]
    omega
  have h14 : C (5971968 * k + 5664058) = 2985984 * k + 2832029 := by
    unfold C
    simp [show (5971968 * k + 5664058) % 2 = 0 by omega]
    omega
  have h15 : C (2985984 * k + 2832029) = 8957952 * k + 8496088 := by
    unfold C
    simp [show (2985984 * k + 2832029) % 2 ≠ 0 by omega]
    omega
  have h16 : C (8957952 * k + 8496088) = 4478976 * k + 4248044 := by
    unfold C
    simp [show (8957952 * k + 8496088) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4248044) = 2239488 * k + 2124022 := by
    unfold C
    simp [show (4478976 * k + 4248044) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2124022) = 1119744 * k + 1062011 := by
    unfold C
    simp [show (2239488 * k + 2124022) % 2 = 0 by omega]
    omega
  have h19 : C (1119744 * k + 1062011) = 3359232 * k + 3186034 := by
    unfold C
    simp [show (1119744 * k + 1062011) % 2 ≠ 0 by omega]
    omega
  have h20 : C (3359232 * k + 3186034) = 1679616 * k + 1593017 := by
    unfold C
    simp [show (3359232 * k + 3186034) % 2 = 0 by omega]
    omega
  have h21 : C (1679616 * k + 1593017) = 5038848 * k + 4779052 := by
    unfold C
    simp [show (1679616 * k + 1593017) % 2 ≠ 0 by omega]
    omega
  have h22 : C (5038848 * k + 4779052) = 2519424 * k + 2389526 := by
    unfold C
    simp [show (5038848 * k + 4779052) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2389526) = 1259712 * k + 1194763 := by
    unfold C
    simp [show (2519424 * k + 2389526) % 2 = 0 by omega]
    omega
  have h24 : C (1259712 * k + 1194763) = 3779136 * k + 3584290 := by
    unfold C
    simp [show (1259712 * k + 1194763) % 2 ≠ 0 by omega]
    omega
  have h25 : C (3779136 * k + 3584290) = 1889568 * k + 1792145 := by
    unfold C
    simp [show (3779136 * k + 3584290) % 2 = 0 by omega]
    omega
  have h26 : C (1889568 * k + 1792145) = 5668704 * k + 5376436 := by
    unfold C
    simp [show (1889568 * k + 1792145) % 2 ≠ 0 by omega]
    omega
  have h27 : C (5668704 * k + 5376436) = 2834352 * k + 2688218 := by
    unfold C
    simp [show (5668704 * k + 5376436) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2688218) = 1417176 * k + 1344109 := by
    unfold C
    simp [show (2834352 * k + 2688218) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1344109) = 4251528 * k + 4032328 := by
    unfold C
    simp [show (1417176 * k + 1344109) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4032328) = 2125764 * k + 2016164 := by
    unfold C
    simp [show (4251528 * k + 4032328) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2016164) = 1062882 * k + 1008082 := by
    unfold C
    simp [show (2125764 * k + 2016164) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1008082) = 531441 * k + 504041 := by
    unfold C
    simp [show (1062882 * k + 1008082) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 994511) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 994511)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_994587 : ∀ k : Nat,
    iterate (1048576 * k + 994587) 32 = 531441 * k + 504079 ∧
      531441 * k + 504079 < 1048576 * k + 994587 := by
  intro k
  have h1 : C (1048576 * k + 994587) = 3145728 * k + 2983762 := by
    unfold C
    simp [show (1048576 * k + 994587) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2983762) = 1572864 * k + 1491881 := by
    unfold C
    simp [show (3145728 * k + 2983762) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1491881) = 4718592 * k + 4475644 := by
    unfold C
    simp [show (1572864 * k + 1491881) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4475644) = 2359296 * k + 2237822 := by
    unfold C
    simp [show (4718592 * k + 4475644) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2237822) = 1179648 * k + 1118911 := by
    unfold C
    simp [show (2359296 * k + 2237822) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1118911) = 3538944 * k + 3356734 := by
    unfold C
    simp [show (1179648 * k + 1118911) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3356734) = 1769472 * k + 1678367 := by
    unfold C
    simp [show (3538944 * k + 3356734) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1678367) = 5308416 * k + 5035102 := by
    unfold C
    simp [show (1769472 * k + 1678367) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5035102) = 2654208 * k + 2517551 := by
    unfold C
    simp [show (5308416 * k + 5035102) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2517551) = 7962624 * k + 7552654 := by
    unfold C
    simp [show (2654208 * k + 2517551) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7552654) = 3981312 * k + 3776327 := by
    unfold C
    simp [show (7962624 * k + 7552654) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3776327) = 11943936 * k + 11328982 := by
    unfold C
    simp [show (3981312 * k + 3776327) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11328982) = 5971968 * k + 5664491 := by
    unfold C
    simp [show (11943936 * k + 11328982) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5664491) = 17915904 * k + 16993474 := by
    unfold C
    simp [show (5971968 * k + 5664491) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16993474) = 8957952 * k + 8496737 := by
    unfold C
    simp [show (17915904 * k + 16993474) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8496737) = 26873856 * k + 25490212 := by
    unfold C
    simp [show (8957952 * k + 8496737) % 2 ≠ 0 by omega]
    omega
  have h17 : C (26873856 * k + 25490212) = 13436928 * k + 12745106 := by
    unfold C
    simp [show (26873856 * k + 25490212) % 2 = 0 by omega]
    omega
  have h18 : C (13436928 * k + 12745106) = 6718464 * k + 6372553 := by
    unfold C
    simp [show (13436928 * k + 12745106) % 2 = 0 by omega]
    omega
  have h19 : C (6718464 * k + 6372553) = 20155392 * k + 19117660 := by
    unfold C
    simp [show (6718464 * k + 6372553) % 2 ≠ 0 by omega]
    omega
  have h20 : C (20155392 * k + 19117660) = 10077696 * k + 9558830 := by
    unfold C
    simp [show (20155392 * k + 19117660) % 2 = 0 by omega]
    omega
  have h21 : C (10077696 * k + 9558830) = 5038848 * k + 4779415 := by
    unfold C
    simp [show (10077696 * k + 9558830) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4779415) = 15116544 * k + 14338246 := by
    unfold C
    simp [show (5038848 * k + 4779415) % 2 ≠ 0 by omega]
    omega
  have h23 : C (15116544 * k + 14338246) = 7558272 * k + 7169123 := by
    unfold C
    simp [show (15116544 * k + 14338246) % 2 = 0 by omega]
    omega
  have h24 : C (7558272 * k + 7169123) = 22674816 * k + 21507370 := by
    unfold C
    simp [show (7558272 * k + 7169123) % 2 ≠ 0 by omega]
    omega
  have h25 : C (22674816 * k + 21507370) = 11337408 * k + 10753685 := by
    unfold C
    simp [show (22674816 * k + 21507370) % 2 = 0 by omega]
    omega
  have h26 : C (11337408 * k + 10753685) = 34012224 * k + 32261056 := by
    unfold C
    simp [show (11337408 * k + 10753685) % 2 ≠ 0 by omega]
    omega
  have h27 : C (34012224 * k + 32261056) = 17006112 * k + 16130528 := by
    unfold C
    simp [show (34012224 * k + 32261056) % 2 = 0 by omega]
    omega
  have h28 : C (17006112 * k + 16130528) = 8503056 * k + 8065264 := by
    unfold C
    simp [show (17006112 * k + 16130528) % 2 = 0 by omega]
    omega
  have h29 : C (8503056 * k + 8065264) = 4251528 * k + 4032632 := by
    unfold C
    simp [show (8503056 * k + 8065264) % 2 = 0 by omega]
    omega
  have h30 : C (4251528 * k + 4032632) = 2125764 * k + 2016316 := by
    unfold C
    simp [show (4251528 * k + 4032632) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2016316) = 1062882 * k + 1008158 := by
    unfold C
    simp [show (2125764 * k + 2016316) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1008158) = 531441 * k + 504079 := by
    unfold C
    simp [show (1062882 * k + 1008158) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 994587) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 994587)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

theorem descent_mod1048576_994843 : ∀ k : Nat,
    iterate (1048576 * k + 994843) 32 = 531441 * k + 504209 ∧
      531441 * k + 504209 < 1048576 * k + 994843 := by
  intro k
  have h1 : C (1048576 * k + 994843) = 3145728 * k + 2984530 := by
    unfold C
    simp [show (1048576 * k + 994843) % 2 ≠ 0 by omega]
    omega
  have h2 : C (3145728 * k + 2984530) = 1572864 * k + 1492265 := by
    unfold C
    simp [show (3145728 * k + 2984530) % 2 = 0 by omega]
    omega
  have h3 : C (1572864 * k + 1492265) = 4718592 * k + 4476796 := by
    unfold C
    simp [show (1572864 * k + 1492265) % 2 ≠ 0 by omega]
    omega
  have h4 : C (4718592 * k + 4476796) = 2359296 * k + 2238398 := by
    unfold C
    simp [show (4718592 * k + 4476796) % 2 = 0 by omega]
    omega
  have h5 : C (2359296 * k + 2238398) = 1179648 * k + 1119199 := by
    unfold C
    simp [show (2359296 * k + 2238398) % 2 = 0 by omega]
    omega
  have h6 : C (1179648 * k + 1119199) = 3538944 * k + 3357598 := by
    unfold C
    simp [show (1179648 * k + 1119199) % 2 ≠ 0 by omega]
    omega
  have h7 : C (3538944 * k + 3357598) = 1769472 * k + 1678799 := by
    unfold C
    simp [show (3538944 * k + 3357598) % 2 = 0 by omega]
    omega
  have h8 : C (1769472 * k + 1678799) = 5308416 * k + 5036398 := by
    unfold C
    simp [show (1769472 * k + 1678799) % 2 ≠ 0 by omega]
    omega
  have h9 : C (5308416 * k + 5036398) = 2654208 * k + 2518199 := by
    unfold C
    simp [show (5308416 * k + 5036398) % 2 = 0 by omega]
    omega
  have h10 : C (2654208 * k + 2518199) = 7962624 * k + 7554598 := by
    unfold C
    simp [show (2654208 * k + 2518199) % 2 ≠ 0 by omega]
    omega
  have h11 : C (7962624 * k + 7554598) = 3981312 * k + 3777299 := by
    unfold C
    simp [show (7962624 * k + 7554598) % 2 = 0 by omega]
    omega
  have h12 : C (3981312 * k + 3777299) = 11943936 * k + 11331898 := by
    unfold C
    simp [show (3981312 * k + 3777299) % 2 ≠ 0 by omega]
    omega
  have h13 : C (11943936 * k + 11331898) = 5971968 * k + 5665949 := by
    unfold C
    simp [show (11943936 * k + 11331898) % 2 = 0 by omega]
    omega
  have h14 : C (5971968 * k + 5665949) = 17915904 * k + 16997848 := by
    unfold C
    simp [show (5971968 * k + 5665949) % 2 ≠ 0 by omega]
    omega
  have h15 : C (17915904 * k + 16997848) = 8957952 * k + 8498924 := by
    unfold C
    simp [show (17915904 * k + 16997848) % 2 = 0 by omega]
    omega
  have h16 : C (8957952 * k + 8498924) = 4478976 * k + 4249462 := by
    unfold C
    simp [show (8957952 * k + 8498924) % 2 = 0 by omega]
    omega
  have h17 : C (4478976 * k + 4249462) = 2239488 * k + 2124731 := by
    unfold C
    simp [show (4478976 * k + 4249462) % 2 = 0 by omega]
    omega
  have h18 : C (2239488 * k + 2124731) = 6718464 * k + 6374194 := by
    unfold C
    simp [show (2239488 * k + 2124731) % 2 ≠ 0 by omega]
    omega
  have h19 : C (6718464 * k + 6374194) = 3359232 * k + 3187097 := by
    unfold C
    simp [show (6718464 * k + 6374194) % 2 = 0 by omega]
    omega
  have h20 : C (3359232 * k + 3187097) = 10077696 * k + 9561292 := by
    unfold C
    simp [show (3359232 * k + 3187097) % 2 ≠ 0 by omega]
    omega
  have h21 : C (10077696 * k + 9561292) = 5038848 * k + 4780646 := by
    unfold C
    simp [show (10077696 * k + 9561292) % 2 = 0 by omega]
    omega
  have h22 : C (5038848 * k + 4780646) = 2519424 * k + 2390323 := by
    unfold C
    simp [show (5038848 * k + 4780646) % 2 = 0 by omega]
    omega
  have h23 : C (2519424 * k + 2390323) = 7558272 * k + 7170970 := by
    unfold C
    simp [show (2519424 * k + 2390323) % 2 ≠ 0 by omega]
    omega
  have h24 : C (7558272 * k + 7170970) = 3779136 * k + 3585485 := by
    unfold C
    simp [show (7558272 * k + 7170970) % 2 = 0 by omega]
    omega
  have h25 : C (3779136 * k + 3585485) = 11337408 * k + 10756456 := by
    unfold C
    simp [show (3779136 * k + 3585485) % 2 ≠ 0 by omega]
    omega
  have h26 : C (11337408 * k + 10756456) = 5668704 * k + 5378228 := by
    unfold C
    simp [show (11337408 * k + 10756456) % 2 = 0 by omega]
    omega
  have h27 : C (5668704 * k + 5378228) = 2834352 * k + 2689114 := by
    unfold C
    simp [show (5668704 * k + 5378228) % 2 = 0 by omega]
    omega
  have h28 : C (2834352 * k + 2689114) = 1417176 * k + 1344557 := by
    unfold C
    simp [show (2834352 * k + 2689114) % 2 = 0 by omega]
    omega
  have h29 : C (1417176 * k + 1344557) = 4251528 * k + 4033672 := by
    unfold C
    simp [show (1417176 * k + 1344557) % 2 ≠ 0 by omega]
    omega
  have h30 : C (4251528 * k + 4033672) = 2125764 * k + 2016836 := by
    unfold C
    simp [show (4251528 * k + 4033672) % 2 = 0 by omega]
    omega
  have h31 : C (2125764 * k + 2016836) = 1062882 * k + 1008418 := by
    unfold C
    simp [show (2125764 * k + 2016836) % 2 = 0 by omega]
    omega
  have h32 : C (1062882 * k + 1008418) = 531441 * k + 504209 := by
    unfold C
    simp [show (1062882 * k + 1008418) % 2 = 0 by omega]
    omega
  have hIter : iterate (1048576 * k + 994843) 32 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (1048576 * k + 994843)))))))))))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32]
  · omega

end CollatzM20Shard126
