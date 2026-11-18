import Mathlib.Data.Nat.Prime.Basic

namespace CollatzM15ShardU

def C (n : Nat) : Nat := if n % 2 = 0 then n / 2 else 3 * n + 1

def iterate (n t : Nat) : Nat := Nat.rec n (fun _ previous => C previous) t

theorem descent_mod32768_30687 : ∀ k : Nat, iterate (32768 * k + 30687) 24 = 19683 * k + 18434 ∧ 19683 * k + 18434 < 32768 * k + 30687 := by
  intro k
  have h1 : C (32768 * k + 30687) = 98304 * k + 92062 := by
    unfold C
    simp [show (32768 * k + 30687) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 92062) = 49152 * k + 46031 := by
    unfold C
    simp [show (98304 * k + 92062) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 46031) = 147456 * k + 138094 := by
    unfold C
    simp [show (49152 * k + 46031) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 138094) = 73728 * k + 69047 := by
    unfold C
    simp [show (147456 * k + 138094) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 69047) = 221184 * k + 207142 := by
    unfold C
    simp [show (73728 * k + 69047) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 207142) = 110592 * k + 103571 := by
    unfold C
    simp [show (221184 * k + 207142) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 103571) = 331776 * k + 310714 := by
    unfold C
    simp [show (110592 * k + 103571) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 310714) = 165888 * k + 155357 := by
    unfold C
    simp [show (331776 * k + 310714) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 155357) = 497664 * k + 466072 := by
    unfold C
    simp [show (165888 * k + 155357) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 466072) = 248832 * k + 233036 := by
    unfold C
    simp [show (497664 * k + 466072) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 233036) = 124416 * k + 116518 := by
    unfold C
    simp [show (248832 * k + 233036) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 116518) = 62208 * k + 58259 := by
    unfold C
    simp [show (124416 * k + 116518) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 58259) = 186624 * k + 174778 := by
    unfold C
    simp [show (62208 * k + 58259) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 174778) = 93312 * k + 87389 := by
    unfold C
    simp [show (186624 * k + 174778) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 87389) = 279936 * k + 262168 := by
    unfold C
    simp [show (93312 * k + 87389) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 262168) = 139968 * k + 131084 := by
    unfold C
    simp [show (279936 * k + 262168) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 131084) = 69984 * k + 65542 := by
    unfold C
    simp [show (139968 * k + 131084) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 65542) = 34992 * k + 32771 := by
    unfold C
    simp [show (69984 * k + 65542) % 2 = 0 by omega]
    omega
  have h19 : C (34992 * k + 32771) = 104976 * k + 98314 := by
    unfold C
    simp [show (34992 * k + 32771) % 2 ≠ 0 by omega]
    omega
  have h20 : C (104976 * k + 98314) = 52488 * k + 49157 := by
    unfold C
    simp [show (104976 * k + 98314) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 49157) = 157464 * k + 147472 := by
    unfold C
    simp [show (52488 * k + 49157) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 147472) = 78732 * k + 73736 := by
    unfold C
    simp [show (157464 * k + 147472) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 73736) = 39366 * k + 36868 := by
    unfold C
    simp [show (78732 * k + 73736) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 36868) = 19683 * k + 18434 := by
    unfold C
    simp [show (39366 * k + 36868) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30687) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30687)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_30715 : ∀ k : Nat, iterate (32768 * k + 30715) 24 = 19683 * k + 18451 ∧ 19683 * k + 18451 < 32768 * k + 30715 := by
  intro k
  have h1 : C (32768 * k + 30715) = 98304 * k + 92146 := by
    unfold C
    simp [show (32768 * k + 30715) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 92146) = 49152 * k + 46073 := by
    unfold C
    simp [show (98304 * k + 92146) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 46073) = 147456 * k + 138220 := by
    unfold C
    simp [show (49152 * k + 46073) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 138220) = 73728 * k + 69110 := by
    unfold C
    simp [show (147456 * k + 138220) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 69110) = 36864 * k + 34555 := by
    unfold C
    simp [show (73728 * k + 69110) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 34555) = 110592 * k + 103666 := by
    unfold C
    simp [show (36864 * k + 34555) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 103666) = 55296 * k + 51833 := by
    unfold C
    simp [show (110592 * k + 103666) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 51833) = 165888 * k + 155500 := by
    unfold C
    simp [show (55296 * k + 51833) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 155500) = 82944 * k + 77750 := by
    unfold C
    simp [show (165888 * k + 155500) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 77750) = 41472 * k + 38875 := by
    unfold C
    simp [show (82944 * k + 77750) % 2 = 0 by omega]
    omega
  have h11 : C (41472 * k + 38875) = 124416 * k + 116626 := by
    unfold C
    simp [show (41472 * k + 38875) % 2 ≠ 0 by omega]
    omega
  have h12 : C (124416 * k + 116626) = 62208 * k + 58313 := by
    unfold C
    simp [show (124416 * k + 116626) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 58313) = 186624 * k + 174940 := by
    unfold C
    simp [show (62208 * k + 58313) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 174940) = 93312 * k + 87470 := by
    unfold C
    simp [show (186624 * k + 174940) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 87470) = 46656 * k + 43735 := by
    unfold C
    simp [show (93312 * k + 87470) % 2 = 0 by omega]
    omega
  have h16 : C (46656 * k + 43735) = 139968 * k + 131206 := by
    unfold C
    simp [show (46656 * k + 43735) % 2 ≠ 0 by omega]
    omega
  have h17 : C (139968 * k + 131206) = 69984 * k + 65603 := by
    unfold C
    simp [show (139968 * k + 131206) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 65603) = 209952 * k + 196810 := by
    unfold C
    simp [show (69984 * k + 65603) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 196810) = 104976 * k + 98405 := by
    unfold C
    simp [show (209952 * k + 196810) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 98405) = 314928 * k + 295216 := by
    unfold C
    simp [show (104976 * k + 98405) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 295216) = 157464 * k + 147608 := by
    unfold C
    simp [show (314928 * k + 295216) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 147608) = 78732 * k + 73804 := by
    unfold C
    simp [show (157464 * k + 147608) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 73804) = 39366 * k + 36902 := by
    unfold C
    simp [show (78732 * k + 73804) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 36902) = 19683 * k + 18451 := by
    unfold C
    simp [show (39366 * k + 36902) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30715) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30715)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_30747 : ∀ k : Nat, iterate (32768 * k + 30747) 24 = 19683 * k + 18470 ∧ 19683 * k + 18470 < 32768 * k + 30747 := by
  intro k
  have h1 : C (32768 * k + 30747) = 98304 * k + 92242 := by
    unfold C
    simp [show (32768 * k + 30747) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 92242) = 49152 * k + 46121 := by
    unfold C
    simp [show (98304 * k + 92242) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 46121) = 147456 * k + 138364 := by
    unfold C
    simp [show (49152 * k + 46121) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 138364) = 73728 * k + 69182 := by
    unfold C
    simp [show (147456 * k + 138364) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 69182) = 36864 * k + 34591 := by
    unfold C
    simp [show (73728 * k + 69182) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 34591) = 110592 * k + 103774 := by
    unfold C
    simp [show (36864 * k + 34591) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 103774) = 55296 * k + 51887 := by
    unfold C
    simp [show (110592 * k + 103774) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 51887) = 165888 * k + 155662 := by
    unfold C
    simp [show (55296 * k + 51887) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 155662) = 82944 * k + 77831 := by
    unfold C
    simp [show (165888 * k + 155662) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 77831) = 248832 * k + 233494 := by
    unfold C
    simp [show (82944 * k + 77831) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 233494) = 124416 * k + 116747 := by
    unfold C
    simp [show (248832 * k + 233494) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 116747) = 373248 * k + 350242 := by
    unfold C
    simp [show (124416 * k + 116747) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 350242) = 186624 * k + 175121 := by
    unfold C
    simp [show (373248 * k + 350242) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 175121) = 559872 * k + 525364 := by
    unfold C
    simp [show (186624 * k + 175121) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 525364) = 279936 * k + 262682 := by
    unfold C
    simp [show (559872 * k + 525364) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 262682) = 139968 * k + 131341 := by
    unfold C
    simp [show (279936 * k + 262682) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 131341) = 419904 * k + 394024 := by
    unfold C
    simp [show (139968 * k + 131341) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 394024) = 209952 * k + 197012 := by
    unfold C
    simp [show (419904 * k + 394024) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 197012) = 104976 * k + 98506 := by
    unfold C
    simp [show (209952 * k + 197012) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 98506) = 52488 * k + 49253 := by
    unfold C
    simp [show (104976 * k + 98506) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 49253) = 157464 * k + 147760 := by
    unfold C
    simp [show (52488 * k + 49253) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 147760) = 78732 * k + 73880 := by
    unfold C
    simp [show (157464 * k + 147760) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 73880) = 39366 * k + 36940 := by
    unfold C
    simp [show (78732 * k + 73880) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 36940) = 19683 * k + 18470 := by
    unfold C
    simp [show (39366 * k + 36940) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30747) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30747)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_30767 : ∀ k : Nat, iterate (32768 * k + 30767) 24 = 19683 * k + 18482 ∧ 19683 * k + 18482 < 32768 * k + 30767 := by
  intro k
  have h1 : C (32768 * k + 30767) = 98304 * k + 92302 := by
    unfold C
    simp [show (32768 * k + 30767) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 92302) = 49152 * k + 46151 := by
    unfold C
    simp [show (98304 * k + 92302) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 46151) = 147456 * k + 138454 := by
    unfold C
    simp [show (49152 * k + 46151) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 138454) = 73728 * k + 69227 := by
    unfold C
    simp [show (147456 * k + 138454) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 69227) = 221184 * k + 207682 := by
    unfold C
    simp [show (73728 * k + 69227) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 207682) = 110592 * k + 103841 := by
    unfold C
    simp [show (221184 * k + 207682) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 103841) = 331776 * k + 311524 := by
    unfold C
    simp [show (110592 * k + 103841) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 311524) = 165888 * k + 155762 := by
    unfold C
    simp [show (331776 * k + 311524) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 155762) = 82944 * k + 77881 := by
    unfold C
    simp [show (165888 * k + 155762) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 77881) = 248832 * k + 233644 := by
    unfold C
    simp [show (82944 * k + 77881) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 233644) = 124416 * k + 116822 := by
    unfold C
    simp [show (248832 * k + 233644) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 116822) = 62208 * k + 58411 := by
    unfold C
    simp [show (124416 * k + 116822) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 58411) = 186624 * k + 175234 := by
    unfold C
    simp [show (62208 * k + 58411) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 175234) = 93312 * k + 87617 := by
    unfold C
    simp [show (186624 * k + 175234) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 87617) = 279936 * k + 262852 := by
    unfold C
    simp [show (93312 * k + 87617) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 262852) = 139968 * k + 131426 := by
    unfold C
    simp [show (279936 * k + 262852) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 131426) = 69984 * k + 65713 := by
    unfold C
    simp [show (139968 * k + 131426) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 65713) = 209952 * k + 197140 := by
    unfold C
    simp [show (69984 * k + 65713) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 197140) = 104976 * k + 98570 := by
    unfold C
    simp [show (209952 * k + 197140) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 98570) = 52488 * k + 49285 := by
    unfold C
    simp [show (104976 * k + 98570) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 49285) = 157464 * k + 147856 := by
    unfold C
    simp [show (52488 * k + 49285) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 147856) = 78732 * k + 73928 := by
    unfold C
    simp [show (157464 * k + 147856) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 73928) = 39366 * k + 36964 := by
    unfold C
    simp [show (78732 * k + 73928) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 36964) = 19683 * k + 18482 := by
    unfold C
    simp [show (39366 * k + 36964) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30767) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30767)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_30887 : ∀ k : Nat, iterate (32768 * k + 30887) 24 = 19683 * k + 18554 ∧ 19683 * k + 18554 < 32768 * k + 30887 := by
  intro k
  have h1 : C (32768 * k + 30887) = 98304 * k + 92662 := by
    unfold C
    simp [show (32768 * k + 30887) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 92662) = 49152 * k + 46331 := by
    unfold C
    simp [show (98304 * k + 92662) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 46331) = 147456 * k + 138994 := by
    unfold C
    simp [show (49152 * k + 46331) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 138994) = 73728 * k + 69497 := by
    unfold C
    simp [show (147456 * k + 138994) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 69497) = 221184 * k + 208492 := by
    unfold C
    simp [show (73728 * k + 69497) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 208492) = 110592 * k + 104246 := by
    unfold C
    simp [show (221184 * k + 208492) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 104246) = 55296 * k + 52123 := by
    unfold C
    simp [show (110592 * k + 104246) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 52123) = 165888 * k + 156370 := by
    unfold C
    simp [show (55296 * k + 52123) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 156370) = 82944 * k + 78185 := by
    unfold C
    simp [show (165888 * k + 156370) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 78185) = 248832 * k + 234556 := by
    unfold C
    simp [show (82944 * k + 78185) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 234556) = 124416 * k + 117278 := by
    unfold C
    simp [show (248832 * k + 234556) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 117278) = 62208 * k + 58639 := by
    unfold C
    simp [show (124416 * k + 117278) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 58639) = 186624 * k + 175918 := by
    unfold C
    simp [show (62208 * k + 58639) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 175918) = 93312 * k + 87959 := by
    unfold C
    simp [show (186624 * k + 175918) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 87959) = 279936 * k + 263878 := by
    unfold C
    simp [show (93312 * k + 87959) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 263878) = 139968 * k + 131939 := by
    unfold C
    simp [show (279936 * k + 263878) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 131939) = 419904 * k + 395818 := by
    unfold C
    simp [show (139968 * k + 131939) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 395818) = 209952 * k + 197909 := by
    unfold C
    simp [show (419904 * k + 395818) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 197909) = 629856 * k + 593728 := by
    unfold C
    simp [show (209952 * k + 197909) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 593728) = 314928 * k + 296864 := by
    unfold C
    simp [show (629856 * k + 593728) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 296864) = 157464 * k + 148432 := by
    unfold C
    simp [show (314928 * k + 296864) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 148432) = 78732 * k + 74216 := by
    unfold C
    simp [show (157464 * k + 148432) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 74216) = 39366 * k + 37108 := by
    unfold C
    simp [show (78732 * k + 74216) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 37108) = 19683 * k + 18554 := by
    unfold C
    simp [show (39366 * k + 37108) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 30887) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 30887)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_31711 : ∀ k : Nat, iterate (32768 * k + 31711) 24 = 19683 * k + 19049 ∧ 19683 * k + 19049 < 32768 * k + 31711 := by
  intro k
  have h1 : C (32768 * k + 31711) = 98304 * k + 95134 := by
    unfold C
    simp [show (32768 * k + 31711) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 95134) = 49152 * k + 47567 := by
    unfold C
    simp [show (98304 * k + 95134) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 47567) = 147456 * k + 142702 := by
    unfold C
    simp [show (49152 * k + 47567) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 142702) = 73728 * k + 71351 := by
    unfold C
    simp [show (147456 * k + 142702) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 71351) = 221184 * k + 214054 := by
    unfold C
    simp [show (73728 * k + 71351) % 2 ≠ 0 by omega]
    omega
  have h6 : C (221184 * k + 214054) = 110592 * k + 107027 := by
    unfold C
    simp [show (221184 * k + 214054) % 2 = 0 by omega]
    omega
  have h7 : C (110592 * k + 107027) = 331776 * k + 321082 := by
    unfold C
    simp [show (110592 * k + 107027) % 2 ≠ 0 by omega]
    omega
  have h8 : C (331776 * k + 321082) = 165888 * k + 160541 := by
    unfold C
    simp [show (331776 * k + 321082) % 2 = 0 by omega]
    omega
  have h9 : C (165888 * k + 160541) = 497664 * k + 481624 := by
    unfold C
    simp [show (165888 * k + 160541) % 2 ≠ 0 by omega]
    omega
  have h10 : C (497664 * k + 481624) = 248832 * k + 240812 := by
    unfold C
    simp [show (497664 * k + 481624) % 2 = 0 by omega]
    omega
  have h11 : C (248832 * k + 240812) = 124416 * k + 120406 := by
    unfold C
    simp [show (248832 * k + 240812) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 120406) = 62208 * k + 60203 := by
    unfold C
    simp [show (124416 * k + 120406) % 2 = 0 by omega]
    omega
  have h13 : C (62208 * k + 60203) = 186624 * k + 180610 := by
    unfold C
    simp [show (62208 * k + 60203) % 2 ≠ 0 by omega]
    omega
  have h14 : C (186624 * k + 180610) = 93312 * k + 90305 := by
    unfold C
    simp [show (186624 * k + 180610) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 90305) = 279936 * k + 270916 := by
    unfold C
    simp [show (93312 * k + 90305) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 270916) = 139968 * k + 135458 := by
    unfold C
    simp [show (279936 * k + 270916) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 135458) = 69984 * k + 67729 := by
    unfold C
    simp [show (139968 * k + 135458) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 67729) = 209952 * k + 203188 := by
    unfold C
    simp [show (69984 * k + 67729) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 203188) = 104976 * k + 101594 := by
    unfold C
    simp [show (209952 * k + 203188) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 101594) = 52488 * k + 50797 := by
    unfold C
    simp [show (104976 * k + 101594) % 2 = 0 by omega]
    omega
  have h21 : C (52488 * k + 50797) = 157464 * k + 152392 := by
    unfold C
    simp [show (52488 * k + 50797) % 2 ≠ 0 by omega]
    omega
  have h22 : C (157464 * k + 152392) = 78732 * k + 76196 := by
    unfold C
    simp [show (157464 * k + 152392) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 76196) = 39366 * k + 38098 := by
    unfold C
    simp [show (78732 * k + 76196) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 38098) = 19683 * k + 19049 := by
    unfold C
    simp [show (39366 * k + 38098) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 31711) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 31711)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_31771 : ∀ k : Nat, iterate (32768 * k + 31771) 24 = 19683 * k + 19085 ∧ 19683 * k + 19085 < 32768 * k + 31771 := by
  intro k
  have h1 : C (32768 * k + 31771) = 98304 * k + 95314 := by
    unfold C
    simp [show (32768 * k + 31771) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 95314) = 49152 * k + 47657 := by
    unfold C
    simp [show (98304 * k + 95314) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 47657) = 147456 * k + 142972 := by
    unfold C
    simp [show (49152 * k + 47657) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 142972) = 73728 * k + 71486 := by
    unfold C
    simp [show (147456 * k + 142972) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 71486) = 36864 * k + 35743 := by
    unfold C
    simp [show (73728 * k + 71486) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 35743) = 110592 * k + 107230 := by
    unfold C
    simp [show (36864 * k + 35743) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 107230) = 55296 * k + 53615 := by
    unfold C
    simp [show (110592 * k + 107230) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 53615) = 165888 * k + 160846 := by
    unfold C
    simp [show (55296 * k + 53615) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 160846) = 82944 * k + 80423 := by
    unfold C
    simp [show (165888 * k + 160846) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 80423) = 248832 * k + 241270 := by
    unfold C
    simp [show (82944 * k + 80423) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 241270) = 124416 * k + 120635 := by
    unfold C
    simp [show (248832 * k + 241270) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 120635) = 373248 * k + 361906 := by
    unfold C
    simp [show (124416 * k + 120635) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 361906) = 186624 * k + 180953 := by
    unfold C
    simp [show (373248 * k + 361906) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 180953) = 559872 * k + 542860 := by
    unfold C
    simp [show (186624 * k + 180953) % 2 ≠ 0 by omega]
    omega
  have h15 : C (559872 * k + 542860) = 279936 * k + 271430 := by
    unfold C
    simp [show (559872 * k + 542860) % 2 = 0 by omega]
    omega
  have h16 : C (279936 * k + 271430) = 139968 * k + 135715 := by
    unfold C
    simp [show (279936 * k + 271430) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 135715) = 419904 * k + 407146 := by
    unfold C
    simp [show (139968 * k + 135715) % 2 ≠ 0 by omega]
    omega
  have h18 : C (419904 * k + 407146) = 209952 * k + 203573 := by
    unfold C
    simp [show (419904 * k + 407146) % 2 = 0 by omega]
    omega
  have h19 : C (209952 * k + 203573) = 629856 * k + 610720 := by
    unfold C
    simp [show (209952 * k + 203573) % 2 ≠ 0 by omega]
    omega
  have h20 : C (629856 * k + 610720) = 314928 * k + 305360 := by
    unfold C
    simp [show (629856 * k + 610720) % 2 = 0 by omega]
    omega
  have h21 : C (314928 * k + 305360) = 157464 * k + 152680 := by
    unfold C
    simp [show (314928 * k + 305360) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 152680) = 78732 * k + 76340 := by
    unfold C
    simp [show (157464 * k + 152680) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 76340) = 39366 * k + 38170 := by
    unfold C
    simp [show (78732 * k + 76340) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 38170) = 19683 * k + 19085 := by
    unfold C
    simp [show (39366 * k + 38170) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 31771) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 31771)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

theorem descent_mod32768_31899 : ∀ k : Nat, iterate (32768 * k + 31899) 24 = 19683 * k + 19162 ∧ 19683 * k + 19162 < 32768 * k + 31899 := by
  intro k
  have h1 : C (32768 * k + 31899) = 98304 * k + 95698 := by
    unfold C
    simp [show (32768 * k + 31899) % 2 ≠ 0 by omega]
    omega
  have h2 : C (98304 * k + 95698) = 49152 * k + 47849 := by
    unfold C
    simp [show (98304 * k + 95698) % 2 = 0 by omega]
    omega
  have h3 : C (49152 * k + 47849) = 147456 * k + 143548 := by
    unfold C
    simp [show (49152 * k + 47849) % 2 ≠ 0 by omega]
    omega
  have h4 : C (147456 * k + 143548) = 73728 * k + 71774 := by
    unfold C
    simp [show (147456 * k + 143548) % 2 = 0 by omega]
    omega
  have h5 : C (73728 * k + 71774) = 36864 * k + 35887 := by
    unfold C
    simp [show (73728 * k + 71774) % 2 = 0 by omega]
    omega
  have h6 : C (36864 * k + 35887) = 110592 * k + 107662 := by
    unfold C
    simp [show (36864 * k + 35887) % 2 ≠ 0 by omega]
    omega
  have h7 : C (110592 * k + 107662) = 55296 * k + 53831 := by
    unfold C
    simp [show (110592 * k + 107662) % 2 = 0 by omega]
    omega
  have h8 : C (55296 * k + 53831) = 165888 * k + 161494 := by
    unfold C
    simp [show (55296 * k + 53831) % 2 ≠ 0 by omega]
    omega
  have h9 : C (165888 * k + 161494) = 82944 * k + 80747 := by
    unfold C
    simp [show (165888 * k + 161494) % 2 = 0 by omega]
    omega
  have h10 : C (82944 * k + 80747) = 248832 * k + 242242 := by
    unfold C
    simp [show (82944 * k + 80747) % 2 ≠ 0 by omega]
    omega
  have h11 : C (248832 * k + 242242) = 124416 * k + 121121 := by
    unfold C
    simp [show (248832 * k + 242242) % 2 = 0 by omega]
    omega
  have h12 : C (124416 * k + 121121) = 373248 * k + 363364 := by
    unfold C
    simp [show (124416 * k + 121121) % 2 ≠ 0 by omega]
    omega
  have h13 : C (373248 * k + 363364) = 186624 * k + 181682 := by
    unfold C
    simp [show (373248 * k + 363364) % 2 = 0 by omega]
    omega
  have h14 : C (186624 * k + 181682) = 93312 * k + 90841 := by
    unfold C
    simp [show (186624 * k + 181682) % 2 = 0 by omega]
    omega
  have h15 : C (93312 * k + 90841) = 279936 * k + 272524 := by
    unfold C
    simp [show (93312 * k + 90841) % 2 ≠ 0 by omega]
    omega
  have h16 : C (279936 * k + 272524) = 139968 * k + 136262 := by
    unfold C
    simp [show (279936 * k + 272524) % 2 = 0 by omega]
    omega
  have h17 : C (139968 * k + 136262) = 69984 * k + 68131 := by
    unfold C
    simp [show (139968 * k + 136262) % 2 = 0 by omega]
    omega
  have h18 : C (69984 * k + 68131) = 209952 * k + 204394 := by
    unfold C
    simp [show (69984 * k + 68131) % 2 ≠ 0 by omega]
    omega
  have h19 : C (209952 * k + 204394) = 104976 * k + 102197 := by
    unfold C
    simp [show (209952 * k + 204394) % 2 = 0 by omega]
    omega
  have h20 : C (104976 * k + 102197) = 314928 * k + 306592 := by
    unfold C
    simp [show (104976 * k + 102197) % 2 ≠ 0 by omega]
    omega
  have h21 : C (314928 * k + 306592) = 157464 * k + 153296 := by
    unfold C
    simp [show (314928 * k + 306592) % 2 = 0 by omega]
    omega
  have h22 : C (157464 * k + 153296) = 78732 * k + 76648 := by
    unfold C
    simp [show (157464 * k + 153296) % 2 = 0 by omega]
    omega
  have h23 : C (78732 * k + 76648) = 39366 * k + 38324 := by
    unfold C
    simp [show (78732 * k + 76648) % 2 = 0 by omega]
    omega
  have h24 : C (39366 * k + 38324) = 19683 * k + 19162 := by
    unfold C
    simp [show (39366 * k + 38324) % 2 = 0 by omega]
    omega
  have hIter : iterate (32768 * k + 31899) 24 = C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (C (32768 * k + 31899)))))))))))))))))))))))) := by
    rfl
  constructor
  · rw [hIter, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24]
  · omega

#print axioms descent_mod32768_30687
#print axioms descent_mod32768_30715
#print axioms descent_mod32768_30747
#print axioms descent_mod32768_30767
#print axioms descent_mod32768_30887
#print axioms descent_mod32768_31711
#print axioms descent_mod32768_31771
#print axioms descent_mod32768_31899

end CollatzM15ShardU
